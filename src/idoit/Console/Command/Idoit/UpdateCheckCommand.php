<?php

namespace idoit\Console\Command\Idoit;

use idoit\Console\Command\AbstractCommand;
use isys_auth;
use isys_auth_system_tools;
use isys_component_signalcollection;
use isys_log;
use isys_log_migration;
use isys_update;
use isys_update_files;
use isys_update_log;
use isys_update_migration;
use isys_update_property_migration;
use Symfony\Component\Console\Input\InputDefinition;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Output\OutputInterface;

class UpdateCheckCommand extends AbstractCommand
{
    const NAME           = 'system-checkforupdates';
    const REQUIRES_LOGIN = false;

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
        return 'Checks for i-doit core updates';
    }

    /**
     * Retrieve Command InputDefinition
     *
     * @return InputDefinition
     */
    public function getCommandDefinition()
    {
        $definition = new InputDefinition();

        return $definition;
    }

    /**
     * Checks if a command can have a config file via --config
     *
     * @return bool
     */
    public function isConfigurable()
    {
        return false;
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

        try {
            $this->check();
        } catch (\Exception $exception) {
            $this->output->writeln('<error>' . $exception->getMessage() . '</error>');
        }
    }

    /**
     * Method for checking on a new version.
     */
    private function check()
    {
        global $g_absdir, $g_product_info;

        $l_new_update = false;
        $l_responseTEXT = '';

        if (extension_loaded('curl')) {
            if (file_exists($g_absdir . '/updates/classes/isys_update.class.php')) {
                include_once($g_absdir . '/updates/classes/isys_update.class.php');

                $l_upd = new isys_update;

                $this->output->writeln('Checking... Please wait..');

                try {
                    if (defined('C__IDOIT_UPDATES_PRO')) {
                        $l_updateURL = C__IDOIT_UPDATES_PRO;
                    } else {
                        $l_updateURL = "http://www.i-doit.org/updates.xml";
                    }

                    $l_responseTEXT = $l_upd->fetch_file($l_updateURL);
                } catch (\Exception $e) {
                    $this->output->writeln('<error>' . $e->getMessage() . '</error>');
                }

                $l_version = $l_upd->get_new_versions($l_responseTEXT);
                $l_info = $l_upd->get_isys_info();

                if (is_array($l_version) && count($l_version) > 0) {
                    foreach ($l_version as $l_v) {
                        if ($l_info['revision'] < $l_v['revision']) {
                            $l_new_update = $l_v;
                        }
                    }

                    if (!isset($l_new_update)) {
                        $l_update_msg = 'You have already got the latest version (' . $g_product_info['version'] . ').';
                    }
                } else {
                    $l_update_msg = '<error>Update check failed. Is the i-doit server connected to the internet?</error>';
                }
            }

            if (isset($l_update_msg)) {
                $this->output->writeln($l_update_msg);
            } else {
                if ($l_new_update) {
                    $this->output->writeln('');
                    $this->output->writeln('There is a new i-doit version available: ' . $l_new_update['version']);
                    $this->output->writeln('Your current version is: ' . $g_product_info['version']);
                    $this->output->writeln('Use the i-doit updater to update to the latest version.');

                    file_put_contents(isys_glob_get_temp_dir() . 'new_version', serialize($l_new_update));
                } else {
                    $this->output->writeln(sprintf('You already got the latest i-doit version (%s)', $g_product_info['version']));
                }
            }
        } else {
            $this->output->writeln('<error>You need to install the php-curl extension in order to run this script!</error>');
        }
    }
}
