<?php

namespace idoit\Console\Command\Cmdb\Tenant;

use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputOption;

class AddTenantCommand extends AbstractTenantsCommand
{
    const NAME = 'add';

    public function getCommandDescription()
    {
        return 'Add a new tenant';
    }

    public function getCommandDefinition()
    {
        $definition = parent::getCommandDefinition();

        $definition->addOption(new InputOption('tenantId', null, InputOption::VALUE_REQUIRED, 'Tenant Id for tenant operations'));

        return $definition;
    }

    protected function executeOperation(InputInterface $input)
    {
        if (!$input->getOption('title')) {
            throw new \Exception('Provide a title for a new tenant!');
        }

        return $this->daoTenant->add($input->getOption('title'), $input->getOption('description'), $input->getOption('cacheDirectory'), $input->getOption('tplDirectory'),
            $input->getOption('host'), $input->getOption('port'), $input->getOption('user'), $input->getOption('password'), $input->getOption('sort'),
            ((int)($input->getOption('enable') ?: $input->getOption('disable'))));
    }
}
