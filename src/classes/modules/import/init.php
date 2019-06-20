<?php
/**
 * i-doit
 *
 * Module initializer
 *
 * @package     i-doit
 * @subpackage  Modules
 * @author      Dennis Stücken <dstuecken@i-doit.com>
 * @version     1.1
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */

if (include_once('isys_module_import_autoload.class.php')) {
    spl_autoload_register('isys_module_import_autoload::init');
}

// Append import config how to handle with validation errors
isys_tenantsettings::extend([
    'LC__MODULE__IMPORT' => [
        'import.validation.break-on-error' => [
            'title'       => 'LC__MODULE__IMPORT__VALIDATION_BREAK_ON_ERROR',
            'type'        => 'select',
            'options'     => [
                '0' => 'LC__UNIVERSAL__NO',
                '1' => 'LC__UNIVERSAL__YES'
            ],
            'default'     => '1',
            'description' => 'LC__MODULE__IMPORT__VALIDATION_BREAK_ON_ERROR_DESCRIPTION'
        ]
    ]
]);