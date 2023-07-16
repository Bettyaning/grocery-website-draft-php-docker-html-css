<?php
namespace AS;

class EntryPoint {
    private $routes;
    public function __construct(\eightytwenty\Routes $routes) {
        $this->routes = $routes;
        }

public function run(){

    $route = ltrim(explode('?', $_SERVER['REQUEST_URI'])[0], '/');

    if ($route == '') {
        $route = $this->routes->getDefaultRoute();
    }
    else {
        $requiresLogin = $this->routes->checkLogin($route);
    if ($requiresLogin && !isset($_SESSION['loggedin'])) {
        $route = $this->routes->getLoginRoute();
    }
}

    list($controllerName, $functionName) = explode('/', $route);
    
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $functionName = $functionName . 'Submit';
            }
        $controller = $this->routes->getController($controllerName);
        $page = $controller->$functionName();

        if ($controllerName !== 'admin'){
            $output = $this->loadTemplate('../templates/' . $page['template'], $page['variables']);
            $title = $page['title'];
            $categories = $page['categories'];
            require  '../templates/layout.html.php';
        }
        else{
            $output = $this->loadTemplate('../templates/' . $page['template'], $page['variables']);
            $title = $page['title'];
            require  '../templates/admin_layout.html.php';
        }


}

function loadTemplate($fileName, $templateVars) {
    extract($templateVars);
    ob_start();
    require $fileName;
    $contents = ob_get_clean();
    return $contents;
    }
}
?>