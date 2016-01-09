<?php

$loader = new \Phalcon\Loader();

/**
 * We're a registering a set of directories taken from the configuration file
 */
$loader->registerDirs(array(
    APP_PATH . $config->common->modelsDir,
    APP_PATH . $config->common->controllersDir,
))->register();
