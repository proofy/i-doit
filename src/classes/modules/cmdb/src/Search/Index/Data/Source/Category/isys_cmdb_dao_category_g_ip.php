<?php

namespace idoit\Module\Cmdb\Search\Index\Data\Source\Category;

use idoit\Module\Report\SqlQuery\Structure\SelectSubSelect;
use idoit\Module\Search\Index\Data\Source\Config;
use idoit\Module\Search\Index\Document;
use idoit\Module\Search\Index\DocumentMetadata;
use idoit\Module\Search\Index\Engine\SearchEngine;
use isys_tenantsettings;
use Symfony\Component\EventDispatcher\GenericEvent;

class isys_cmdb_dao_category_g_ip extends AbstractCategorySource
{
    /**
     * Retrieve data for index creation
     *
     * @param Config $config
     *
     * @return array
     */
    public function retrieveData(Config $config)
    {
        $statusCondition = '';

        if (!isys_tenantsettings::get('search.index.include_archived_deleted_objects', false)) {
            $statusCondition = ' AND mainObject.isys_obj__status = '  . C__RECORD_STATUS__NORMAL;
        }

        $data = $this->categoryDao->get_data(
            null,
            ($config->hasObjectIds() ? $config->getObjectIds() : null),
            $statusCondition
        )->__as_array();

        $this->eventDispatcher->dispatch('index.data.raw.progress.retrieve', new GenericEvent($this, [
            'count'   => count($data),
            'context' => $this->categoryDao->get_category_const()
        ]));

        $property = $this->categoryDao->get_property_by_key('aliases');

        /**
         * @var $propertySelect SelectSubSelect
         */
        $propertySelect = $property[C__PROPERTY__DATA][C__PROPERTY__DATA__SELECT];

        foreach ($data as &$row) {
            $row['aliases'] = $this->database->retrieveArrayFromResource($this->database->query($propertySelect->getSelectQuery() .
                " WHERE isys_catg_ip_list.isys_catg_ip_list__id = " . $row[$property[C__PROPERTY__DATA][C__PROPERTY__DATA__FIELD]]));
        }

        return $data;
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
        $documents = parent::mapDataToDocuments($data);

        $overallCount = 0;

        foreach ($data as $set) {
            // Two documents for each set
            $overallCount += 2;

            foreach ($set['aliases'] as $alias) {
                // One document for each alias
                $overallCount++;
            }
        }

        $this->eventDispatcher->dispatch('index.data.document.mapping.progress.start', new GenericEvent($this, [
            'count'        => count($data),
            'countOverall' => $overallCount,
            'context'      => $this->categoryDao->get_category_const()
        ]));

        foreach ($data as $set) {
            $steps = 2;

            $metadata = new DocumentMetadata(
                get_class($this->categoryDao),
                $this->getIdentifier(),
                $set['isys_obj__isys_obj_type__id'],
                $set['isys_obj__id'],
                $set['isys_obj__status'],
                $this->categoryDao->getCategoryTitle(),
                $set['isys_catg_ip_list__id'],
                $set['isys_catg_ip_list__status'],
                'LC__CATG__IP_ADDRESS'
            );

            $document = new Document($metadata);
            $document->setVersion(SearchEngine::VERSION);
            $document->setType('cmdb');
            $document->setKey($metadata->__toString());
            $document->setValue($set['isys_cats_net_ip_addresses_list__title']);
            $document->setReference($set['isys_obj__id']);

            $documents[$document->getKey()] = $document;

            $metadata = new DocumentMetadata(
                get_class($this->categoryDao),
                $this->getIdentifier(),
                $set['isys_obj__isys_obj_type__id'],
                $set['isys_obj__id'],
                $set['isys_obj__status'],
                $this->categoryDao->getCategoryTitle(),
                $set['isys_catg_ip_list__id'],
                $set['isys_catg_ip_list__status'],
                'LC__CATP__IP__HOSTNAME'
            );

            $document = new Document($metadata);
            $document->setVersion(SearchEngine::VERSION);
            $document->setType('cmdb');
            $document->setKey($metadata->__toString());
            $document->setValue($set['isys_catg_ip_list__hostname'] . '.' . $set['isys_catg_ip_list__domain']);
            $document->setReference($set['isys_obj__id']);

            $documents[$document->getKey()] = $document;

            foreach ($set['aliases'] as $index => $alias) {
                // Create metadata for alias document
                $metadata = new DocumentMetadata(
                    get_class($this->categoryDao),
                    $this->getIdentifier(),
                    $set['isys_obj__isys_obj_type__id'],
                    $set['isys_obj__id'],
                    $set['isys_obj__status'],
                    $this->categoryDao->getCategoryTitle(),
                    $set['isys_catg_ip_list__id'],
                    $set['isys_catg_ip_list__status'],
                    'LC__CATG__IP__ALIASES.' . $index
                );

                $document = new Document($metadata);
                $document->setVersion(SearchEngine::VERSION);
                $document->setType('cmdb');
                $document->setKey($metadata->__toString());
                // @see  ID-5799  We had to change the query and could not use the alias.
                $document->setValue($alias['CONCAT(isys_hostaddress_pairs__hostname, ".", isys_hostaddress_pairs__domain)']);
                $document->setReference($set['isys_obj__id']);

                $documents[$document->getKey()] = $document;
                $steps++;
            }

            $this->eventDispatcher->dispatch('index.data.document.mapping.progress.advance', new GenericEvent($this, [
                'steps' => $steps
            ]));
        }

        $this->eventDispatcher->dispatch('index.data.document.mapping.progress.finish', new GenericEvent($this));

        return $documents;
    }
}
