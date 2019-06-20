<?php

namespace idoit\Component\Property\Type;

use idoit\Component\Property\Property;
use idoit\Module\Report\SqlQuery\Structure\SelectSubSelect;
use idoit\Module\Report\SqlQuery\Structure\SelectJoin;
use idoit\Module\Report\SqlQuery\Structure\SelectGroupBy;
use idoit\Module\Report\SqlQuery\Structure\SelectCondition;

/**
 * Class DialogPlusCategoryDependencyProperty
 *
 * This factory is used if a dialog plus field has a dependency to another category via nm table.
 *
 * @package idoit\Component\Property\Type
 */
class DialogPlusCategoryDependencyProperty extends Property
{
    /**
     * DialogPlusCategoryDependencyProperty constructor.
     *
     * @param string $uiId
     * @param string $title
     * @param string $dataField
     * @param string $sourceTable
     * @param string $referenceTable
     * @param string $dependentPropertyKey
     * @param array|\isys_callback  $uiData
     * @param array  $formatCallback
     * @param string $selection
     *
     * @throws \idoit\Component\Property\Exception\UnsupportedConfigurationTypeException
     */
    public function __construct(
        $uiId,
        $title,
        $dataField,
        $sourceTable,
        $referenceTable,
        $dependentPropertyKey,
        $uiData = [],
        array $formatCallback = [],
        $selection = null
    ) {
        parent::__construct();

        $referenceTableId = $referenceTable . '__id';
        $referenceTableDataField = $referenceTable . '__title';
        $referenceTableObjectId = $referenceTable . '__isys_obj__id';

        $sourceTableId = $sourceTable . '__id';
        $sourceTableObjectId = $sourceTable . '__isys_obj__id';
        $connectionTable = 'isys_connection';
        $connectionTableId = $connectionTable . '__id';
        $connectionTableObjectId = $connectionTable . '__isys_obj__id';
        $sourceTableConnectionId = $sourceTable . '__' . $connectionTableId;
        $selection = ($selection !== null ? $selection : $referenceTableDataField);
        $dependentCondition = $referenceTable . '__isys_obj__id = %s';

        $formatCallback = (!empty($formatCallback) ? $formatCallback : [
            'isys_export_helper',
            'dialog_plus'
        ]);

        $this->getInfo()
            ->setType(Property::C__PROPERTY__INFO__TYPE__DIALOG_PLUS)
            ->setTitle($title)
            ->setPrimaryField(false)
            ->setBackwardCompatible(false);

        $this->getData()
            ->setField($dataField)
            ->setType(C__TYPE__INT)
            ->setSourceTable($referenceTable)
            ->setReadOnly(false)
            ->setIndex(false)
            ->setReferences([
                $referenceTable,
                $referenceTableId
            ])
            ->setSelect(SelectSubSelect::factory(
                'SELECT ' . $selection . ' FROM ' . $sourceTable . '
                INNER JOIN ' . $connectionTable . ' ON ' . $connectionTableId . ' = ' . $sourceTableConnectionId . '  
                INNER JOIN ' . $referenceTable . ' ON ' . $referenceTableObjectId . ' = ' . $connectionTableObjectId,
                $sourceTable,
                $sourceTableId,
                $sourceTableObjectId,
                '',
                '',
                SelectCondition::factory([
                    $dataField . ' = ' . $referenceTableId
                ])
            ))
            ->setJoins([
                SelectJoin::factory(
                    $sourceTable,
                    'LEFT',
                    $sourceTableObjectId,
                    'isys_obj__id'
                ),
                SelectJoin::factory(
                    $connectionTable,
                    'LEFT',
                    $sourceTableConnectionId,
                    $connectionTableId
                ),
                SelectJoin::factory(
                    $referenceTable,
                    'LEFT',
                    $connectionTableObjectId,
                    $referenceTableObjectId
                )
            ]);

        $uiParams = [
            'p_strPopupType' => 'dialog_plus',
            'p_strClass' => 'input-small',
            'p_arData' => $uiData
        ];

        $this->getUi()
            ->setId($uiId)
            ->setType(Property::C__PROPERTY__UI__TYPE__POPUP)
            ->setDefault('-1')
            ->setParams($uiParams);

        $this->setPropertyProvides([
            Property::C__PROPERTY__PROVIDES__SEARCH       => false,
            Property::C__PROPERTY__PROVIDES__SEARCH_INDEX => false,
            Property::C__PROPERTY__PROVIDES__IMPORT       => true,
            Property::C__PROPERTY__PROVIDES__EXPORT       => true,
            Property::C__PROPERTY__PROVIDES__REPORT       => false,
            Property::C__PROPERTY__PROVIDES__LIST         => true,
            Property::C__PROPERTY__PROVIDES__MULTIEDIT    => true,
            Property::C__PROPERTY__PROVIDES__VALIDATION   => false,
            Property::C__PROPERTY__PROVIDES__VIRTUAL      => false
        ]);

        $this->getFormat()
            ->setCallback($formatCallback);

        $this->getDependency()
            ->setPropkey($dependentPropertyKey)
            ->setSmartyParams([
                'p_strTable' => $referenceTable
            ])
            ->setCondition($dependentCondition)
            ->setConditionValue($connectionTableObjectId);
    }
}
