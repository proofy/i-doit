<?php
/**
 * i-doit
 *
 * Old i-doit core functions. Keeping these for compability reasons.
 *
 * @package     modules
 * @subpackage  nostalgia
 * @author      Leonard Fischer <lfischer@i-doit.com>
 * @version     1.0
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 * @since       i-doit 1.9
 */

if (!function_exists('_get_browser')) {
    /**
     * Returns the browser type and version.
     *
     * @deprecated
     *
     * @return  array
     * @author  Niclas Potthast <npotthast@i-doit.org>
     */
    function _get_browser()
    {
        $l_arBrowser = [
            'OPERA',
            'MSIE',
            'NETSCAPE',
            'FIREFOX',
            'SAFARI',
            'KONQUEROR',
            'MOZILLA'
        ];

        $l_info['type'] = 'OTHER';

        foreach ($l_arBrowser as $l_parent) {
            if (($l_s = strpos(strtoupper($_SERVER['HTTP_USER_AGENT']), $l_parent)) !== false) {
                $l_f = $l_s + strlen($l_parent);
                $l_version = substr($_SERVER['HTTP_USER_AGENT'], $l_f, 5);
                $l_version = preg_replace('/[^0-9,.]/', '', $l_version);
                $l_info['type'] = $l_parent;
                $l_info['version'] = $l_version;
                break; // first match wins
            }
        }

        return $l_info;
    }
}

if (!function_exists('isys_glob_bin2ip')) {
    /**
     * This method originally comes from http://de2.php.net/ip2long by a guy named "anjo2".
     *
     * @deprecated
     *
     * @param   string $p_bin The binary
     *
     * @return  mixed  String if everything went well, null if "inet_pton" function does not exist.
     * @author  Leonard Fischer <lfischer@synetics.de>
     */
    function isys_glob_bin2ip($p_bin)
    {
        if (function_exists('inet_pton') && function_exists('inet_pton')) {
            // 32bits (ipv4).
            if (strlen($p_bin) <= 32) {
                return long2ip(base_convert($p_bin, 2, 10));
            }

            if (strlen($p_bin) != 128) {
                return false;
            }

            if (defined('AF_INET6')) {
                $l_pad = 128 - strlen($p_bin);

                for ($i = 1;$i <= $l_pad;$i++) {
                    $p_bin = "0" . $p_bin;
                }

                $l_bits = 0;
                $l_ipv6 = '';
                while ($l_bits <= 7) {
                    $l_bin_part = substr($p_bin, ($l_bits * 16), 16);
                    $l_ipv6 .= dechex(bindec($l_bin_part)) . ":";
                    $l_bits++;
                }

                return inet_ntop(inet_pton(substr($l_ipv6, 0, -1)));
            }
        }

        return null;
    }
}

if (!function_exists('isys_glob_ip2bin')) {
    /**
     * This method originally comes from http://de2.php.net/ip2long by a guy named "anjo2".
     *
     * @deprecated
     *
     * @param   string $p_ip The IP to be converted
     *
     * @return  mixed  String if everything went well, null if function "inet_pton" is not available.
     * @author  Leonard Fischer <lfischer@synetics.de>
     */
    function isys_glob_ip2bin($p_ip)
    {
        if (function_exists('inet_pton') && function_exists('inet_pton')) {
            if (filter_var($p_ip, FILTER_VALIDATE_IP, FILTER_FLAG_IPV4) !== false) {
                return base_convert(ip2long($p_ip), 10, 2);
            }

            if (filter_var($p_ip, FILTER_VALIDATE_IP, FILTER_FLAG_IPV6) === false) {
                return false;
            }

            if (defined('AF_INET6')) {
                $l_ipbin = '';

                // inet_pton is only available for UNIX (PHP5) and Windows (PHP 5.3).
                if (($l_ip_n = inet_pton($p_ip)) === false) {
                    return false;
                }

                // 16 x 8 bit = 128bit (ipv6).
                $l_bits = 15;

                while ($l_bits >= 0) {
                    $l_bin = sprintf("%08b", (ord($l_ip_n[$l_bits])));
                    $l_ipbin = $l_bin . $l_ipbin;
                    $l_bits--;
                }

                return $l_ipbin;
            }
        }

        return null;
    }
}

