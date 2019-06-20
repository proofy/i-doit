<?php

namespace idoit\Module\Report\Worker\Export;

use idoit\Module\Report\Protocol\Exportable;
use idoit\Module\Report\Protocol\Worker;
use idoit\Module\Report\Worker\ReportWorker;
use isys_tenantsettings;
use League\Csv\Writer;

/**
 * Report CSV Export
 *
 * @deprecated
 * @todo        Is this used anywhere?
 *
 * @package     idoit\Module\Report\Export
 * @subpackage  Core
 * @author      Dennis Stücken <dstuecken@synetics.de>
 * @copyright   synetics GmbH
 * @license     http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 * @since       1.7.1
 */
class CsvExportWorker extends ReportWorker implements Worker, Exportable
{

    /**
     * @var Writer
     */
    private $csvWriter;

    /**
     * @var string
     */
    private $tempFile;

    /**
     * @var int
     */
    private $index = 0;

    /**
     * @param array $row
     */
    public function work(array $row)
    {
        if ($this->index === 0) {
            $this->csvWriter->insertOne(array_keys($row));
        }

        $this->csvWriter->insertOne(array_values($row));
        $this->index++;
    }

    /**
     * Send Csv data to browser
     *
     * @param string $filename
     *
     * @return void
     */
    public function output($filename = null)
    {
        $this->csvWriter->output($filename);
    }

    /**
     * Return Csv Data
     *
     * @return string
     */
    public function export()
    {
        return $this->csvWriter->__toString();
    }

    /**
     * Csv constructor.
     *
     * @param Writer|null $csvWriter
     */
    public function __construct(Writer $csvWriter = null)
    {
        if (!$csvWriter) {
            /*
            $this->tempFile = \isys_application::instance()->app_path . '/temp/' . md5(\isys_application::instance()->session->get_user_id() . microtime()) . '.csv';
            if (!file_exists($this->tempFile))
            {
                touch($this->tempFile);
            }

            $this->csvWriter = \League\Csv\Writer::createFromFileObject(new \SplFileObject($this->tempFile));
            */

            // @see ID-3381  Outputting the UTF8 BOM seems to work just fine :)
            $this->csvWriter = Writer::createFromFileObject(new \SplTempFileObject())
                ->setOutputBOM(Writer::BOM_UTF8)
                ->setDelimiter(isys_tenantsettings::get('system.csv-export-delimiter', ';'));
        } else {
            $this->csvWriter = $csvWriter;
        }
    }

    /**
     * @param string $filename
     *
     * @return $this
     */
    public function write($filename)
    {
        // TODO: Implement write() method.
    }
}
