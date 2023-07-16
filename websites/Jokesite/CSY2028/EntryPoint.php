<?php
namespace CSY2028;
class EntryPoint {
	private $routes;

	public function __construct(Routes $routes) {
		$this->routes = $routes;
	}

	public function run() {
		$route = ltrim(explode('?', $_SERVER['REQUEST_URI'])[0], '/');
		$page = $this->routes->getPage($route);
		$output = $this->loadTemplate('../templates/' . $page['template'],
		$page['variables']);
		$title = $page['title'];

		require '../templates/layout.html.php';
	}

	public function loadTemplate($fileName, $templateVars) {
		extract($templateVars);
		ob_start();
		require $fileName;
		$contents = ob_get_clean();
		return $contents;
	}
}