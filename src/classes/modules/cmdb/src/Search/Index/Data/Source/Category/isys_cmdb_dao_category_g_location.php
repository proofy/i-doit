<?php

namespace idoit\Module\Cmdb\Search\Index\Data\Source\Category;

use idoit\Module\Search\Index\Data\Source\Config;
use idoit\Module\Search\Index\Document;
use idoit\Module\Search\Index\DocumentMetadata;
use idoit\Module\Search\Index\Engine\SearchEngine;
use isys_tenantsettings;

class isys_cmdb_dao_category_g_location extends AbstractCategorySource
{
    public function retrieveData(Config $config)
    {
        $data = parent::retrieveData($config);
        if (isys_tenantsettings::get('search.index.location_paths', false)) {
            /**
             * @var $dao \isys_cmdb_dao_category_g_location
             */
            $dao = $this->categoryDao;

            foreach ($data as &$location) {
                $query = $dao::build_location_path_query(
                    isys_tenantsettings::get('cmdb.limits.location-path', 5),
                    'WHERE main.isys_catg_location_list__isys_obj__id = ' . $location['isys_obj__id'],
                    true
                );

                $locationPath = $this->database->query($query)
                    ->fetch_assoc();
                if (isset($locationPath['title']) && !empty($locationPath['title'])) {
                    $location['locationPath'] = $locationPath['title'];
                }
            }
        }

        return $data;
    }

    public function mapDataToDocuments(array $data)
    {
        $documents = parent::mapDataToDocuments($data);
        if (isys_tenantsettings::get('search.index.location_paths', false)) {
            foreach ($data as $set) {
                if (empty($set['locationPath'])) {
                    continue;
                }
                $metadata = new DocumentMetadata(
                    get_class($this->categoryDao),
                    $this->getIdentifier(),
                    $set['isys_obj__isys_obj_type__id'],
                    $set['isys_obj__id'],
                    $set['isys_obj__status'],
                    $this->categoryDao->getCategoryTitle(),
                    $set['isys_catg_location_list__id'],
                    $set['isys_catg_location_list__status'],
                    'LC__CMDB__CATG__LOCATION_PATH'
                );

                $document = new Document($metadata);
                $document->setVersion(SearchEngine::VERSION);
                $document->setType('cmdb');
                $document->setKey(sprintf(
                    '%s.%s.%s.%s.%s',
                    $set['isys_obj__isys_obj_type__id'],
                    $set['isys_obj__id'],
                    $this->categoryDao->getCategoryTitle(),
                    $set['isys_catg_location_list__id'],
                    'LC__CMDB__CATG__LOCATION_PATH'
                ));
                $document->setReference($set['isys_obj__id']);
                $document->setValue($set['locationPath']);

                $documents[$document->getKey()] = $document;
            }
        }

        return $documents;
    }
}
