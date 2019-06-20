<?php

namespace idoit\Component\Provider;

/**
 * i-doit Factory Trait
 *
 * @package     i-doit
 * @subpackage  Component
 * @author      Dennis Stücken <dstuecken@i-doit.com>
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
trait Singleton
{
    /**
     * @var Singleton
     */
    private static $instance;

    /**
     * Return instance of current class
     *
     * @return static
     */
    final public static function instance()
    {
        if (self::$instance === null) {
            $args = func_get_args();
            if (count($args) > 0) {
                $class = get_called_class();
                self::$instance = (new \ReflectionClass($class))->newInstanceArgs($args);
            } else {
                self::$instance = new static;
            }
        }

        return self::$instance;
    }
}