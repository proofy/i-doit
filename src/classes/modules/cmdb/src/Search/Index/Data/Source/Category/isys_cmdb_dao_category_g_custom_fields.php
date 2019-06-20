<?php

namespace idoit\Module\Cmdb\Search\Index\Data\Source\Category;

use idoit\Module\Cmdb\Search\Index\Data\CategoryCollector;
use idoit\Module\Search\Index\Data\Source\Config;
use idoit\Module\Search\Index\Data\Source\DynamicSource;
use idoit\Module\Search\Index\Document;
use idoit\Module\Search\Index\DocumentMetadata;
use idoit\Module\Search\Index\Engine\SearchEngine;
use isys_tenantsettings;
use Symfony\Component\Console\Helper\ProgressBar;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\EventDispatcher\GenericEvent;

class isys_cmdb_dao_category_g_custom_fields extends AbstractCategorySource implements DynamicSource
{
    private $identifier;

    /**
     * Get identifier for indexable data source
     *
     * @return string
     */
    public function getIdentifier()
    {
        return $this->identifier;
    }

    /**
     *
     * @param string $identifier
     *
     * @return void
     */
    public function setIdentifier($identifier)
    {
        $this->identifier = $identifier;
    }

    /**
     * Retrieve data for index creation
     *
     * @param Config $config
     *
     * @return array
     */
    public function retrieveData(Config $config)
    {
        $simpleTypes = ['f_text', 'f_textarea', 'f_link', 'f_wysiwyg', 'commentary'];

        $complexTypes = ['f_popup' => 'retrieveSqlForDialogEntries'];

        $sql = sprintf(
            "SELECT isys_obj__id, isys_obj__status, isys_obj__isys_obj_type__id, isys_catg_custom_fields_list__data__id, isys_catg_custom_fields_list__id, isys_catg_custom_fields_list__status, isys_catg_custom_fields_list__field_key, isys_catg_custom_fields_list__field_content, isys_obj__id
             FROM isys_catg_custom_fields_list
             INNER JOIN isysgui_catg_custom ON isysgui_catg_custom.isysgui_catg_custom__id = isys_catg_custom_fields_list.isys_catg_custom_fields_list__isysgui_catg_custom__id
             INNER JOIN isys_obj obj ON (isys_catg_custom_fields_list.isys_catg_custom_fields_list__isys_obj__id = obj.isys_obj__id)
             WHERE isysgui_catg_custom__const = '{$this->getIdentifier()}' AND isys_catg_custom_fields_list__field_type IN (%s) AND obj.isys_obj__isys_obj_type__id NOT IN (%s)",
            '"' . implode('", "', $simpleTypes) . '"',
            implode(', ', filter_defined_constants(CategoryCollector::BLACKLISTED_OBJECT_TYPES))
        );

        if ($config->hasObjectIds()) {
            $sql .= " AND obj.isys_obj__id IN (" . implode(', ', $config->getObjectIds()) . ")";
        }

        if (!isys_tenantsettings::get('search.index.include_archived_deleted_objects', false)) {
            $sql .= ' AND obj.isys_obj__status = '  . C__RECORD_STATUS__NORMAL;
        }

        $this->eventDispatcher->dispatch('index.data.raw.execute_sql', new GenericEvent($this, [
            'sql' => $sql
        ]));

        $complexTypeResources = [];

        foreach ($complexTypes as $complexType => $callable) {
            $complexTypeSql = $this->{$callable}($config);

            $this->eventDispatcher->dispatch('index.data.raw.execute_sql', new GenericEvent($this, [
                'sql' => $complexTypeSql
            ]));

            $complexTypeResources[$complexType] = $this->database->query($complexTypeSql);
        }

        $complexTypeRows = 0;

        foreach ($complexTypeResources as $complexType => $complexTypeResource) {
            $complexTypeRows += $this->database->num_rows($complexTypeResource);
        }

        $resource = $this->database->query($sql);
        $count = $this->database->num_rows($resource);

        if ($count !== 0 || $complexTypeRows !== 0) {
            $data = [];

            $this->eventDispatcher->dispatch('index.data.raw.progress.start', new GenericEvent($this, [
                'count'   => $count + $complexTypeRows,
                'context' => $this->identifier
            ]));

            while ($row = $this->database->fetch_row_assoc($resource)) {
                $data[] = $row;
                $this->eventDispatcher->dispatch('index.data.raw.progress.advance', new GenericEvent($this));
            }

            foreach ($complexTypeResources as $complexType => $complexTypeResource) {
                while ($row = $this->database->fetch_row_assoc($complexTypeResource)) {
                    $data[] = $row;
                    $this->eventDispatcher->dispatch('index.data.raw.progress.advance', new GenericEvent($this));
                }
            }

            $this->eventDispatcher->dispatch('index.data.raw.progress.finish', new GenericEvent($this, [
                'count' => $count
            ]));

            return $data;
        }

        return [];
    }

