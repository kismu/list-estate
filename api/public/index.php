<?php

error_reporting(E_ALL & ~E_DEPRECATED);

use Phalcon\Config\Adapter\Ini as ConfigIni;

try {

    define('APP_PATH', realpath('..') . '/');

    $config = new ConfigIni(APP_PATH . 'app/config/config.ini');
    require APP_PATH . 'app/config/loader.php';
    require APP_PATH . 'app/config/services.php';
    require APP_PATH . 'app/config/modules.php';

    echo $application->handle()->getContent();

} catch (Phalcon\Exception $e) {
    echo $e->getMessage();
} catch (PDOException $e){
    echo $e->getMessage();
}