if (!function_exists('isys_glob_assert_callback')) {
    /**
     * Assert callback function.
     *
     * @deprecated
     *
     * @param   string  $p_file    The file, at which the assertion happened.
     * @param   integer $p_line    The line, at which the assertion is placed.
     * @param   string  $p_message The assertion-code.
     *
     * @author  Leonard Fischer <lfischer@i-doit.org>
     */
    function isys_glob_assert_callback($p_file, $p_line, $p_message)
    {
        // End the output buffering.
        ob_end_clean();

        // Configuration
        $l_prev_lines = 3;
        $l_next_lines = 3;

        // Read the file in a Array for display purpose.
        $l_file_data = file($p_file);

        // Define the start point of viewing the code.
        $l_start = $p_line - $l_prev_lines;
        if ($l_start < 0) {
            $l_start = 0;
        }

        // Define the end point of viewing the code.
        $l_end = $p_line + $l_next_lines;
        if ($l_end > count($l_file_data)) {
            $l_file_data[] = '- End of file';
            $l_end = count($l_file_data);
        }

        $l_error = '';

        // Preparing the error style.
        $l_error .= '<style type="text/css">pre.error {background-color:#ddd; border:1px solid #aaa; color:#444; overflow:auto; padding:10px;} pre.error span {display:block;}</style>';

        // Start echo'ing the formatted error-message.
        $l_error .= '<pre class="error"><b>Assertion Error in file "' . $p_file . '" (l.' . $p_line . '): "' . $p_message . '"</b>' . PHP_EOL;

        for ($i = $l_start;$i <= $l_end;$i++) {
            $l_error .= '<span ' . (($i == $p_line) ? 'style="background:#ffff00;"' : '') . '>' . (($i != count($l_file_data)) ? $i . ': ' : '') .
                isys_glob_htmlentities(str_replace(PHP_EOL, '', $l_file_data[($i - 1)])) . '</span>';
        }

        $l_bt = debug_backtrace();

        $l_class = $l_bt[3]['class'];
        $l_function = $l_bt[3]['function'];
        $l_file = $l_bt[2]['file'];
        $l_line = $l_bt[2]['line'];

        $l_error .= PHP_EOL . "Called in: {$l_class}::{$l_function} in {$l_file} at {$l_line}</pre>";

        isys_application::instance()->container["notify"]->error($l_error);
    }
}

if (!function_exists('isys_glob_utf8_encode')) {
    /**
     * isys_glob_utf8_encode wrapper.
     *
     * @deprecated
     *
     * @param   $p_string
     *
     * @return  mixed
     */
    function isys_glob_utf8_encode($p_string)
    {
        return $p_string;
    }
}

if (!function_exists('isys_glob_utf8_decode')) {
    /**
     * isys_glob_utf8_decode wrapper.
     *
     * @deprecated
     *
     * @param   $p_string
     *
     * @return  mixed
     */
    function isys_glob_utf8_decode($p_string)
    {
        return $p_string;
    }
}

if (!function_exists('_L')) {
    /**
     * Get language constant from template language manager.
     *
     * @deprecated
     *
     * @param   string $p_language_constant
     * @param   mixed  $p_values
     *
     * @return  string
     */
    function _L($p_language_constant, $p_values = null)
    {
        return isys_application::instance()->container->get('language')
            ->get($p_language_constant, $p_values);
    }
}

if (!function_exists('_LL')) {
    /**
     * Get language constant from template language manager - usable for translations in strings.
     *
     * @deprecated
     *
     * @param   string $p_language_constant
     * @param   mixed  $p_values
     *
     * @return  string
     */
    function _LL($p_language_constant, $p_values = null)
    {
        return isys_application::instance()->container->get('language')
            ->get_in_text($p_language_constant);
    }
}

