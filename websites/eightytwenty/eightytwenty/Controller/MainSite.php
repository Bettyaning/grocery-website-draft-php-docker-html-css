<?php
namespace eightytwenty\Controller;
class MainSite {

        private $productsTable;
        private $categoriesTable;
        private $usersTable;
        private $productsTable1;
        private $orderproductsTable;
        private $ordersTable;
        private $reviewsTable;

        public function __construct($productsTable, $categoriesTable, $usersTable, $productsTable1, $orderproductsTable, $ordersTable, $reviewsTable) {
            $this->productsTable = $productsTable;
            $this->categoriesTable = $categoriesTable;
            $this->usersTable = $usersTable;
            $this->productsTable1 = $productsTable1;
            $this->orderproductsTable = $orderproductsTable;
            $this->ordersTable = $ordersTable;
            $this->reviewsTable = $reviewsTable;
        }

        public function home() {
            $categories = $this->categoriesTable->findAll();
            $selected_categories = $this->categoriesTable->limit();
            $products = $this->productsTable1->limit();

              return [
              'template' => 'home.html.php',
              'title' => 'Eighty Twenty - Home',
              'categories' => $categories,
              'variables' => [
                'selected_categories' => $selected_categories,
                'products' => $products
              ] 
                  ];
          }
          
          public function faq() {
            $categories = $this->categoriesTable->findAll();

              return [
              'template' => 'faq.html.php',
              'title' => 'Eighty Twenty - About Us',
              'categories' => $categories,
              'variables' => [

              ] 
                  ];
          }

          public function article() {
            $categories = $this->categoriesTable->findAll();

              return [
              'template' => 'article.html.php',
              'title' => 'Eighty Twenty - Blog',
              'categories' => $categories,
              'variables' => [

              ] 
                  ];
          }

