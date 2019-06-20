<?php

namespace idoit\Console\Command\Cmdb\Tenant;

use Symfony\Component\Console\Input\InputDefinition;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputOption;

class DisableTenantCommand extends AbstractTenantsCommand
{
    const NAME = 'disable';

    public function getCommandDescription()
    {
        return 'Disable a tenant';
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

        return $this->daoTenant->deactivate_mandator($input->getOption('tenantId'));
    }
}
