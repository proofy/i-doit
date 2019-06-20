<?php

namespace idoit\Console\Command\Cmdb\Tenant;

use Symfony\Component\Console\Input\InputDefinition;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputOption;

class EnableTenantCommand extends AbstractTenantsCommand
{
    const NAME = 'enable';

    public function getCommandDescription()
    {
        return 'Enable a new tenant';
    }

    public function getCommandDefinition()
    {
        $definition = new InputDefinition();

        $definition->addOption(new InputOption('tenantId', null, InputOption::VALUE_REQUIRED, 'Tenant Id for tenant operations'));

        return $definition;
    }

    protected function executeOperation(InputInterface $input)
    {
        if ($input->getOption('tenantId') === null) {
            throw new \Exception('Provide a tenantId for this operation!');
        }

        return $this->daoTenant->activate_mandator($input->getOption('tenantId'));
    }
}
