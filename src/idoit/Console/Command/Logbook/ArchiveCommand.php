<?php

namespace idoit\Console\Command\Logbook;

use idoit\Console\Command\AbstractCommand;
use isys_component_dao_archive;
use isys_component_dao_logbook;
use isys_convert;
use Symfony\Component\Console\Input\InputDefinition;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Output\OutputInterface;

class ArchiveCommand extends AbstractCommand
{
    const NAME = 'logbook-archive';

    /**
     * @var isys_component_dao_logbook
     */
    private $daoLogbook;

    /**
     * @var OutputInterface
     */
    private $output;

    /**
     * Get name for command
     *
     * @return string
     */
    public function getCommandName()
    {
        return self::NAME;
    }

    /**
     * Get description for command
     *
     * @return string
     */
    public function getCommandDescription()
    {
        return 'Archives Logbook entries (Settings are defined in the GUI)';
    }

    /**
     * Retrieve Command InputDefinition
     *
     * @return InputDefinition
     */
    public function getCommandDefinition()
    {
        return new InputDefinition();
    }

    /**
     * Checks if a command can have a config file via --config
     *
     * @return bool
     */
    public function isConfigurable()
    {
        return true;
    }

    /**
     * Returns an array of command usages
     *
     * @return string[]
     */
    public function getCommandUsages()
    {
        return [];
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        $this->output = $output;
        $this->output->writeln("Setting up system environment");

        /* Get daos, because now we are logged in */
        $this->daoLogbook = new isys_component_dao_logbook($this->container->database);

        $this->output->writeln("Logbook archiving-handler initialized (" . date("Y-m-d H:i:s") . ")");

        /* Check status and add to logbook */
        try {
            $this->processArchiving();
        } catch (\Exception $e) {
            $this->output->writeln('<error>' . $e->getMessage() . '</error>');
        }
    }

    /**
     * @return void
     * @throws \Exception
     */
    private function processArchiving()
    {
        global $g_db_system;

        $settings = $this->daoLogbook->getArchivingSettings();

        if ($settings["dest"] == 0) {
            $database = $this->container->database;
            $this->output->writeln("Using local database");
        } else {
            try {
                $this->output->writeln("Using remote database on " . $settings["host"]);

                $database = \isys_component_database::get_database($g_db_system["type"], $settings["host"], $settings["port"], $settings["user"], $settings["pass"],
                    $settings["db"]);

                $this->output->writeln("Connection to " . $settings["host"] . " established");
            } catch (\Exception $e) {
                throw new \Exception("Logbook archiving: Failed to connect to " . $settings["host"]);
            }
        }

        $this->output->writeln("<info>Archiving</info>");

        $daoArchive = new isys_component_dao_archive($database);
        $arDate = getdate(time() - $settings["interval"] * isys_convert::DAY);
        $date = $arDate["year"] . "-" . $arDate["mon"] . "-" . $arDate["mday"];

        $archivedRecords = $daoArchive->archive($this->daoLogbook, $date, $settings["interval"], $settings["dest"] == 0);

        $this->output->writeln('Archived records: ' . ($archivedRecords ? $archivedRecords : 0) . ' (Memory peak: ' . (memory_get_peak_usage(true) / 1024 / 1024) . ' mb)');

        $this->output->writeln("<info>Archiving successful</info>");
    }
}
