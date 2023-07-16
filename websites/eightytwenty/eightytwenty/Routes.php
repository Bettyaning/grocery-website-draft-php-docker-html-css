<?php
namespace eightytwenty;

class Routes implements \AS\Routes {
 public function getController($name) {
    require  '../pdo.php';

$productsTable = new \AS\databaseTable($pdo,'products', 'category_id');
$categoriesTable = new \AS\databaseTable($pdo,'category', 'category_id');
$usersTable = new \AS\databaseTable($pdo,'users', 'user_id');
$productsTable1 = new \AS\databaseTable($pdo,'products', 'product_id');
$orderproductsTable = new \AS\databaseTable($pdo,'order_products', 'order_id');
$ordersTable = new \AS\databaseTable($pdo,'orders', 'user_id');
$ordersTable1 = new \AS\databaseTable($pdo,'orders', 'order_id');
$reviewsTable = new \AS\databaseTable($pdo,'reviews', 'product_id');

$controllers = [];
$controllers['page'] = new \eightytwenty\Controller\MainSite($productsTable, $categoriesTable, $usersTable, $productsTable1, $orderproductsTable, $ordersTable, $reviewsTable);
$controllers['admin'] = new \eightytwenty\Controller\Admin($productsTable, $categoriesTable, $usersTable, $productsTable1, $orderproductsTable, $ordersTable, $ordersTable1);

return $controllers[$name];
 }

 public function getDefaultRoute() {
        return 'page/home';
        }

public function getLoginRoute() {
        return 'page/login';
        }

public function checkLogin($route) {
        session_start();
        $loginRoutes = [];

        if (!isset($_SESSION['access'])){
                $loginRoutes['page/basket'] = true;
                $loginRoutes['page/empty_basket'] = true;
                $loginRoutes['page/checkout'] = true;
                $loginRoutes['page/myaccount'] = true;
                $loginRoutes['admin/addproduct'] = true;
                $loginRoutes['admin/home'] = true;
                $loginRoutes['admin/error'] = true;
                $loginRoutes['admin/categories'] = true;
                $loginRoutes['admin/allproducts'] = true;
                $loginRoutes['admin/edit'] = true;
                $loginRoutes['admin/categories'] = true;
                $loginRoutes['admin/addcategory'] = true;
                $loginRoutes['admin/allproducts'] = true;
                $loginRoutes['admin/accounts'] = true;
                $loginRoutes['admin/addadmin'] = true;
                $loginRoutes['admin/orders'] = true;
                $loginRoutes['admin/fulfilled'] = true;
                
        }
        elseif ($_SESSION['access'] == 0){
                $loginRoutes['admin/addproduct'] = true;
                $loginRoutes['admin/home'] = true;
                $loginRoutes['admin/error'] = true;
                $loginRoutes['admin/categories'] = true;
                $loginRoutes['admin/allproducts'] = true;
                $loginRoutes['admin/edit'] = true;
                $loginRoutes['admin/categories'] = true;
                $loginRoutes['admin/addcategory'] = true;
                $loginRoutes['admin/allproducts'] = true;
                $loginRoutes['admin/accounts'] = true;
                $loginRoutes['admin/addadmin'] = true;
                $loginRoutes['admin/orders'] = true;
                $loginRoutes['admin/fulfilled'] = true;
                $loginRoutes['page/register'] = true;
                $loginRoutes['page/login'] = true;
        }

        $requiresLogin = $loginRoutes[$route] ?? false;
        
        if ($requiresLogin && !isset($_SESSION['loggedin']) && !isset($_SESSION['access'])) {
                header('location: /page/login');
                exit();
        }
        elseif ($requiresLogin && isset($_SESSION['loggedin']) && $_SESSION['access'] == 0)
        {
                header('location: /page/home');
                exit();
        }
        
        return $requiresLogin;
        return $_SESSION['loggedin'];
        return $_SESSION['access'];
}
}