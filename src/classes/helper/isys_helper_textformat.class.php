<?php

use idoit\Component\Helper\Date;

/**
 * i-doit
 *
 * Helper methods for text formatting.
 *
 * @package     i-doit
 * @subpackage  Helper
 * @author      Leonard Fischer <lfischer@i-doit.org>
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 * @since       1.1
 */
class isys_helper_textformat
{
    /**
     * This method will link all URLs (like "http://example.com" or "www.example.com").
     *
     * @param   string $p_text
     * @param   string $p_quotation
     *
     * @return  string
     * @author  Leonard Fischer <lfischer@i-doit.com>
     */
    public static function link_urls_in_string($p_text, $p_quotation = '"')
    {
        $p_text = preg_replace('~\b(?<!href="|">)(?<!src="|">)(?:ht|f)tps?://[^<\s]+(?:/|\b)~i', '<a href=' . $p_quotation . '$0' . $p_quotation . '>$0</a>', $p_text);

        return preg_replace('~\b(?<!://|">)www(?:\.[a-z0-9][-a-z0-9]*+)+\.[a-z]{2,6}[^<\s]*\b~i', '<a href=' . $p_quotation . 'http://$0' . $p_quotation . '>$0</a>', $p_text);
    }

    /**
     * This method will link all email-addresses (like "lfischer@i-doit.com").
     *
     * @param   string $p_text
     * @param   string $p_quotation
     *
     * @return  string
     * @author  Leonard Fischer <lfischer@i-doit.com>
     */
    public static function link_mailtos_in_string($p_text, $p_quotation = '"')
    {
        return preg_replace('~\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\.[A-Z]{2,6}\b~i', '<a href=' . $p_quotation . 'mailto:$0' . $p_quotation . '>$0</a>', $p_text);
    }

    /**
     * Method for stripping HTML attributes out of the given string.
     *
     * @param   string $p_string String to be filtered.
     *
     * @return  string
     * @author  Leonard Fischer <lfischer@i-doit.com>
     */
    public static function strip_html_attributes($p_string)
    {
        return preg_replace('~<([a-z][a-z0-9]*)[^>]*?(\/?)>~i', '<$1$2>', $p_string);
    }

    /**
     * Strips script-tags from a (HTML) string.
     *
     * @param   string  $p_string
     * @param   boolean $p_allow_html
     *
     * @return  string
     */
    public static function strip_scripts_tags($p_string, $p_allow_html = false)
    {
        if (!$p_allow_html) {
            return strip_tags($p_string);
        } else {
            return preg_replace("~<script[^>]*>([\\S\\s]*?)</script>~", "\\1", $p_string);
        }
    }

    /**
     * Strips script-tags from a (HTML) string.
     *
     * @param   string $p_string
     *
     * @return  string
     */
    public static function remove_scripts($p_string)
    {
        return preg_replace("~<script[^>]*>(.*?)</script>~", "", $p_string);
    }

    /**
     * Method for cleaning a string from all "non-word-characters": All special characters.
     *
     * @param   string $p_string
     *
     * @return  string
     * @author  Leonard Fischer <lfischer@i-doit.com>
     */
    public static function clean_string($p_string)
    {
        return preg_replace('~\W~i', '', $p_string);
    }

    /**
     * Method for retrieving a string like "Good morning", depending on the time of the day.
     *
     * @param   integer $p_hour
     *
     * @return  string
     * @author  Leonard Fischer <lfischer@i-doit.com>
     */
    public static function get_daytime($p_hour = null)
    {
        return Date::getDaytimeGreeting($p_hour);
    }

    /**
     * This method returns a string like "A, B, C and D".
     *
     * @param  array $p_parts
     *
     * @return string
     * @throws Exception
     * @author Leonard Fischer <lfischer@i-doit.com>
     */
    public static function this_this_and_that(array $p_parts)
    {
        if (count($p_parts) > 1) {
            return implode(', ', array_slice($p_parts, 0, -1)) . ' ' .
                isys_application::instance()->container->get('language')->get('LC__UNIVERSAL__AND') . ' ' .
                end($p_parts);
        } else {
            return current($p_parts);
        }
    }

    /**
     * This method returns a string like "A, B, C or D".
     *
     * @param  array $p_parts
     *
     * @return string
     * @throws Exception
     * @author Leonard Fischer <lfischer@i-doit.com>
     */
    public static function this_this_or_that(array $p_parts)
    {
        if (count($p_parts) > 1) {
            return implode(', ', array_slice($p_parts, 0, -1)) . ' ' .
                isys_application::instance()->container->get('language')->get('LC__UNIVERSAL__OR') . ' ' .
                end($p_parts);
        } else {
            return current($p_parts);
        }
    }
}