          public function myaccount() {
            $categories = $this->categoriesTable->findAll();
            $user = $this->usersTable->find($_SESSION['user']);

            $orders = $this->ordersTable->find($_SESSION['user']);
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
                'template' => 'myaccount.html.php',
                'title' => 'Eighty Twenty - My Account',
                'categories' => $categories,
                'variables' => [
                    'orders' => $orders,
                    'products' => $products,
                    'user' => $user[0],
                    'quantities' => $quantities
                ] 
            ];
        }

        public function changeaccountdetails() {
            $categories = $this->categoriesTable->findAll();

            $user = $this->usersTable->find($_SESSION['user']);

              return [
              'template' => 'changeaccountdetails.html.php',
              'title' => 'Eighty Twenty - Change details',
              'categories' => $categories,
              'variables' => [
                'user' => $user[0]
              ] 
                  ];
          }

          public function changeaccountdetailsSubmit() {
                        
            $this->usersTable->save($_POST['users']);

            header('location: /page/myaccount');

    }

    public function leavereviewSubmit() {
                        
        $this->reviewsTable->save($_POST['reviews']);
        if (isset($_SERVER['HTTP_REFERER'])) {
            header('Location: ' . $_SERVER['HTTP_REFERER']);
        } else {
            header('Location: /page/myaccount');
        }

}

    public function forgotpassword() {
        $categories = $this->categoriesTable->findAll();

          return [
          'template' => 'forgotpassword.html.php',
          'title' => 'Eighty Twenty - Password reset',
          'categories' => $categories,
          'variables' => [
          ] 
              ];
      }

      public function forgotpasswordSubmit() {
        $categories = $this->categoriesTable->findAll();

        $user = $this->usersTable->findAnd($_POST['users']['username'], $_POST['users']['dob'], 'username', 'dob');

          if (empty($user)) {

            header('location: /page/forgotpassword');

          } else {

            return [
                'template' => 'reset.html.php',
                'title' => 'Eighty Twenty - Password reset',
                'categories' => $categories,
                'variables' => [
                    'user' => $user[0]
                ] 
                    ];

          }

      }

      public function resetSubmit() {
        $categories = $this->categoriesTable->findAll();

        $criteria = [
            'user_id' => $_POST['users']['user_id'],
            'password' => password_hash($_POST['users']['password'], PASSWORD_DEFAULT)
        ];

        $this->usersTable->save($criteria);
        header('location: /page/login');
      }
        
        
        public function category() {
            $categories = $this->categoriesTable->findAll();
            
            $products = $this->productsTable->find($_GET['id']);
            $selected_category = $this->categoriesTable->find($_GET['id']);
            $category_name = $this->categoriesTable->findName($_GET['id']);


            return [
            'template' => 'category.html.php',
            'title' => 'Eighty Twenty - ' . $category_name[0],
            'categories' => $categories,
            'variables' => [
                'selected_category' => $selected_category[0],
                'products' => $products
            ] 
                ];
        }

        public function checkout() {
            $categories = $this->categoriesTable->findAll();
            $user = $this->usersTable->find($_SESSION['user']);
            $basket = $_SESSION['basket'];
           // Initialize two empty arrays
$products = array();
$quantities = array();

foreach ($basket as $product_id => $item) {
    $quantity = is_array($item) ? $item['quantity'] : 1;

    $product = $this->productsTable1->find($product_id);

    // Add the product to the $products array and the quantity to the $quantities array
    $products[] = $product[0];
    $quantities[] = $quantity;
}

// Return the two arrays as part of the variables array
return [
    'template' => 'checkout.html.php',
    'title' => 'Eighty Twenty - Basket',
    'categories' => $categories,
    'variables' => [
        'products' => $products,
        'quantities' => $quantities,
        'user' => $user[0]
    ]
];
        }

        public function basket() {

            $categories = $this->categoriesTable->findAll();
          
            $basket = $_SESSION['basket'];
        
            // Check if the basket is empty
            if (!empty($basket)) {
                // Initialize two empty arrays
                $products = array();
                $quantities = array();
        
                foreach ($basket as $product_id => $item) {
                    $quantity = is_array($item) ? $item['quantity'] : 1;
        
                    $product = $this->productsTable1->find($product_id);
        
                    // Add the product to the $products array and the quantity to the $quantities array
                    $products[] = $product[0];
                    $quantities[] = $quantity;
                }
        
                // Return the two arrays as part of the variables array
                return [
                    'template' => 'basket.html.php',
                    'title' => 'Eighty Twenty - Basket',
                    'categories' => $categories,
                    'variables' => [
                        'products' => $products,
                        'quantities' => $quantities
                    ]
                ];
            } else {
                // Handle the case when the basket is empty
                header('location: /page/emptybasket');
                exit;
            }
        }
        
        public function emptybasket() {
            $categories = $this->categoriesTable->findAll();
    
            return [
                'template' => 'empty_basket.html.php',
                'title' => 'Eighty Twenty - Basket',
                'categories' => $categories,
                'variables' => [
                ]
            ];
          }
        

        public function updatebasketSubmit() {
            $product_id = $_POST['product_id'];
            $new_quantity = $_POST['new_quantity'];
        
            // Update the quantity for the product in the basket
            if (isset($_SESSION['basket'][$product_id])) {
                $_SESSION['basket'][$product_id]['quantity'] = $new_quantity;
            }
        
            // Redirect back to the basket page
            header('location: /page/basket');
        }
        

