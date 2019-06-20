<?php

namespace idoit\Module\Cmdb\Model;

use idoit\Model\Dao\Base;
use isys_application as Application;
use isys_helper_link;

/**
 * i-doit Tree Model
 *
 * @package     idoit\Module\Cmdb\Model
 * @author      Leonard Fischer <lfischer@i-doit.com>
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 * @since       i-doit 1.11.1
 */
class Tree extends Base
{
    /**
     * Constant for the tree-mode "physical".
     * @var string
     */
    const MODE_PHSYICAL = 'physical';

    /**
     * Constant for the tree-mode "logical".
     * @var string
     */
    const MODE_LOGICAL = 'logical';

    /**
     * Constant for the tree-mode "combined" (logical + physical).
     * @var string
     */
    const MODE_COMBINED = 'combined';

    /**
     * Retrieve information of a given object.
     *
     * @param  integer $objectID
     * @param  string  $mode
     * @param  boolean $onlyContainer
     * @param  integer $levels
     *
     * @return array
     * @throws \isys_exception_dao
     * @throws \isys_exception_database
     */
    public function getLocationChildren($objectID, $mode = self::MODE_COMBINED, $onlyContainer = false, $levels = 1)
    {
        $language = Application::instance()->container->get('language');

        $select = parent::selectImplode([
            'isys_obj__id'             => 'nodeId',
            'isys_obj__title'          => 'nodeTitle',
            'isys_obj_type__id'        => 'nodeTypeId',
            'isys_obj_type__title'     => 'nodeTypeTitle',
            'isys_obj_type__color'     => 'nodeTypeColor',
            'isys_obj_type__icon'      => 'nodeTypeIcon',
            'isys_obj_type__container' => 'isContainer',
        ]);

        $sql = 'SELECT ' . $select . '
            FROM isys_obj 
            INNER JOIN isys_obj_type ON isys_obj_type__id = isys_obj__isys_obj_type__id 
            WHERE isys_obj__id = ' . $this->convert_sql_id($objectID) . ';';

        $result = $this->retrieve($sql)->get_row();
        
        $result['children'] = [];
        $result['isContainer'] = (bool)$result['isContainer'];
        $result['nodeTypeTitle'] = $language->get($result['nodeTypeTitle']);
        $result['nodeTypeColor'] = '#' . ($result['nodeTypeColor'] ?: 'ffffff');
        $result['nodeTypeIcon'] = $result['nodeTypeIcon'] ?: 'images/icons/silk/page_white.png';

        if (strpos($result['nodeTypeIcon'], '/') === false) {
            $result['nodeTypeIcon'] = 'images/tree/' . $result['nodeTypeIcon'];
        }

        $nextLevel = $levels - 1;
        $children = 0;
        $result['nodeTypeIcon'] = isys_helper_link::get_base() . $result['nodeTypeIcon'];

        if ($mode === self::MODE_PHSYICAL || $mode === self::MODE_COMBINED) {
            $physicalChildrenResult = $this->getPhysicalChildren($objectID, $onlyContainer);
            $countable = (is_countable($physicalChildrenResult) && count($physicalChildrenResult));

            if ($levels > 0 && $countable) {
                while ($row = $physicalChildrenResult->get_row()) {
                    $result['children'][$row['isys_obj__id']] = $this->getLocationChildren($row['isys_obj__id'], $mode, $onlyContainer, $nextLevel);
                }
            }
            $children += ($countable ? count($physicalChildrenResult): 0);
        }

        if ($mode === self::MODE_LOGICAL || $mode === self::MODE_COMBINED) {
            $logicalChildrenResult = $this->getLogicalChildren($objectID, $onlyContainer);
            $countable = (is_countable($logicalChildrenResult) && count($logicalChildrenResult));

            if ($levels > 0 && $countable) {
                while ($row = $logicalChildrenResult->get_row()) {
                    if (isset($result['children'][$row['isys_obj__id']])) {
                        // Skip objects we already found.
                        continue;
                    }

                    $result['children'][$row['isys_obj__id']] = $this->getLocationChildren($row['isys_obj__id'], $mode, $onlyContainer, $nextLevel);
                }
            }
            $children += ($countable ? count($logicalChildrenResult): 0);
        }

        $result['children'] = array_values($result['children']);
        $result['hasChildren'] = $children > 0;

        return $result;
    }

    /**
     * @param  integer $objectID
     * @param  boolean $onlyContainer
     *
     * @return \isys_component_dao_result
     * @throws \isys_exception_database
     */
    private function getPhysicalChildren($objectID, $onlyContainer = false)
    {
        $sql = 'SELECT isys_obj__id 
            FROM isys_catg_location_list
            INNER JOIN isys_obj ON isys_obj__id = isys_catg_location_list__isys_obj__id 
            INNER JOIN isys_obj_type ON isys_obj_type__id = isys_obj__isys_obj_type__id 
            WHERE isys_catg_location_list__parentid = ' . $this->convert_sql_id($objectID) . '
            AND isys_obj__status = ' . $this->convert_sql_int(C__RECORD_STATUS__NORMAL);

        if ($onlyContainer) {
            $sql .= ' AND isys_obj_type__container = 1';
        }

        return $this->retrieve($sql . ';');
    }

    /**
     * @param  integer $objectID
     * @param  boolean $onlyContainer
     *
     * @return \isys_component_dao_result
     * @throws \isys_exception_database
     */
    private function getLogicalChildren($objectID, $onlyContainer = false)
    {
        $sql = 'SELECT isys_obj__id 
            FROM isys_catg_logical_unit_list
            INNER JOIN isys_obj ON isys_obj__id = isys_catg_logical_unit_list__isys_obj__id 
            INNER JOIN isys_obj_type ON isys_obj_type__id = isys_obj__isys_obj_type__id 
            WHERE isys_catg_logical_unit_list__isys_obj__id__parent = ' . $this->convert_sql_id($objectID) . '
            AND isys_obj__status = ' . $this->convert_sql_int(C__RECORD_STATUS__NORMAL);

        if ($onlyContainer) {
            $sql .= ' AND isys_obj_type__container = 1';
        }

        return $this->retrieve($sql . ';');
    }
}
