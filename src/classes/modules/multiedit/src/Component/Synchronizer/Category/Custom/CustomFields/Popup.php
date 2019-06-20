<?php
namespace idoit\Module\Multiedit\Component\Synchronizer\Category\Custom\CustomFields;

use idoit\Module\Multiedit\Component\Synchronizer\Category\ConvertInterface;
use isys_format_json;

class Popup implements ConvertInterface
{
    /**
     * @param string $value
     */
    public function convertValue($value)
    {
        if (isys_format_json::is_json_array($value)) {
            return $value;
        }

        if (strpos($value, ',')) {
            return explode(',', $value);
        }

        return $value;
    }
}
