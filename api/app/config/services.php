<?php

use Phalcon\DI\FactoryDefault;
use Phalcon\Mvc\Dispatcher;
use Phalcon\Mvc\Url as UrlProvider;
use Phalcon\Session\Adapter\Files as SessionAdapter;
use Phalcon\Flash\Session as FlashSession;
use Phalcon\Logger\Adapter\File as FileLogger;

/**
 * The FactoryDefault Dependency Injector automatically register the right services providing a full stack framework
 */
$di = new FactoryDefault();

$di->set('config', $config);

/**
 * Loading routes from the routes.php file
 */
$di->set('router', function () {
    return require __DIR__ . '/routes.php';
});

/**
 * The URL component is used to generate all kind of urls in the application
 */
$di->set('url', function() use ($config){
	$url = new UrlProvider();
	$url->setBaseUri($config->common->baseUri);
	return $url;
});

/**
 * Database connection is created based in the parameters defined in the configuration file
 */
$di->set('db', function() use ($config) {
	$dbclass = 'Phalcon\Db\Adapter\Pdo\\' . $config->database->adapter;
	return new $dbclass(array(
		"host"     => $config->database->host,
		"username" => $config->database->username,
		"password" => $config->database->password,
		"dbname"   => $config->database->name
	));
});

/**
 * If the configuration specify the use of metadata adapter use it or use memory otherwise
 */
$di->set('modelsMetadata', function() {
	return new Phalcon\Mvc\Model\MetaData\Memory();
});

/**
 * Start the session the first time some component request the session service
 */
$di->set('session', function() {
	$session = new SessionAdapter();
	$session->start();
	return $session;
});

/**
 * Register the flash service with custom CSS classes
 */
$di->set('flash', function(){
	return new FlashSession(array(
		'error'   => 'alert alert-danger',
		'success' => 'alert alert-success',
		'notice'  => 'alert alert-info',
        'warning' => 'alert alert-warning',
	));
});

/**
 * Logger
 */
$di->set('logger', function() use ($config){
	$logger = new FileLogger(APP_PATH.$config->common->log);
	return $logger;
});

$di->set('view', function() {
    $view = new \Phalcon\Mvc\View();
    return $view;
}, true);