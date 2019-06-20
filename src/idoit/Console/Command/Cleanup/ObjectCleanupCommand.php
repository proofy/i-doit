<?php

namespace idoit\Console\Command\Cleanup;

use idoit\Console\Command\AbstractCommand;
use isys_factory;
use Symfony\Component\Console\Input\InputDefinition;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Output\OutputInterface;

class ObjectCleanupCommand extends AbstractCommand
{
    const NAME = 'system-objectcleanup';

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
        return 'Purges optionally objects that are in the state unfinished, archived or deleted';
    }

    /**
     * Retrieve Command InputDefinition
     *
     * @return InputDefinition
     */
    public function getCommandDefinition()
    {
        $definition = new InputDefinition();
        $definition->addOption(new InputOption('objectStatus', null, InputOption::VALUE_REQUIRED,
            "Use to start cleaning up the specified status:\n" . C__RECORD_STATUS__BIRTH . " for 'unfinished' objects, " . C__RECORD_STATUS__ARCHIVED .
            " for 'archived' objects and " . C__RECORD_STATUS__DELETED . " for 'deleted' objects."));

        return $definition;
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
        return ['system-objectcleanup -u admin -p admin -i 1 --objectStatus=3 '];
    }

    protected function execute(InputInterface $input, OutputInterface $output)
    {
        $output->writeln("Setting up system environment");

        $output->writeln("Starting cleanup... ");

        try {
            $moduleSystem = isys_factory::get_instance('isys_module_system', $this->container->database);
            $count = $moduleSystem->cleanup_objects($input->getOption('objectStatus'));

            $output->writeln(sprintf('Unused objects with status %s deleted Total of: %s.', $input->getOption('objectStatus'), $count));
        } catch (\Exception $e) {
            $output->writeln('<error>' . $e->getMessage() . '</error>');
        }

        $output->writeln("Done");
    }

}
