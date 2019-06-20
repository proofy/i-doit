<?php

/**
 * i-doit
 *
 * Application controller
 *
 * @package    i-doit
 * @subpackage General
 * @copyright  synetics GmbH
 * @license    http://www.gnu.org/licenses/agpl-3.0.html GNU AGPLv3
 */
$app = isys_application::instance();
$catchallController = \idoit\Controller\CatchallController::factory($app->container);

$requestController = isys_request_controller::instance()
    ->route('POST', '/mod-rewrite-test', function (isys_register $request) {
        try {
            isys_core::send_header('Content-Type', 'application/json');

            $startTime = (float) $request->get('POST')->get('start');
            $responseTime = microtime(true);

            $result = [
                'success' => true,
                'data' => [
                    'startTime' => $startTime,
                    'responseTime' => $responseTime,
                    'delta' => $responseTime - $startTime,
                ],
                'message' => ''
            ];
        } catch (Exception $e) {
            header('Content-Type: application/json');

            $result = [
                'success' => false,
                'data' => null,
                'message' => $e->getMessage()
            ];
        }

        echo isys_format_json::encode($result);
        die;
    })
    ->route('GET|POST', '/[s:module]/[s:action]/[c:method]/[i:id]', [
        $catchallController,
        'handle'
    ])
    ->route('GET|POST', '/[s:module]/[s:action]/[c:method]', [
        $catchallController,
        'handle'
    ])
    ->route('GET|POST', '/[s:module]?/[s:action]?/[i:id]?', [
        $catchallController,
        'handle'
    ]);

$app::run($requestController);
