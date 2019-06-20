<?php

namespace idoit\Console\Command\Cmdb\Tenant;

use Symfony\Component\Console\Helper\QuestionHelper;
use Symfony\Component\Console\Input\InputDefinition;
use Symfony\Component\Console\Input\InputInterface;
use Symfony\Component\Console\Input\InputOption;
use Symfony\Component\Console\Question\ConfirmationQuestion;

class DeleteTenantCommand extends AbstractTenantsCommand
{
    const NAME         = 'delete';
    const HIDE_COMMAND = true;

    public function getCommandDescription()
    {
        return 'Delete an existing tenant';
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

        /**
         * @var $helper QuestionHelper
         */
        $helper = $this->getHelper('question');
        $question = new ConfirmationQuestion('Do you really want to delete the existing tenant? (y/n) ', false);

        if ($helper->ask($input, $this->output, $question)) {
            $this->daoTenant->delete($input->getOption('tenantId'));
        }
    }
}
