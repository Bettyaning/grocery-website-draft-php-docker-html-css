<?php
namespace eightytwenty;

class Routes implements \AS\Routes {
 public function getController($name) {
    require  '../pdo.php';

$productsTable = new \AS\databaseTable($pdo,'products', 'id');
$categoriesTable = new \AS\databaseTable($pdo,'categories', 'id');

$controllers = [];
$controllers['page'] = new \eightytwenty\Controller\MainSite($productsTable);

return $controllers[$name];
 }

public function getDefaultRoute() {
    return 'page/home';
    }

public function getLoginRoute() {
        return 'admin/login';
        }

public function checkLogin($route) {
        session_start();
        $loginRoutes = [];

        if (!isset($_SESSION['access'])){
        $loginRoutes['admin/jobs'] = true;
        $loginRoutes['admin/addjob'] = true;
        $loginRoutes['admin/addcategory'] = true;
        $loginRoutes['admin/editjob'] = true;
        $loginRoutes['admin/editcategory'] = true;
        $loginRoutes['admin/categories'] = true;
        $loginRoutes['admin/applicants'] = true;
        $loginRoutes['admin/editjob'] = true;
        $loginRoutes['admin/edituser'] = true;
        $loginRoutes['admin/deleteuser'] = true;
        $loginRoutes['admin/adduser'] = true;
        $loginRoutes['admin/users'] = true;
        $loginRoutes['admin/applicants'] = true;
        $loginRoutes['admin/enquiries'] = true;
        }
        elseif ($_SESSION['access'] === 0){
        $loginRoutes['admin/users'] = true;
        $loginRoutes['admin/addcategory'] = true;
        $loginRoutes['admin/editcategory'] = true;
        $loginRoutes['admin/deleteuser'] = true;
        $loginRoutes['admin/edituser'] = true;
        $loginRoutes['admin/adduser'] = true;
        $loginRoutes['admin/categories'] = true;
        $loginRoutes['admin/enquiries'] = true;
        }

        $requiresLogin = $loginRoutes[$route] ?? false;
        
        if ($requiresLogin && !isset($_SESSION['loggedin']) && !isset($_SESSION['access'])) {
                header('location: /admin/login');
                exit();
        }
        elseif ($requiresLogin && isset($_SESSION['loggedin']) && $_SESSION['access'] == 0)
        {
                header('location: /admin/nopermission');
                exit();
        }
        
        return $requiresLogin;
        return $_SESSION['loggedin'];
        return $_SESSION['access'];
}
}