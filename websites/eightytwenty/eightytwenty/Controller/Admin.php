<?php
namespace eightytwenty\Controller;
class Admin {

        private $productsTable;
        private $categoriesTable;
        private $usersTable;
        private $productsTable1;
        private $orderproductsTable;
        private $ordersTable;
        private $ordersTable1;

        public function __construct($productsTable, $categoriesTable, $usersTable, $productsTable1, $orderproductsTable, $ordersTable, $ordersTable1) {
            $this->productsTable = $productsTable;
            $this->categoriesTable = $categoriesTable;
            $this->usersTable = $usersTable;
            $this->productsTable1 = $productsTable1;
            $this->orderproductsTable = $orderproductsTable;
            $this->ordersTable = $ordersTable;
            $this->ordersTable1 = $ordersTable1;
        }

        public function home() {
            $categories = $this->categoriesTable->findAll();
            $selected_categories = $this->categoriesTable->limit();
            $products = $this->productsTable1->limit();

              return [
              'template' => 'admin_home.html.php',
              'title' => 'Eighty Twenty - Admin',
              'variables' => [
                'selected_categories' => $selected_categories,
                'products' => $products
              ] 
                  ];
          }


        public function allproducts() {
            $categories = $this->categoriesTable->findAll();
            $products = $this->productsTable->findAll();

            return [
            'template' => 'admin_allproducts.html.php',
            'title' => 'Eighty Twenty - All products',
            'variables' => [
                'products' => $products
            ] 
                ];
        }

        public function categories() {
            $categories = $this->categoriesTable->findAll();

            return [
            'template' => 'categories.html.php',
            'title' => 'Eighty Twenty - Categories',
            'variables' => [
                'categories' => $categories
            ] 
                ];
        }

        public function error() {
            $error = isset($_GET['error']) ? $_GET['error'] : '';

            return [
            'template' => 'error.html.php',
            'title' => 'Eighty Twenty - Error',
            'variables' => [
                'error' => $error
            ] 
                ];
        }

        public function deletecategorySubmit() {

            $products = $this->productsTable->find($_POST['id']);
            if (empty($products)){
                $this->categoriesTable->delete($_POST['id']);
                header('location: /admin/categories');
            }
            else{
                $error = 'Category can not be deleted if there is stock linked to the category. If you still wish to delete, remove the stock first.';
header('location: /admin/error?error=' . urlencode($error));

            }
        }

        public function edit() {

                $product_id = $_GET['id'];

                $product = $this->productsTable1->find($product_id);
                $categories = $this->categoriesTable->findAll();

            
                return [
                'template' => 'edit.html.php',
                'title' => 'Eighty Twenty - Edit',
                'variables' => [
                 'product' => $product[0],
                 'categories' => $categories

                ] 
                ];
                }

                public function editSubmit() {
                        
                        $this->productsTable1->save($_POST['products']);
            
                        header('location: /admin/allproducts');

                }

                public function deleteSubmit() {
                    
                    $this->productsTable1->delete($_POST['id']);
        
                    header('location: /admin/allproducts');

            }

            public function addcategory() {
            
                return [
                'template' => 'addcategory.html.php',
                'title' => 'Eighty Twenty - Add category',
                'variables' => [

                ] 
                ];
                }

            public function addcategorySubmit() {
                        
                $this->categoriesTable->save($_POST['category']);
    
                header('location: /admin/categories');

        }

        public function product() {
            $categories = $this->categoriesTable->findAll();

            $product = $this->productsTable1->find($_GET['id']);

            return [
            'template' => 'product.html.php',
            'title' => 'Eighty Twenty - Sign In',
            'variables' => [
                'product' => $product[0]
            ] 
                ];
        }


        public function addadmin() {

            
            return [
            'template' => 'addadmin.html.php',
            'title' => 'Eighty Twenty - Add admin',
            'variables' => [
            ] 
                ];
        }