if (!function_exists('isys_glob_days_in_month')) {
    /**
     * Calculate the days in month.
     *
     * @deprecated
     *
     * @param  integer $p_month
     * @param  integer $p_year
     *
     * @return integer
     */
    function isys_glob_days_in_month($p_month, $p_year)
    {
        return $p_month == 2 ? ($p_year % 4 ? 28 : ($p_year % 100 ? 29 : ($p_year % 400 ? 28 : 29))) : (($p_month - 1) % 7 % 2 ? 30 : 31);
    }
}

if (!function_exists('is_valid_hostname')) {
    /**
     * Validates if given hostname is allowed.
     *
     * @deprecated
     *
     * @param   string $p_host
     *
     * @return  boolean
     */
    function is_valid_hostname($p_host)
    {
        /**
         * @todo Function seems to be unused
         */
        $l_hostnames = explode(".", $p_host);

        if (empty($p_host)) {
            return false;
        }

        if (count($l_hostnames) > 1) {
            foreach ($l_hostnames as $l_host) {
                if ($l_host !== '*' && !preg_match('/^[a-z\d\-]+$/i', $l_host)) {
                    return false;
                }
            }

            return true;
        }

        /**
         * @todo match_hostname() is not defined
         */
        return match_hostname($p_host);
    }
}

if (!function_exists('isys_glob_is_valid_hostname')) {
    /**
     * Checks if param is a valid hostname.
     *
     * @deprecated
     *
     * @param   string $p_hostname
     *
     * @return  string
     */
    function isys_glob_is_valid_hostname($p_hostname)
    {
        return preg_match("/^[a-z0-9.-_]+$/i", $p_hostname);
    }
}

if (!function_exists('isys_glob_create_tcp_address')) {
    /**
     * Builds a TCP Address.
     *
     * @deprecated
     *
     * @param   string  $p_host
     * @param   integer $p_port
     *
     * @return  string
     */
    function isys_glob_create_tcp_address($p_host, $p_port)
    {
        return $p_host . ":" . $p_port;
    }
}

if (!function_exists('isys_glob_prepare_string')) {
    /**
     * Escapes a string.
     *
     * @deprecated
     *
     * @param   string $p_string
     *
     * @return  string
     */
    function &isys_glob_prepare_string(&$p_string)
    {
        $p_string = str_replace("\\", "\\\\", $p_string);
        $p_string = str_replace("\"", "\\\"", $p_string);

        return $p_string;
    }
}

if (!function_exists('isys_glob_format_datetime')) {
    /**
     * Formats a datetime string.
     *
     * @deprecated Use isys_locale via container (isys_application::instance()->container->get('locales')).
     *
     * @param      string  $p_strDatetime
     * @param      boolean $p_bTime
     *
     * @return     string
     * @author     Niclas Potthast <npotthast@i-doit.org>
     */
    function isys_glob_format_datetime($p_strDatetime, $p_bTime = false)
    {
        if (strlen($p_strDatetime) >= 10) {
            if ($p_bTime) {
                return $p_strDatetime;
            }

            $p_strDatetime = substr($p_strDatetime, 0, 10);

            if (substr_count($p_strDatetime, '0000') > 0) {
                return '';
            }

            return $p_strDatetime;
        }

        return $p_strDatetime;
    }
}

if (!function_exists('isys_strlen')) {
    /**
     * Function which will return the string length. Will use mb_strlen if available.
     *
     * @param   string $p_string
     *
     * @return  integer
     * @author  Leonard Fischer <lfischer@i-doit.com>
     *
     * @deprecated
     */
    function isys_strlen($p_string)
    {
        global $g_config;

        return (function_exists('mb_strlen') ? mb_strlen($p_string, $g_config['html-encoding']) : strlen($p_string));
    }
}
