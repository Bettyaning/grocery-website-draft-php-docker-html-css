<?php
require '../functions/loadTemplate.php';
require '../database.php';
require '../autoload.php';

$jobTable = new \CSY2028\DatabaseTable($pdo, 'job', 'id');
$categoryTable = new \CSY2028\DatabaseTable($pdo, 'category', 'id');
$applicantsTable = new \CSY2028\DatabaseTable($pdo, 'applicants', 'id');
$enquiresTable = new \CSY2028\DatabaseTable($pdo, 'enquires', 'id');

$controllers = [];
$controllers['job'] = new \tables\Controllers\job($jobTable, $categoryTable);
$controllers['category'] = new \tables\Controllers\category($categoryTable);
$controllers['applicants'] = new \tables\Controllers\applicants($jobTable, $applicantsTable);
$controllers['enquires'] = new \tables\Controllers\enquires($enquiresTable);

$route = ltrim(explode('?', $_SERVER['REQUEST_URI'])[0], '/');

if ($route == '') {
	$page = $controllers['job']->home();
} else {
	list($controllerName, $functionName) = explode('/', $route);
	$controller = $controllers[$controllerName];
	$page = $controller->$functionName();
}

$output = loadTemplate('../templates/' . $page['template'], $page['variables']);
$title = $page['title'];

require '../templates/layout.html.php';
