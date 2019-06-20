<?php

/**
 * i-doit
 *
 * Auth exception class.
 *
 * @package     i-doit
 * @subpackage  Exceptions
 * @author      Leonard Fischer <lfischer@i-doit.org>
 * @version     1.0
 * @since       1.1
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_exception_auth extends isys_exception
{
    /**
     * Exception topic, may contain a language constant!
     *
     * @var  string
     */
    protected $m_exception_topic = 'LC__AUTH__EXCEPTION_TITLE';

    /**
     * Logger instance (extends Monolog).
     *
     * @var \idoit\Component\Logger
     */
    protected static $m_logger = null;

    /**
     * Exception constructor.
     *
     * @global          isys_component_template
     *
     * @param   string  $p_message
     * @param   string  $p_extinfo
     * @param   integer $p_code
     *
     * @author  Leonard Fischer <lfischer@i-doit.org>
     */
    public function __construct($p_message, $p_extinfo = '', $p_code = 0)
    {
        parent::__construct(isys_application::instance()->container->get('language')
                ->get('LC__AUTH__EXCEPTION') . $p_message, $p_extinfo, $p_code, '', false);
    }

    /**
     * This method will be used to write the exception log. It will only be written, when the exception reaches the GUI.
     * Meaning: It will only be written, if it isn't catched by any specific code.
     *
     * @return  isys_exception
     * @author  Leonard Fischer <lfischer@i-doit.com>
     */
    public function write_log()
    {
        if (isys_tenantsettings::get('auth.logging', 1)) {
            if (self::$m_logger === null) {
                global $g_config;

                $l_log_name = $g_config['base_dir'] . 'log/auth__' .
                    isys_helper_upload::prepare_filename(isys_application::instance()->container->session->get_mandator_name()) . '.log';

                self::$m_logger = new \idoit\Component\Logger('Auth', [
                    new \Monolog\Handler\StreamHandler($l_log_name)
                ]);
            }

            self::$m_logger->error($this->getMessage());
        }

        return $this;
    }
}
