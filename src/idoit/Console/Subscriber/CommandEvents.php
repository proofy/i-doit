<?php

namespace idoit\Console\Subscriber;

use DirectoryIterator;
use idoit\Console\Command\AbstractCommand;
use idoit\Console\Command\LoginAwareInterface;
use isys_application;
use SplFileInfo;
use Symfony\Component\Console\ConsoleEvents;
use Symfony\Component\Console\Event\ConsoleCommandEvent;
use Symfony\Component\Console\Event\ConsoleErrorEvent;
use Symfony\Component\Console\Event\ConsoleTerminateEvent;
use Symfony\Component\Console\Output\OutputInterface;
use Symfony\Component\EventDispatcher\EventSubscriberInterface;

class CommandEvents implements EventSubscriberInterface
{
    /**
     * @inheritdoc
     */
    public static function getSubscribedEvents()
    {
        return [
            ConsoleEvents::COMMAND   => 'onCommandStart',
            ConsoleEvents::TERMINATE => 'onCommandShutdown'
        ];
    }

    public function onCommandStart(ConsoleCommandEvent $event)
    {
        $command = $event->getCommand();

        // Load additional configuration via --config
        if ($command instanceof AbstractCommand && $command->isConfigurable()) {
            $input = $event->getInput();

            $config = $command->getConfigFile($input);

            if (!empty($config)) {
                $event->getOutput()
                    ->writeln('<info>Processing config file</info>');
                $configData = parse_ini_file($config, true, INI_SCANNER_RAW);

                if (array_key_exists('commandArguments', $configData)) {
                    $this->advancedIniParsing($configData['commandArguments']);
                    foreach ($configData['commandArguments'] as $key => $value) {
                        $input->setArgument($key, $value);
                    }
                }

                if (array_key_exists('commandOptions', $configData)) {
                    $this->advancedIniParsing($configData['commandOptions']);
                    foreach ($configData['commandOptions'] as $key => $value) {
                        $input->setOption($key, $value);
                    }
                }

                if (array_key_exists('additional', $configData)) {
                    $this->advancedIniParsing($configData['additional']);
                    $command->setConfig($configData['additional']);
                }
            }
        }

        if ($command instanceof LoginAwareInterface && $command->requiresLogin()) {
            $event->getOutput()
                ->writeln('<info>Login for User</info>', OutputInterface::VERBOSITY_DEBUG);
            $command->login($event->getInput());
        }

        $this->bootingModules();
    }

    public function onCommandShutdown(ConsoleTerminateEvent $event)
    {
        $command = $event->getCommand();

        if ($command instanceof LoginAwareInterface && $command->requiresLogin()) {
            $event->getOutput()
                ->writeln('<info>Logout for User</info>', OutputInterface::VERBOSITY_DEBUG);
            $command->logout();
        }
    }

    private function advancedIniParsing(array &$ini)
    {
        foreach ($ini as &$value) {
            switch ($value) {
                case '[]':
                    $value = [];
                    break;
                case 'false':
                    $value = false;
                    break;
                case 'true':
                    $value = true;
                    break;
                case "''":
                case '\'\'':
                    $value = '';
                    break;
            }
        }
    }

    private function bootingModules()
    {
        /**
         * Collect language files for add-ons
         */
        $iterator = new DirectoryIterator('src/classes/modules');

        /**
         * @var $file SplFileInfo
         */
        foreach ($iterator as $file) {
            if (!$file->isDir()) {
                continue;
            }

            // Handle module specific language files.
            $language = isys_application::instance()->container->session->get_language();

            if (file_exists($file->getPathname() . '/lang/' . $language . '.inc.php')) {
                $languageConstants = include_once($file->getPathname() . '/lang/' . $language . '.inc.php');

                if (is_array($languageConstants)) {
                    isys_application::instance()->container->get('language')
                        ->append_lang($languageConstants);
                }
            }
        }
    }
}
