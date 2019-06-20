<?php

namespace idoit\Console\Command\Cmdb\Tenant;

use idoit\Console\Command\AbstractCommand;
use isys_component_dao_mandator;
use Symfony\Component\Console\Helper\Table;
use Symfony\Component\Console\Input\InputDefinition;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Output\OutputInterface;

abstract class AbstractTenantsCommand extends AbstractCommand
{
    const NAME           = 'tenant';
    const REQUIRES_LOGIN = false;

    /**
     * @var isys_component_dao_mandator
     */
    protected $daoTenant;

    /**
     * @var OutputInterface
     */
    protected $output;

    abstract protected function executeOperation(InputInterface $input);

    /**
     * Get name for command
     *
     * @return string
     */
    public function getCommandName()
    {
        return self::NAME . '-' . $this::NAME;
    }

    /**
     * Get description for command
     *
     * @return string
     */
    public function getCommandDescription()
    {
        return 'Handling tenants via command';
    }

    /**
     * Retrieve Command InputDefinition
     *
     * @return InputDefinition
     */
    public function getCommandDefinition()
    {
        $definition = new InputDefinition();

        $definition->addOption(new InputOption('title', null, InputOption::VALUE_REQUIRED, 'Title for new tenant'));

        $definition->addOption(new InputOption('cacheDirectory', null, InputOption::VALUE_REQUIRED, 'Cache directory for new tenant'));

        $definition->addOption(new InputOption('tplDirectory', null, InputOption::VALUE_REQUIRED, 'Tpl directory for new tenant', 'default'));

        $definition->addOption(new InputOption('host', null, InputOption::VALUE_REQUIRED, 'Host for new tenant'));

        $definition->addOption(new InputOption('port', null, InputOption::VALUE_REQUIRED, 'Database port for new tenant'));

        $definition->addOption(new InputOption('user', null, InputOption::VALUE_REQUIRED, 'Database user for new tenant'));

        $definition->addOption(new InputOption('password', null, InputOption::VALUE_REQUIRED, 'Database password for new tenant'));

        $definition->addOption(new InputOption('description', null, InputOption::VALUE_REQUIRED, 'Description for new tenant'));

        $definition->addOption(new InputOption('sort', null, InputOption::VALUE_REQUIRED, 'Sort for new tenant'));

        $definition->addOption(new InputOption('enable', null, InputOption::VALUE_NONE, 'When given, new tenant will be active, default'));

        $definition->addOption(new InputOption('disable', null, InputOption::VALUE_NONE, 'When given, new tenant will be inactive'));

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
        $this->daoTenant = new isys_component_dao_mandator($this->container->database_system);

        $tenant = [];

        if ($input->hasOption('tenantId') && $input->getOption('tenantId')) {
            $tenant = $this->daoTenant->get_mandator($input->getOption('tenantId'), 0)
                ->__as_array();
        }

        if ($input->hasOption('tenantId') && $input->getOption('tenantId') && empty($tenant)) {
            $output->writeln('<comment>Please choose an existing tenant</comment>');

            //list tenants command
        }

        try {
            $this->executeOperation($input);

            $this->output->writeln('Command ' . $this->getCommandName() . ' was successful!');
        } catch (\Exception $exception) {
            $this->output->writeln('<error>Command ' . $this->getCommandName() . ' failed (' . $exception->getMessage() . ')</error>');
        }
    }
}
