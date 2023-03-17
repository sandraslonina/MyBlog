<?php

/**
 * Initialisations
 *
 * Register an autoloader, start or resume the session etc.
 */

spl_autoload_register(function ($class) {
    require dirname(__DIR__) . "/classes/{$class}.php";
});

session_start();

require dirname(__DIR__) . '/config.php';

/**
 * Error and exception handling
 */
function errorHandler($level, $message, $file, $line)
{
    throw new ErrorException($message, 0, $level, $file, $line);
}