public function removeSubmit() {

    $product_id = $_POST['product_id'];
    
    // Check if the product is in the basket
    if (isset($_SESSION['basket'][$product_id])) {
        // Remove the product from the basket
        unset($_SESSION['basket'][$product_id]);
    }
    
    // Redirect back to the basket page
    header('location: /page/basket');

        }

        public function login() {
            $categories = $this->categoriesTable->findAll();

            return [
            'template' => 'login.html.php',
            'title' => 'Eighty Twenty - Sign In',
            'categories' => $categories,
            'variables' => [
            ] 
                ];
        }

        

        public function register() {
            $categories = $this->categoriesTable->findAll();

            return [
            'template' => 'register.html.php',
            'title' => 'Eighty Twenty - Register',
            'categories' => $categories,
            'variables' => [
            ] 
                ];
        }

        public function allproducts() {
            $categories = $this->categoriesTable->findAll();
            $products = $this->productsTable->findAll();

            return [
            'template' => 'allproducts.html.php',
            'title' => 'Eighty Twenty - All products',
            'categories' => $categories,
            'variables' => [
                'products' => $products
            ] 
                ];
        }

        public function product() {
            $categories = $this->categoriesTable->findAll();

            $product = $this->productsTable1->find($_GET['id']);
            $reviews = $this->reviewsTable->find($_GET['id']);
            $users = array();

            foreach ($reviews as $review) {
                $userId = $review->user_id;
                $user = $this->usersTable->find($userId);
                $users[$review->review_id] = $user[0];
            }

            return [
            'template' => 'product.html.php',
            'title' => 'Eighty Twenty',
            'categories' => $categories,
            'variables' => [
                'product' => $product[0],
                'reviews' => $reviews,
                'users' => $users
            ] 
                ];
        }

        public function search() {
            $categories = $this->categoriesTable->findAll();

            $search = $_GET['search'];
            $search_result = '%' . $_GET['search'] .'%';

            $products = $this->productsTable1->search('title', 'description', $search_result);

            return [
            'template' => 'search.html.php',
            'title' => 'Eighty Twenty - Search',
            'categories' => $categories,
            'variables' => [
                'search' => $search,
                'products' => $products
            ] 
                ];
        }


        public function basketSubmit() {
                $product_id = $_POST['product_id'];
                
                if (isset($_SESSION['loggedin'])) {

                    if (isset($_SESSION['basket'][$product_id])) {
                        // Check if the basket item is an array
                        if (is_array($_SESSION['basket'][$product_id])) {
                            // Increment the quantity if the product is already in the basket
                            $_SESSION['basket'][$product_id]['quantity']++;
                        } else {
                            // Set the basket item as a new array with quantity 1
                            $_SESSION['basket'][$product_id] = array(
                                'product_id' => $product_id,
                                'quantity' => 1
                            );
                        }
                    } else {
                        // Add the product to the basket with quantity 1
                        $_SESSION['basket'][$product_id] = array(
                            'product_id' => $product_id,
                            'quantity' => 1
                        );
                    }
                        header('location: /page/basket');
                    }
               
        }

    public function registerSubmit() {
        $criteria = [
                                'username' => $_POST['users']['username'],
                                'full_name' => $_POST['users']['full_name'],
                                'dob' => $_POST['users']['dob'],
                                'password' => password_hash($_POST['users']['password'], PASSWORD_DEFAULT),
                                'access' => $_POST['users']['access']
                            ];
            
                            $this->usersTable->save($criteria);
            
                            header('location: /page/login');
                }

        public function loginSubmit() {
                    $username = $_POST['users']['username'];
                    $password = $_POST['users']['password'];
            
                    $dbpassword = $this->usersTable->findWhere('password', 'username', $username);
            
                    if (password_verify($password, $dbpassword[0])) {
                        $_SESSION['loggedin'] = true;
                        $dbaccess = $this->usersTable->findWhere('access', 'username', $username);
                        if ($dbaccess[0] == 1) {
                        $_SESSION['access'] = 1;
                        }
                        else {
                            $_SESSION['access'] = 0;
                        }
                        $dbid = $this->usersTable->findWhere('user_id', 'username', $username);
                        $_SESSION['user'] = $dbid[0];

                        if ($_SESSION['access'] == 1){
                        header('location: /admin/home');
                        }
                        else{
                            header('location: /page/home');
                        }
                            }
                    else {
                        header('location: /page/login');
                    }
                }

                public function checkoutSubmit() {

                    $this->ordersTable->save($_POST['orders']);

                    $order = $this->ordersTable->last('order_id', 'order_id');

                    $basket = $_SESSION['basket'];
        
                    $products = array();
                    $quantities = array();
                    
                    foreach ($basket as $product_id => $item) {
    $quantity = is_array($item) ? $item['quantity'] : 1;

    $products[] = $product_id;
    $quantities[] = $quantity;
    $order_id = $order[0];
}

foreach ($products as $index => $product) { 

    $criteria = [
        'order_id' => $order_id,
        'product_id' => $product,
        'quantity' => $quantities[$index]
    ];

    $this->orderproductsTable->insert($criteria);
                    
                }
                unset($_SESSION['basket']);
                header('location: /page/myaccount');
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