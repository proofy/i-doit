<?php

namespace idoit\Module\Multiedit\Component\Multiedit\Formatter\Text;

use idoit\Component\Property\Property;
use idoit\Module\Multiedit\Component\Multiedit\Formatter\Formatter;
use idoit\Module\Multiedit\Component\Multiedit\Formatter\FormatterInterface;
use idoit\Module\Multiedit\Component\Multiedit\Formatter\ValueFormatter;
use idoit\Module\Multiedit\Component\Multiedit\Formatter\Value;
use isys_smarty_plugin_f_password;
use isys_convert;

/**
 * Class Password
 *
 * @package idoit\Module\Multiedit\Component\Multiedit\Formatter\Text
 */
class Password extends Formatter implements FormatterInterface
{
    protected $type = C__PROPERTY__INFO__TYPE__PASSWORD;

    public static function formatSource($valueFormatter)
    {
        $valueObject = $valueFormatter->getValue();
        $decryptedPassword = \isys_helper_crypt::decrypt($valueObject->getValue());
        $valueObject->setValue($decryptedPassword);
        $valueFormatter->setValue($valueObject);

        return parent::formatSource($valueFormatter);
    }

    /**
     * @param ValueFormatter $valueFormatter
     *
     * @return string|void
     * @throws \Exception
     */
    public static function formatCell($valueFormatter)
    {
        $property = $valueFormatter->getProperty();
        $value = ($valueFormatter->getValue() ?: new Value());

        $objectId = $valueFormatter->getObjectId();
        $entryId = $valueFormatter->getEntryId();

        $params = $property->getUi()
            ->getParams();
        $params['name'] = null;
        $reference = $property->getData()
            ->getReferences();
        $id = $valueFormatter->getPropertyKey();

        if ($id && !$valueFormatter->isDeactivated()) {
            $params['name'] = $id . "[{$objectId}-{$entryId}]";
        }

        if ($params['p_strValue'] instanceof \isys_callback) {
            $request = (new \isys_request())->set_category_data_id($valueFormatter->getEntryId())
                ->set_object_id($valueFormatter->getObjectId());

            $params['p_strValue'] = $params['p_strValue']->execute($request);
        } elseif ($value->getValue() !== $value->getViewValue()) {
            $params['p_strValue'] = $value->getViewValue();
        } else {
            $params['p_strValue'] = $value->getValue();
        }

        $params['p_bEditMode'] = true;
        $params['p_strClass'] = ($params['p_strClass'] ? preg_replace('/(input-[a-z0-9]*)/', 'input-small', $params['p_strClass']) : 'input-small ') . " {$id}";

        $plugin = new isys_smarty_plugin_f_password();

        if ($valueFormatter->isDisabled()) {
            unset($params['p_strValue']);
            $params['p_bDisabled'] = true;
            $params['p_strClass'] .= ' multiedit-disabled ';
        }

        if ($params['name']) {
            $params['p_onChange'] = "window.multiEdit.changed(null, '{$params['name']}');";
        }

        if ($valueFormatter->isChangeAllRowsActive() && $params['name'] !== null) {
            $params['p_onChange'] .= ";window.multiEdit.overwriteAll(this, '{$id}', 'text');";
            unset($params['p_bDisabled']);
        }
        $params['inputGroupMarginClass'] = '';
        $params['maskPassword'] = false;
        
        $content = "<td data-old-value='{$value->getViewValue()}' data-sort='{$value->getViewValue()}' data-key='{$valueFormatter->getPropertyKey()}' class='multiedit-table-td'>%s</td>";

        $pluginContent = $plugin->navigation_edit(\isys_application::instance()->container->template, $params);

        return sprintf($content, $pluginContent);
    }

    /**
     * @param Value    $value
     * @param Property $property
     *
     * @return mixed|void
     */
    public static function checkFilter($value, $property)
    {
        // TODO: Implement checkFilter() method.
    }
}
