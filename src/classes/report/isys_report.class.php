<?php

/**
 * i-doit Report Manager
 *
 * @package     i-doit
 * @subpackage  Reports
 * @author      Dennis Blümer <dbluemer@synetics.de>
 * @author      Van Quyen Hoang <qhoang@synetics.de>
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
class isys_report
{
    /**
     * @var  boolean
     */
    public static $m_as_download = true;

    /**
     * @var string
     */
    protected $m_datetime;

    /**
     * @var  string
     */
    protected $m_description;

    /**
     * @var  boolean
     */
    protected $m_empty_values;

    /**
     * @var  boolean
     */
    protected $m_display_relations;

    /**
     * @var null
     */
    protected $m_export_output = null;

    /**
     * @var
     */
    protected $m_id;

    /**
     * @var array
     */
    protected $m_last_edited;

    /**
     * @var
     */
    protected $m_query;

    /**
     * @var string
     */
    protected $category_report = 0;

    /**
     * @var int
     */
    private $compressedMultivalueResults = 1;

    /**
     * @var
     */
    private $m_querybuilder_data;

    /**
     * @var
     */
    protected $m_report_category;

    /**
     * @var
     */
    protected $m_title;

    /**
     * @var
     */
    protected $m_type;

    /**
     * @var
     */
    protected $m_user_specific;

    /**
     * @var int
     */
    private $showHtml = 0;

    /**
     * Method for deleting a report.
     *
     * @param   integer                 $p_id
     *
     * @throws  Exception
     * @global  isys_component_database $g_comp_database_system
     */
    public static function deleteReport($p_id)
    {
        global $g_comp_database_system;

        $l_sql = 'DELETE FROM isys_report WHERE (isys_report__id = ' . (int)$p_id . ');';

        if (!$g_comp_database_system->query($l_sql)) {
            throw new Exception('Error deleting report');
        }
    }

    /**
     * Getter method for retrieving the export output
     *
     * @return null
     */
    public function get_export_output()
    {
        return $this->m_export_output;
    }

    /**
     * Setter for the export output
     *
     * @param $p_data
     *
     * @return $this
     */
    public function set_export_output($p_data)
    {
        $this->m_export_output = $p_data;

        return $this;
    }

    /**
     * Getter method for the title.
     *
     * @return  string
     */
    public function getTitle()
    {
        return $this->m_title;
    }

    /**
     * Setter method for the title.
     *
     * @param   string $p_title
     *
     * @return  isys_report
     */
    public function setTitle($p_title)
    {
        $this->m_title = $p_title;

        return $this;
    }

    /**
     * Getter method for the description.
     *
     * @return  string
     */
    public function getDescription()
    {
        return $this->m_description;
    }

    /**
     * Setter method for the description.
     *
     * @param   string $p_description
     *
     * @return  isys_report
     */
    public function setDescription($p_description)
    {
        $this->m_description = $p_description;

        return $this;
    }

    /**
     * Getter method for the query.
     *
     * @return  string
     */
    public function getQuery()
    {
        return $this->m_query;
    }

    /**
     * Setter method for the query.
     *
     * @param   string $p_query
     *
     * @return  isys_report
     */
    public function setQuery($p_query)
    {
        $this->m_query = $p_query;

        return $this;
    }

    /**
     * Getter method for the query row.
     *
     * @return  boolean
     */
    public function get_user_specific()
    {
        return $this->m_user_specific;
    }

    /**
     * Setter method for the query row.
     *
     * @param   boolean $p_user_specific
     *
     * @return  isys_report
     */
    public function set_user_specific($p_user_specific)
    {
        $this->m_user_specific = $p_user_specific;

        return $this;
    }

    /**
     * Getter method for retrieving the member variable for the querybuilder data.
     *
     * @return mixed
     */
    public function get_querybuilder_data()
    {
        return $this->m_querybuilder_data;
    }

    /**
     * Setter method for setting the member variable for the querybuilder data.
     *
     * @param $p_data
     *
     * @return $this
     */
    public function set_querybuilder_data($p_data)
    {
        $this->m_querybuilder_data = $p_data;

        return $this;
    }

    /**
     * Getter method for retrieving the member variable for the report category id
     *
     * @return mixed
     */
    public function get_report_category()
    {
        return $this->m_report_category;
    }

    /**
     * Setter method for setting the member variable for the report category id
     *
     * @param $p_id
     *
     * @return $this
     */
    public function set_report_category($p_id)
    {
        $this->m_report_category = $p_id;

        return $this;
    }

    /**
     * Getter method for the datetime.
     *
     * @return  string
     */
    public function getDatetime()
    {
        return $this->m_datetime;
    }

    /**
     * Setter method for the datetime.
     *
     * @param   string $p_datetime
     *
     * @return  isys_report
     */
    public function setDatetime($p_datetime)
    {
        $this->m_datetime = $p_datetime;

        return $this;
    }

    /**
     * Getter method for the last edited.
     *
     * @return  string
     */
    public function getLast_edited()
    {
        return $this->m_last_edited;
    }

    /**
     * Setter method for the last edited.
     *
     * @param   string $p_last_edited
     *
     * @return  isys_report
     */
    public function setLast_edited($p_last_edited)
    {
        $this->m_last_edited = $p_last_edited;

        return $this;
    }

    /**
     * Getter method for the id.
     *
     * @return  integer
     */
    public function getId()
    {
        return (int)$this->m_id;
    }

    /**
     * Setter method for the last id.
     *
     * @param   integer $p_id
     *
     * @return  isys_report
     */
    public function setId($p_id)
    {
        $this->m_id = $p_id;

        return $this;
    }

    /**
     * Getter method for the type.
     *
     * @return  string
     */
    public function getType()
    {
        return $this->m_type;
    }

    /**
     * Setter method for the empty values.
     *
     * @param   mixed $p_value
     *
     * @return  $this
     */
    public function setEmpty_values($p_value)
    {
        $this->m_empty_values = (bool)$p_value;

        return $this;
    }

    /**
     * Getter method for the empty values
     *
     * @return  boolean
     */
    public function getEmpty_values()
    {
        return $this->m_empty_values;
    }

    /**
     * Setter method for "display relations".
     *
     * @param   mixed $p_value
     *
     * @return  $this
     */
    public function setDisplay_relations($p_value)
    {
        $this->m_display_relations = (bool)$p_value;

        return $this;
    }

    /**
     * Getter method for "display relation".
     *
     * @return  boolean
     */
    public function getDisplay_relations()
    {
        return $this->m_display_relations;
    }

    /**
     * Creates a report entry in table isys_report.
     *
     * @throws  Exception
     * @return  integer  The last inserted ID.
     */
    public function store()
    {
        global $g_comp_database_system, $g_comp_session;

        $l_sql = "INSERT INTO isys_report SET " .
            "isys_report__title = '" . $g_comp_database_system->escape_string($this->m_title) . "', " .
            "isys_report__description = '" . $g_comp_database_system->escape_string($this->m_description) . "', " .
            "isys_report__query = '" . $g_comp_database_system->escape_string($this->m_query) . "', " .
            "isys_report__mandator = " . (int)$g_comp_session->get_mandator_id() . ", " .
            "isys_report__user = " . (int)$g_comp_session->get_user_id() . ", " .
            "isys_report__datetime = NOW(), " .
            "isys_report__last_edited = NOW(), " .
            "isys_report__type = '" . $this->m_type . "', " .
            "isys_report__category_report = " . (($this->category_report == 'on') ? 1 : 0) . ", " .
            "isys_report__user_specific = " . (($this->m_user_specific == 'on') ? 1 : 0) . ", " .
            "isys_report__isys_report_category__id = " . (($this->m_report_category > 0) ? (int)$this->m_report_category : "NULL") . ", " .
            "isys_report__empty_values = " . (($this->m_empty_values) ? 1 : 0) . ", " .
            "isys_report__display_relations = " . (($this->m_display_relations) ? 1 : 0) . ", " .
            "isys_report__querybuilder_data = '" . $g_comp_database_system->escape_string($this->m_querybuilder_data) . "', " .
            "isys_report__show_html = '" . $g_comp_database_system->escape_string($this->showHtml) . "', " .
            "isys_report__compressed_multivalue_results = " . (int)$g_comp_database_system->escape_string($this->compressedMultivalueResults) . ";";

        if ($g_comp_database_system->query($l_sql)) {
            return $this->m_id = $g_comp_database_system->get_last_insert_id();
        } else {
            throw new Exception("Error storing report: " . $g_comp_database_system->get_last_error_as_string());
        }
    }

    /**
     * Update reports entry in table isys_report.
     *
     * @throws Exception
     */
    public function update()
    {
        global $g_comp_database_system;

        $l_sql = "UPDATE isys_report SET " . "isys_report__title = '" . $g_comp_database_system->escape_string($this->m_title) . "', " . "isys_report__description = '" .
            $g_comp_database_system->escape_string($this->m_description) . "', " . "isys_report__query = '" . $g_comp_database_system->escape_string($this->m_query) . "', " .
            "isys_report__querybuilder_data = '" . $g_comp_database_system->escape_string($this->m_querybuilder_data) . "', " . "isys_report__user_specific = " .
            (($this->m_user_specific == 'on') ? 1 : 0) . ", " . "isys_report__category_report = " . (($this->category_report == 'on') ? 1 : 0) . ", " .
            "isys_report__isys_report_category__id = " . (($this->m_report_category > 0) ? (int)$this->m_report_category : "NULL") . ", " . "isys_report__empty_values = " .
            (($this->m_empty_values) ? 1 : 0) . ", " . "isys_report__display_relations = " . (($this->m_display_relations) ? 1 : 0) . ", " .
            "isys_report__last_edited = NOW() ," . "isys_report__show_html = " . (($this->showHtml) ? 1 : 0) . ", " . "isys_report__compressed_multivalue_results = " . (($this->compressedMultivalueResults) ? 1 : 0) . " " . "WHERE isys_report__id = '" . $this->m_id . "';";

        if (!$g_comp_database_system->query($l_sql)) {
            throw new Exception("Error updating report");
        }
    }

    /**
     * Deletes a reports entry in table isys_report.
     *
     * @throws Exception
     */
    public function delete()
    {
        global $g_comp_database_system;

        $l_sql = 'DELETE FROM isys_report WHERE (isys_report__id = ' . $this->getId() . ');';

        if (!$g_comp_database_system->query($l_sql)) {
            throw new Exception("Error deleting report");
        }
    }

    /**
     * Checks if a title is already existing.
     *
     * @return boolean
     */
    public function exists()
    {
        global $g_comp_database_system;

        $l_sql = "SELECT * FROM isys_report WHERE " . "(isys_report__title = '" . $g_comp_database_system->escape_string($this->m_title) . "');";

        $l_resource = $g_comp_database_system->query($l_sql);
        if ($g_comp_database_system->num_rows($l_resource) > 0) {
            return true;
        } else {
            return false;
        }
    }

    /**
     * Execute Query
     *
     * @param bool $p_title_chaining
     * @param bool $p_context_html
     *
     * @return array
     * @throws Exception
     */
    public function query($p_title_chaining = true, $p_context_html = true)
    {
        return isys_report_dao::instance(isys_application::instance()->database)
            ->query($this->m_query, null, false, $p_title_chaining, $p_context_html);
    }

    /**
     * creates a new instance of isys_report.
     *
     * @param $p_params
     */
    public function __construct($p_params)
    {
        if (isset($p_params["report_id"])) {
            $this->m_id = $p_params["report_id"];
        }

        $this->m_type = $p_params["type"];
        $this->m_title = $p_params["title"];
        $this->m_description = $p_params["description"];
        $this->m_query = $p_params["query"];
        $this->m_user_specific = $p_params["userspecific"];
        $this->m_querybuilder_data = $p_params["querybuilder_data"];
        $this->m_report_category = $p_params["report_category"];
        $this->m_empty_values = $p_params['empty_values'];
        $this->m_display_relations = $p_params['display_relations'];
        $this->category_report = $p_params['category_report'];
        $this->compressedMultivalueResults = $p_params['compressed_multivalue_results'];
        $this->showHtml = $p_params['show_html'];

        if (isset($p_params["datetime"])) {
            $this->m_datetime = $p_params["datetime"];
            $this->m_last_edited = $p_params["last_edited"];
        } else {
            $this->m_datetime = getdate();
            $this->m_last_edited = $this->m_datetime;
        }
    }

    /**
     * Should this export show HTML?
     *
     * @return bool
     */
    public function shouldShowHtml()
    {
        return (bool)$this->showHtml;
    }
}
