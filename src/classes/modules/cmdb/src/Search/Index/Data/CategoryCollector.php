<?php

namespace idoit\Module\Cmdb\Search\Index\Data;

use idoit\Module\Cmdb\Search\Index\Data\Source\Category\AbstractCategorySource;
use idoit\Module\Search\Index\Data\AbstractCollector;
use idoit\Module\Search\Index\Data\Source\Config;
use idoit\Module\Search\Index\Data\Source\DynamicSource;
use idoit\Module\Search\Index\Data\Source\Indexable;
use isys_application;
use isys_cmdb_dao_category;
use isys_component_database;
use isys_tenantsettings;
use Latitude\QueryBuilder\Conditions;

/**
 * i-doit
 *
 * CategoryCollector
 *
 * @package     i-doit
 * @subpackage  Cmdb
 * @author      Kevin Mauel <kmauel@i-doit.com>
 * @version     1.11
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class CategoryCollector extends AbstractCollector
{
    /**
     * Blacklisted object types
     *
     * @type string[]
     */
    const BLACKLISTED_OBJECT_TYPES = [
        'C__OBJTYPE__CONTAINER',
        'C__OBJTYPE__GENERIC_TEMPLATE',
        'C__OBJTYPE__PARALLEL_RELATION',
        'C__OBJTYPE__RELATION',
        'C__OBJTYPE__LOCATION_GENERIC',
        'C__OBJTYPE__MIGRATION_OBJECT',
        'C__OBJTYPE__NAGIOS_HOST_TPL',
        'C__OBJTYPE__NAGIOS_SERVICE_TPL'
    ];

    /**
     * @var isys_component_database
     */
    private $database;

    /**
     * Only retrieve sources with *__const
     *
     * @var string[]
     */
    private $categoryConstants;

    /**
     * Only retrieve sources with specific objectId
     *
     * @var int[]
     */
    private $objectIds;

    /**
     * CategoryCollector constructor.
     *
     * @param isys_component_database $database
     * @param string[]                $categoryConstants
     * @param int[]                   $objectIds
     */
    public function __construct(
        isys_component_database $database,
        array $categoryConstants = [],
        array $objectIds = []
    ) {
        $this->database = $database;
        $this->categoryConstants = $categoryConstants;
        $this->objectIds = $objectIds;
        $defaultWhitelist = isys_tenantsettings::get('search.whitelist.categories', null);
        $this->setWhitelistedSources($defaultWhitelist !== null ? explode(',', $defaultWhitelist) : []);
        parent::__construct();
    }

    /**
     * @param string[] $categoryConstants
     */
    public function setCategoryConstants($categoryConstants)
    {
        $this->categoryConstants = $categoryConstants;
    }

    /**
     * @param int[] $objectIds
     */
    public function setObjectIds($objectIds)
    {
        $this->objectIds = $objectIds;
    }

    /**
     * @return Indexable[]
     */
    protected function getIndexableDataSources()
    {
        /**
         * @var $dataSources Indexable[]
         */
        $dataSources = [];

        $globalCategories = $this->database->retrieveArrayFromResource($this->database->query(isys_application::instance()->container->queryBuilder->select(
            'isysgui_catg__class_name class',
                'isysgui_catg__const identifier'
        )
                ->from('isysgui_catg')
                ->where(Conditions::make(sprintf('isysgui_catg__type NOT IN (%s)', implode(', ', [
                    isys_cmdb_dao_category::TYPE_FOLDER,
                    isys_cmdb_dao_category::TYPE_VIEW,
                    isys_cmdb_dao_category::TYPE_REAR
                ]))))
                ->sql() . (!empty($this->categoryConstants) ? ' AND isysgui_catg__const IN ("' . implode('", "', $this->categoryConstants) . '")' : '')));

        $specificCategories = $this->database->retrieveArrayFromResource($this->database->query(isys_application::instance()->container->queryBuilder->select(
            'isysgui_cats__class_name class',
                'isysgui_cats__const identifier'
        )
                ->from('isysgui_cats')
                ->where(Conditions::make(sprintf('isysgui_cats__type NOT IN (%s)', implode(', ', [
                    isys_cmdb_dao_category::TYPE_FOLDER,
                    isys_cmdb_dao_category::TYPE_VIEW,
                    isys_cmdb_dao_category::TYPE_REAR
                ]))))
                ->sql() . (!empty($this->categoryConstants) ? ' AND isysgui_cats__const IN ("' . implode('", "', $this->categoryConstants) . '")' : '')));

        $categories = array_merge($globalCategories, $specificCategories);

        $namespace = 'idoit\Module\Cmdb\Search\Index\Data\Source\Category\\';

        foreach ($categories as &$category) {
            $category['dao'] = $category['class'];

            if (!class_exists($namespace . $category['dao'])) {
                $category['class'] = 'AbstractCategorySource';
            }
        }

        $customCategories = $this->database->retrieveArrayFromResource($this->database->query(isys_application::instance()->container->queryBuilder->select(
                'isysgui_catg_custom__id id',
                'isysgui_catg_custom__const identifier'
            )
                ->from('isysgui_catg_custom')
                ->where(Conditions::make(sprintf('isysgui_catg_custom__type NOT IN (%s)', implode(', ', [
                    isys_cmdb_dao_category::TYPE_FOLDER,
                    isys_cmdb_dao_category::TYPE_VIEW,
                    isys_cmdb_dao_category::TYPE_REAR
                ]))))
                ->sql() . (!empty($this->categoryConstants) ? ' AND isysgui_catg_custom__const IN ("' . implode('", "', $this->categoryConstants) . '")' : '')));

        foreach ($customCategories as $customCategory) {
            $categories[] = [
                'id'         => $customCategory['id'],
                'identifier' => $customCategory['identifier'],
                'dao'        => 'isys_cmdb_dao_category_g_custom_fields',
                'class'      => 'isys_cmdb_dao_category_g_custom_fields'
            ];
        }

        $config = new Config();
        $config->setObjectIds($this->objectIds);

        foreach ($categories as $categorySourceConfig) {
            if (!array_key_exists(Indexable::class, class_implements($namespace . $categorySourceConfig['class'], true)) ||
                !class_exists($categorySourceConfig['dao'])) {
                continue;
            }

            $categoryDao = call_user_func([
                $categorySourceConfig['dao'],
                'instance'
            ], $this->database);

            if ($categoryDao instanceof \isys_cmdb_dao_category_g_custom_fields) {
                // Singleton for custom categories should not be used, each custom category should have its own instance
                $categoryDao = new \isys_cmdb_dao_category_g_custom_fields($this->database);
                $categoryDao->set_catg_custom_id($categorySourceConfig['id']);
            }

            $class = $namespace . $categorySourceConfig['class'];

            /**
             * @var $categorySource AbstractCategorySource
             */
            $categorySource = new $class($categoryDao, $this->database);

            if (array_key_exists(DynamicSource::class, class_implements($namespace . $categorySourceConfig['class'], true))) {
                $categorySource->setIdentifier($categorySourceConfig['identifier']);
            }

            $dataSources[$categorySourceConfig['identifier']] = [
                'instance' => $categorySource,
                'config'   => $config
            ];
        }

        return $dataSources;
    }
}
