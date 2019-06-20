<?php

namespace idoit\Console\Command\Cmdb\Tenant;

use Symfony\Component\Console\Helper\Table;
use Symfony\Component\Console\Input\InputInterface;

class ListTenantsCommand extends AbstractTenantsCommand
{
    const NAME = 'list';

    public function getCommandDescription()
    {
        return 'List all tenants';
    }

    protected function executeOperation(InputInterface $input)
    {
        $l_tenant_data = $this->daoTenant->get_mandator(null, 0);

        $table = new Table($this->output);

        $this->output->writeln('<info>Available tenants:</info>');

        $table->setHeaders(['ID', 'Title', '(host:port)', '[status]']);

        $rows = [];

        while ($l_row = $l_tenant_data->get_row()) {
            $rows[] = [
                $l_row["isys_mandator__id"],
                $l_row["isys_mandator__title"],
                "(" . $l_row["isys_mandator__db_host"] . ":" . $l_row["isys_mandator__db_port"] . ")",
                $l_row["isys_mandator__active"] == 1 ? 'active' : 'inactive'
            ];
        }

        $table->setRows($rows);
        $table->render();
    }
}
