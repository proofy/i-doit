<?php

namespace idoit\Module\Multiedit\Component\Multiedit\Formatter;

use idoit\Component\Property\Property;
use idoit\Module\Multiedit\Component\Multiedit\Exception\UnknownFormatterTypeException;

/**
 * Class FormatterManager
 *
 * @package idoit\Module\Multiedit\Component\Multiedit\Formatter
 */
class FormatterManager
{
    private static $formatter = [
        C__PROPERTY__UI__TYPE__LINK        => TextFormatter::class,
        C__PROPERTY__UI__TYPE__TEXT        => TextFormatter::class,
        C__PROPERTY__UI__TYPE__TEXTAREA    => TextFormatter::class,
        C__PROPERTY__UI__TYPE__UPLOAD      => UploadFormatter::class,
        C__PROPERTY__UI__TYPE__POPUP       => PopupFormatter::class,
        C__PROPERTY__UI__TYPE__DIALOG_LIST => DialogListFormatter::class,
        C__PROPERTY__UI__TYPE__DIALOG      => DialogFormatter::class,
        C__PROPERTY__UI__TYPE__DATETIME    => PopupFormatter::class,
        C__PROPERTY__UI__TYPE__DATE        => PopupFormatter::class,
        C__PROPERTY__UI__TYPE__WYSIWYG     => TextFormatter::class
    ];

    /**
     * @param $uiType
     *
     * @return Formatter
     */
    public static function getFormatterByUiType($uiType)
    {
        if (!isset(self::$formatter[$uiType])) {
            throw new UnknownFormatterTypeException("There is no formatter type for {$uiType} defined.");
        }

        return self::$formatter[$uiType];
    }

    /**
     * @param $valueFormatter ValueFormatter
     * @param $uiIdSuffix     string
     * @param $params         array
     */
    public static function registerDependencyCallback($valueFormatter, $uiIdSuffix, &$params)
    {
        $referencedProperty = $valueFormatter->getReferencedProperty();
        $uiId = $valueFormatter->getReferencedPropertyKey();
        $requiresInfo = $valueFormatter->getProperty()
            ->getDependency();
        $smartyParams = $requiresInfo->getSmartyParams();
        $smartyParams['condition'] = $requiresInfo->getCondition();
        $smartyParams['conditionValue'] = $requiresInfo->getConditionValue();
        $smartyParams['select'] = $requiresInfo->getSelect();
        $requestParams = $smartyParams;

        $referenceIdentifier = $uiId . $uiIdSuffix;
        $referencedPropertyValue = ($valueFormatter->getReferencedPropertyValue() ?: new Value());
        $referencedValue = ($referencedPropertyValue->getValue() ?: 'null');

        $requestParams['condition'] = sprintf($smartyParams['condition'], '');
        $requestParams['p_strSecTableIdentifier'] = "$('{$referenceIdentifier}'.split('[').join('__HIDDEN[')) ? $('{$referenceIdentifier}'.split('[').join('__HIDDEN[')).getValue(): $('{$referenceIdentifier}').getValue()";

        $smartyParams['condition'] = sprintf($smartyParams['condition'], $referencedValue);
        $smartyParams['p_strSecTableIdentifier'] = $referencedValue;
        $params = array_merge($params, $smartyParams);

        $requestParams = array_merge($params, $requestParams);

        unset($requestParams['p_arData'], $requestParams['p_onChange']);

        if (!empty($requestParams[C__PROPERTY__DEPENDENCY__SELECT]) && is_object($requestParams[C__PROPERTY__DEPENDENCY__SELECT])) {
            unset($params['p_arData']);
            $requestParams['p_strTable'] = $params['p_strTable'] = $requestParams[C__PROPERTY__DEPENDENCY__SELECT]->getSelectTable();
            $query = $requestParams[C__PROPERTY__DEPENDENCY__SELECT]->getSelectQuery();
            $params[C__PROPERTY__DEPENDENCY__SELECT] = $requestParams[C__PROPERTY__DEPENDENCY__SELECT] = $query;
        }

        $requestParams = \isys_format_json::encode($requestParams);

        $url = \isys_helper_link::create_url([
            C__GET__AJAX      => 1,
            C__GET__AJAX_CALL => 'smartyplugin',
            'mode'            => 'edit'
        ]);

        $type = (strpos($valueFormatter->getProperty()
                ->getUi()
                ->getType(), 'f_') === false) ? 'f_' . $valueFormatter->getProperty()
                ->getUi()
                ->getType() : $valueFormatter->getProperty()
            ->getUi()
            ->getType();
        $varIdentifier = str_replace(['[', ']', '-'], '', $uiIdSuffix);

        $callback = "var referenceElement{$varIdentifier} = $('{$referenceIdentifier}'.split('[').join('__HIDDEN[')) ? $('{$referenceIdentifier}'.split('[').join('__HIDDEN[')).getValue(): $('{$referenceIdentifier}').getValue();
                    var target{$varIdentifier} = $('{$params['name']}');
                    var smartyParams{$varIdentifier} = {$requestParams}; 
                    smartyParams{$varIdentifier}.condition = smartyParams{$varIdentifier}.condition + referenceElement{$varIdentifier};
                    smartyParams{$varIdentifier}.p_strSecTableIdentifier = $('{$referenceIdentifier}'.split('[').join('__HIDDEN[')) ? referenceElement{$varIdentifier}: $('{$referenceIdentifier}').id;
                    smartyParams{$varIdentifier}.secTableID = referenceElement{$varIdentifier};
                    window.multiEdit.reloadField('{$url}', target{$varIdentifier}, '{$type}', smartyParams{$varIdentifier}, '{$valueFormatter->getPropertyKey()}');";

        $register = \isys_register::factory('callbacks');
        if ($register->has($referenceIdentifier)) {
            $callbackArr = $register->get($referenceIdentifier);
            $callbackArr[] = $callback;
            $register->set($referenceIdentifier, $callbackArr);
        } else {
            $register->set($referenceIdentifier, [$callback]);
        }
    }

    public function registerSimpleCallback()
    {
    }
}
