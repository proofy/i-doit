#!/usr/bin/env php
<?php

use idoit\Console\Command\AbstractCommand;
use idoit\Console\IdoitConsoleApplication;
use idoit\Context\Context;
use idoit\Psr4AutoloaderClass;
use Symfony\Component\EventDispatcher\EventDispatcher;

// Set error reporting.
error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED & ~E_STRICT & ~E_WARNING);

if (file_exists(__DIR__ . '/src/config.inc.php')) {
    error_reporting(E_ALL & ~E_NOTICE & ~E_DEPRECATED & ~E_STRICT & ~E_WARNING);
    $g_absdir = __DIR__;

    require __DIR__ . "/src/config.inc.php";
    require __DIR__ . '/src/bootstrap.inc.php';

    try {
        chdir($g_absdir);
        $application = new IdoitConsoleApplication();
        $application->useEventDispatcher();

        Context::instance()->setOrigin(Context::ORIGIN_CONSOLE);
        $application->run();
    } catch (Exception $e) {
        die($e->getMessage());
    }
} else {
    die("Please, install i-doit first!\nYou can refer to README.md for more information.");
}
