<?php

namespace idoit\Component\Property\Type;

use idoit\Component\Property\Property;
use idoit\Module\Report\SqlQuery\Structure\SelectSubSelect;
use idoit\Module\Report\SqlQuery\Structure\SelectJoin;
use idoit\Module\Report\SqlQuery\Structure\SelectGroupBy;

/**
 * Class DialogListObjectDataProperty
 *
 * This is only a dialog with multiselection with object references.
 * Its a replacement for the dialog_list pattern which data consists of object references.
 *
 * Used aliases:
 * - Alias for $sourceTable is 'main'
 * - Alias for $nmTable is 'nm'
 * - Alias for $referenceTable is 'ref'
 *
 * @package idoit\Component\Property\Type
 */
class DialogListObjectDataProperty extends Property
{
    /**
     * DialogProperty constructor.
     *
     * @param string               $uiId
     * @param string               $title
     * @param string               $dataField
     * @param string               $sourceTable
     * @param string               $nmTable
     * @param string               $nmTablePrefix
     * @param string               $referenceField
     * @param array|\isys_callback $uiArData
     * @param array                $formatCallback
     * @param string               $selection
     *
     * @throws \idoit\Component\Property\Exception\UnsupportedConfigurationTypeException
     */
    public function __construct(
        $uiId,
        $title,
        $dataField,
        $sourceTable,
        $nmTable,
        $nmTablePrefix = null,
        $referenceField = null,
        $uiArData = [],
        array $formatCallback = [],
        $selection = null
    ) {
        parent::__construct();

        $referenceTable = 'isys_obj';

        $sourceTableId = $sourceTable . '__id';
        $sourceTableObjectId = $sourceTable . '__isys_obj__id';
        $sourceTableTitle = $sourceTable . '__title';
        $referenceField = $referenceField ?: $sourceTableId;
        $referenceTableId = $referenceTable . '__id';
        $referenceTableTitle = $referenceTable . '__title';
        $nmTableSourceId = ($nmTablePrefix ? $nmTablePrefix . '__' . $referenceField: $referenceField);
        $nmTableReferenceId = ($nmTablePrefix ? $nmTablePrefix . '__' . $referenceTableId: $referenceTableId);

        $sourceTableAlias = ($nmTablePrefix ? '' : 'main');
        $nmTableAlias = ($nmTablePrefix ? '' : 'nm');
        $referenceTableAlias = ($nmTablePrefix ? '' : 'ref');

        $sourceTableIdWithAlias = ($sourceTableAlias ? $sourceTableAlias . '.' : '') . $sourceTableId;
        $sourceTableObjectIdWithAlias = ($sourceTableAlias ? $sourceTableAlias . '.' : '') . $sourceTableObjectId;
        $referenceTableIdWithAlias = ($referenceTableAlias ? $referenceTableAlias . '.' : '') . $referenceTableId;
        $referenceTableTitleWithAlias = ($referenceTableAlias ? $referenceTableAlias . '.' : '') . $referenceTableTitle;
        $nmTableSourceIdWithAlias = ($nmTableAlias ? $nmTableAlias . '.' : '') . $nmTableSourceId;
        $nmTableReferenceIdWithAlias = ($nmTableAlias ? $nmTableAlias . '.' : '') . $nmTableReferenceId;

        $selection = ($selection !== null ? $selection : 'CONCAT(' . $referenceTableTitleWithAlias . ', \' {\', ' . $referenceTableIdWithAlias . ', \'}\')');

        $formatCallback = (!empty($formatCallback) ? $formatCallback : [
            'isys_export_helper',
            'dialog_multiselect'
        ]);

        $joins = [
            SelectJoin::factory(
                $sourceTable,
                'LEFT',
                $sourceTableObjectId,
                'isys_obj__id',
                $sourceTableAlias,
                '',
                $sourceTableAlias
            ),
            SelectJoin::factory(
                $nmTable,
                'LEFT',
                $sourceTableId,
                $nmTableSourceId,
                $sourceTableAlias,
                $nmTableAlias,
                $nmTableAlias
            ),
            SelectJoin::factory(
                $referenceTable,
                'LEFT',
                $nmTableReferenceId,
                $referenceTableId,
                $nmTableAlias,
                $referenceTableAlias,
                $referenceTableAlias
            )
        ];

        /**
         * @var $join SelectJoin
         */
        $joinString = '';
        foreach ($joins as $key => $join) {
            if ($key === 0) {
                continue;
            }
            $joinString .= ' ' . $join->setJoinType('INNER')->__toString();
        }

        $query = 'SELECT ' . $selection . ' FROM ' . $sourceTable . ($sourceTableAlias ? ' as ' . $sourceTableAlias : '') . $joinString;

        $this->getInfo()
            ->setType(Property::C__PROPERTY__INFO__TYPE__DIALOG_LIST)
            ->setTitle($title)
            ->setPrimaryField(false)
            ->setBackwardCompatible(false);

        $this->getData()
            ->setField($dataField)
            ->setType(C__TYPE__INT)
            ->setSourceTable($referenceTable)
            ->setReadOnly(false)
            ->setIndex(false)
            ->setSelect(
                SelectSubSelect::factory(
                    $query,
                    $sourceTable,
                    $sourceTableIdWithAlias,
                    $sourceTableObjectIdWithAlias,
                    '',
                    '',
                    null,
                    SelectGroupBy::factory([$sourceTableObjectIdWithAlias])
                )
            )
            ->setJoins($joins);

        $params = [
            'p_bDbFieldNN' => false
        ];

        if (!empty($uiArData)) {
            $params['p_arData'] = $uiArData;
        }

        $this->getUi()
            ->setId($uiId)
            ->setType(Property::C__PROPERTY__UI__TYPE__DIALOG_LIST)
            ->setDefault('')
            ->setParams($params);

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
    }
}
