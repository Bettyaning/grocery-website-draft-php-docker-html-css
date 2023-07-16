<?php

require  '../autoload.php';

$routes = new \eightytwenty\Routes();
$entryPoint = new \AS\EntryPoint($routes);
$entryPoint->run();

?>
