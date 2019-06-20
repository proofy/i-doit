<?php

namespace idoit\Component\Factory;

use idoit\Component\Settings\DbSystem;
use Latitude\QueryBuilder\QueryFactory as LatitudeQueryFactory;

/**
 * i-doit Static DbSystem setting component
 *
 * @package     idoit\Component
 * @author      atsapko
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class QueryFactory
{
    /**
     * @param DbSystem $dbConfig
     * @param bool     $identifier
     *
     * @return LatitudeQueryFactory
     */
    public static function factory($dbConfig, $identifier = false)
    {
        return new LatitudeQueryFactory($dbConfig->get('type'), $identifier);
    }
}