        public function addadminSubmit() {
                        
            $this->usersTable->save($_POST['users']);

            header('location: /admin/accounts');

    }

    public function accounts() {

        $users = $this->usersTable->findAll();
            
        return [
        'template' => 'accounts.html.php',
        'title' => 'Eighty Twenty - Accounts',
        'variables' => [
            'users' => $users
        ] 
            ];
    }

        public function addproduct() {

            $categories = $this->categoriesTable->findAll();

            return [
            'template' => 'addproduct.html.php',
            'title' => 'Eighty Twenty - Add product',
            'variables' => [
                'categories' => $categories
            ] 
                ];
        }

        public function addproductSubmit() {
            
            $targetDirectory = "images/";
            $fileName = basename($_FILES["picture"]["name"]);
            $targetFilePath = $targetDirectory . $fileName;
            $extension = pathinfo($targetFilePath,PATHINFO_EXTENSION);
            $fileName = uniqid() . '.' . $extension;
            $allowTypes = ['png','jpg','jpeg'];

            if(in_array($extension, $allowTypes)){
            
                $targetFilePath = $targetDirectory . $fileName;
                move_uploaded_file($_FILES['picture']['tmp_name'], $targetFilePath);
                
                $criteria = [
                    'title' => $_POST['products']['title'],
                    'description' => $_POST['products']['description'],
                    'nutrition' => $_POST['products']['nutrition'],
                    'category_id' => $_POST['products']['category_id'],
                    'price' => $_POST['products']['price'],
                    'qty' => $_POST['products']['qty'],
                    'batch' => $_POST['products']['batch'],
                    'picture' => $fileName
                ];
                
                $this->productsTable->save($criteria);
    
                header('location: /admin/allproducts');
            }
            else {
                echo 'There was an error uploading the image. Please re-try!';
            }
        }

        public function orders() {

            $categories = $this->categoriesTable->findAll();

            $orders = $this->ordersTable->findAllWhere2('status', 'Cancelled', 'Completed');
            $products = array();
            $quantities = array();
        
            foreach ($orders as $order) {
                $product_ids = $this->orderproductsTable->find($order->order_id);
        
                foreach ($product_ids as $product_id) {
                    $product = $this->productsTable1->find($product_id->product_id);
                    $products[$order->order_id][] = $product[0];
                    $quantities[$product_id->product_id] = $product_id->quantity;
                }
            }

            return [
            'template' => 'orders.html.php',
            'title' => 'Eighty Twenty - Order management',
            'variables' => [
                'orders' => $orders,
                    'products' => $products,
                    'quantities' => $quantities
            ] 
                ];
        }

        public function fulfilled() {

            $orders = $this->ordersTable->findAllWhere3('status', 'Cancelled', 'Completed');
            $products = array();
            $quantities = array();
        
            foreach ($orders as $order) {
                $product_ids = $this->orderproductsTable->find($order->order_id);
        
                foreach ($product_ids as $product_id) {
                    $product = $this->productsTable1->find($product_id->product_id);
                    $products[$order->order_id][] = $product[0];
                    $quantities[$product_id->product_id] = $product_id->quantity;
                }
            }

            return [
            'template' => 'fulfilled.html.php',
            'title' => 'Eighty Twenty - Fulfilled orders',
            'variables' => [
                'orders' => $orders,
                    'products' => $products,
                    'quantities' => $quantities
            ] 
                ];
        }

        public function changestatusSubmit() {
                        
            $this->ordersTable1->save($_POST['orders']);

            header('location: /admin/orders');

    }


    public function logout() {
       
                    if (isset($_SESSION['loggedin'])) {
                        unset($_SESSION['loggedin']);
                        unset($_SESSION['access']);
                        unset($_SESSION['basket']);
                        unset($_SESSION['user']);
                        header('location: /page/home');
                    }
                    else {
                        header('location: /page/login');
                    }
                        }

}
?>