    /**
     * Map data from retrieveData to Documents
     *
     * @param array $data
     *
     * @return Document[]
     */
    public function mapDataToDocuments(array $data)
    {
        $documents = [];

        foreach ($data as $set) {
            $metadata = new DocumentMetadata(
                get_class($this->categoryDao),
                $this->getIdentifier(),
                $set['isys_obj__isys_obj_type__id'],
                $set['isys_obj__id'],
                $set['isys_obj__status'],
                str_replace(['.', ' '], '_', $this->categoryDao->getCategoryTitle()),
                $set['isys_catg_custom_fields_list__data__id'],
                $set['isys_catg_custom_fields_list__status'],
                $set['isys_catg_custom_fields_list__field_key']
            );

            $document = new Document($metadata);
            $document->setVersion(SearchEngine::VERSION);
            $document->setType('cmdb');
            $document->setKey($metadata->__toString());
            $document->setValue(filter_var(html_entity_decode($set['isys_catg_custom_fields_list__field_content']), FILTER_SANITIZE_STRING));
            $document->setReference($set['isys_obj__id']);

            $documents[$document->getKey()] = $document;
        }

        return $documents;
    }

    private function retrieveSqlForDialogEntries(Config $config)
    {
        $sql = sprintf(
            "SELECT isys_obj__id, isys_obj__status, isys_obj__isys_obj_type__id, isys_catg_custom_fields_list__id, isys_catg_custom_fields_list__status, isys_catg_custom_fields_list__field_key, isys_catg_custom_fields_list__field_content, isys_obj__id, CONCAT(isys_obj__isys_obj_type__id, '.', isys_obj__id, '.custom_fields.', isys_catg_custom_fields_list__data__id, '.', REPLACE(isysgui_catg_custom__title, '.', '_'), '.', isysgui_catg_custom__id, '.', isys_catg_custom_fields_list__field_key) index_key, GROUP_CONCAT(isys_dialog_plus_custom__title separator ', ') as isys_catg_custom_fields_list__field_content, isys_obj__id, isys_catg_custom_fields_list__data__id 
             FROM isys_catg_custom_fields_list
             INNER JOIN isysgui_catg_custom ON isysgui_catg_custom.isysgui_catg_custom__id = isys_catg_custom_fields_list.isys_catg_custom_fields_list__isysgui_catg_custom__id
             INNER JOIN isys_obj obj ON (isys_catg_custom_fields_list.isys_catg_custom_fields_list__isys_obj__id = obj.isys_obj__id)
             INNER JOIN isys_dialog_plus_custom ON (isys_catg_custom_fields_list__field_content = isys_dialog_plus_custom__id)
             WHERE isysgui_catg_custom__const = '{$this->getIdentifier()}' AND isys_catg_custom_fields_list__field_type IN (%s) AND obj.isys_obj__isys_obj_type__id NOT IN (%s)",
            '"' . implode('", "', ['f_popup']) . '"',
            implode(', ', filter_defined_constants(CategoryCollector::BLACKLISTED_OBJECT_TYPES))
        );

        if ($config->hasObjectIds()) {
            $sql .= " AND obj.isys_obj__id IN (" . implode(', ', $config->getObjectIds()) . ")";
        }

        if (!isys_tenantsettings::get('search.index.include_archived_deleted_objects', false)) {
            $sql .= ' AND obj.isys_obj__status = '  . C__RECORD_STATUS__NORMAL;
        }

        $sql .= ' GROUP BY index_key';

        return $sql;
    }
}
