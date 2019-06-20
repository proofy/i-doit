<?php

/**
 * i-doit
 *
 * gets the current content of the logbook for the infobox.
 *
 * @package     i-doit
 * @subpackage  Components_Template
 * @author      Niclas Potthast <npotthast@i-doit.de>
 * @author      Dennis Blümer <dbluemer@i-doit.org>
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_component_template_infobox extends isys_component_template
{
    private static $m_instance = null;

    protected $m_arParameters;

    protected $m_daoLogbook;

    protected $m_nAlertLevel;

    protected $m_nMessageID;

    protected $m_nMessageType;

    protected $m_nUserID;

    protected $m_strDate;

    protected $m_strMessage;

    /**
     * @param array $p_options
     *
     * @return isys_component_template_infobox
     */
    public static function instance($p_options = [])
    {
        if (!self::$m_instance) {
            self::$m_instance = new self;
        }

        return self::$m_instance;
    }

    /**
     * Returns the alert level of the message as an integer value.
     *
     * @todo    Get value from DB!
     * @return  integer
     * @author  Niclas Potthast <npotthast@i-doit.de>
     */
    public function get_alert_level()
    {
        return $this->m_nAlertLevel;
    }

    /**
     * Sets the alert level of the message with an integer value.
     *
     * @param   integer $p_nLevel
     *
     * @author  Niclas Potthast <npotthast@i-doit.de>
     */
    public function set_alert_level($p_nLevel)
    {
        $this->m_nAlertLevel = $p_nLevel;
    }

    /**
     * Returns the message.
     *
     * @todo    Get value from DB!
     * @return  string
     * @author  Niclas Potthast <npotthast@i-doit.de>
     */
    public function get_message()
    {
        $l_m_strMessage = "";
        $l_arParams = null;

        if (is_array($this->m_arParameters)) {
            $l_arParams = $this->m_arParameters;
        }

        if (strlen($this->m_strMessage)) {
            $l_m_strMessage = $this->m_strMessage;
        }

        return isys_application::instance()->container->get('language')
            ->get($l_m_strMessage, $l_arParams);
    }

    /**
     * Sets the message.
     *
     * @param   string  $p_message
     * @param   integer $p_messageID
     * @param   null    $p_m_nMessageType
     * @param   array   $p_arParameters
     * @param   integer $p_m_nAlertLevel
     *
     * @return $this
     *
     * @author  Niclas Potthast <npotthast@i-doit.de>
     */
    public function set_message($p_message, $p_messageID = null, $p_m_nMessageType = null, $p_arParameters = null, $p_m_nAlertLevel = null)
    {
        $this->m_strMessage = $p_message;

        // Our own messages get id 0 and are internal.
        if (is_numeric($p_messageID)) {
            $this->m_nMessageID = $p_messageID;
        } else {
            $this->m_nMessageID = 0;
        }

        if (is_array($p_arParameters)) {
            $this->m_arParameters = $p_arParameters;
        }

        if (is_numeric($p_m_nAlertLevel)) {
            $this->m_nAlertLevel = $p_m_nAlertLevel;
        }

        return $this;
    }

    /**
     * Returns the message type, can be 'intern', 'extern' or 'user'.
     *
     * @todo    Get value from DB!
     * @return  string
     * @author  Niclas Potthast <npotthast@i-doit.de>
     */
    public function get_message_type()
    {
        return $this->m_nMessageType;
    }

    /**
     * @param const $p_m_nMessageType
     *
     * @author Niclas Potthast <npotthast@i-doit.de>
     * @desc   returns the message type, can be 'intern', 'extern' or 'user'
     */
    public function set_message_type($p_m_nMessageType)
    {
        $this->m_nMessageType = $p_m_nMessageType;
    }

    /**
     * @todo   get value from DB
     * @return integer
     * @author Niclas Potthast <npotthast@i-doit.de>
     * @desc   returns the message id, returns NULL if something goes wrong
     */
    public function get_message_id()
    {
        return $this->m_nMessageID;
    }

    /**
     * @todo   get date from DB
     * @return integer
     * @author Niclas Potthast <npotthast@i-doit.de>
     * @desc   returns the date
     */
    public function get_date()
    {
        return $this->m_strDate;
    }

    /**
     * @global $g_comp_database
     * @return string
     */
    public function show_html()
    {
        global $g_comp_database, $g_dirs;

        $l_mod_event_manager = isys_event_manager::getInstance();

        $alertLevelColor = "blue";
        $url = "";
        $title = "";
        $message = "";

        if ($g_comp_database) {
            // Use DAO to get last entry in logbook.
            $this->m_daoLogbook = new isys_component_dao_logbook($g_comp_database);

            try {
                $lastLogEntry = $this->m_daoLogbook->get_result_latest_entry($this->m_nMessageType)
                    ->get_row();

                // If set_message() was used don't do anything.
                if (is_null($this->m_strMessage)) {
                    if (!empty($lastLogEntry)) {
                        $l_m_strMessage = $l_mod_event_manager->translateEvent($lastLogEntry["isys_logbook__event_static"], $lastLogEntry["isys_logbook__obj_name_static"],
                            $lastLogEntry["isys_logbook__category_static"], $lastLogEntry["isys_logbook__obj_type_static"],
                            $lastLogEntry["isys_logbook__entry_identifier_static"], $lastLogEntry["isys_logbook__changecount"]);

                        $this->m_nAlertLevel = $lastLogEntry["isys_logbook_level__const"];
                        $this->m_strMessage = $l_m_strMessage;
                        $this->m_nMessageID = $lastLogEntry["isys_logbook__id"];
                        $this->m_nUserID = $lastLogEntry["isys_logbook__isys_obj__id"];
                        $this->m_strDate = isys_application::instance()->container->locales->fmt_datetime($lastLogEntry["isys_logbook__date"]);
                    } else {
                        $this->m_nAlertLevel = defined_or_default('C__LOGBOOK__ALERT_LEVEL__0', 0);
                        $this->m_strMessage = isys_application::instance()->container->get('language')
                            ->get('LC__INFOBOX__NO_ENTRIES');
                        $this->m_nMessageID = 0;
                    }
                }

            } catch (isys_exception $e) {
                echo $e->getMessage();
            }
        }

        //set alert level
        if ($this->m_nAlertLevel == defined_or_default('C__LOGBOOK__ALERT_LEVEL__0', 0)) {
            $alertLevelColor = "blue";
        } else if ($this->m_nAlertLevel == defined_or_default('C__LOGBOOK__ALERT_LEVEL__1', 1)) {
            $alertLevelColor = "green";
        } else if ($this->m_nAlertLevel == defined_or_default('C__LOGBOOK__ALERT_LEVEL__2', 2)) {
            $alertLevelColor = "yellow";
        } else if ($this->m_nAlertLevel == defined_or_default('C__LOGBOOK__ALERT_LEVEL__3', 3)) {
            $alertLevelColor = "red";
        }

        if ($this->m_nMessageID != 0) {
            $url = isys_helper_link::create_url([
                C__GET__MODULE_ID => defined_or_default('C__MODULE__LOGBOOK'),
                C__GET__ID        => $this->m_nMessageID
            ]);

            $title = isys_application::instance()->container->get('language')
                ->get("LC__INFOBOX__TITLE");
        }

        $l_imagesrc = $g_dirs["images"] . "icons/infobox/$alertLevelColor.png";

        if (!empty($this->m_strMessage)) {
            $l_strExtInfo = '';
            if (!empty($this->m_strDate)) {
                $l_strExtInfo .= " [" . $lastLogEntry["isys_logbook__user_name_static"] . "]";

                $message = $this->m_strDate . " " . $this->m_strMessage . $l_strExtInfo;
                $message = isys_glob_cut_string($message, C__INFOBOX__LENGTH);

            } else {
                $message = $this->m_strMessage;
            }
        }

        $message = html_entity_decode(stripslashes($message), null, $GLOBALS['g_config']['html-encoding']);

        $icon = '<img title="' . $title . '" height="16" alt="Alert level" src="' . $l_imagesrc . '" />';

        if (!empty($url)) {
            $icon = '<a title="' . $title . '" href="' . $url . '">' . $icon . '</a>';
        }

        return $icon . '<span>' . $message . '</span>';
    }

    /**
     * isys_component_template_infobox constructor.
     */
    public function __construct()
    {
        if (isys_glob_get_param("infoboxMsgType") != false) {
            $this->m_nMessageType = isys_glob_get_param("infoboxMsgType");
        }
    }
}
