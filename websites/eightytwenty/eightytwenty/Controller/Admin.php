<?php
namespace JosJobs\Controller;
class Admin {
    private $categoriesTable;
    private $jobsTable1;
    private $applicantsTable;
    private $usersTable;
    private $jobsTable;
    private $jobsTable3;
    private $enquiryTable;
    private $enquiryTable1;


public function __construct($categoriesTable, $jobsTable1, $applicantsTable, $usersTable, $jobsTable, $jobsTable3, $enquiryTable, $enquiryTable1) {
        $this->categoriesTable = $categoriesTable;
        $this->jobsTable1 = $jobsTable1;
        $this->applicantsTable = $applicantsTable;
        $this->usersTable = $usersTable;
        $this->jobsTable = $jobsTable;
        $this->jobsTable3 = $jobsTable3;
        $this->enquiryTable = $enquiryTable;
        $this->enquiryTable1 = $enquiryTable1;

    }

public function login($errors = []) {
        return [
        'template' => 'admin_home.html.php',
        'title' => 'Jos Jobs - Admin Login',
        'class' => 'sidebar',
        'categories' => '',
        'variables' => [
            'errors' => $errors
        ] 
            ];
        }

public function nopermission() {
            return [
            'template' => 'nopermission.html.php',
            'title' => 'Jos Jobs - No permission to access',
            'class' => 'sidebar',
            'categories' => '',
            'variables' => [] 
                ];
            }

public function logout() {
       
        if (isset($_SESSION['loggedin'])) {
			unset($_SESSION['loggedin']);
            unset($_SESSION['access']);
            unset($_SESSION['id']);
            header('location: /');
		}
        else {
            header('location: /admin/login');
        }
            }
    
public function loginSubmit() {
    $errors = $this->validateLogin($_POST['users']);
    if (count($errors) == 0) {
        $username = $_POST['users']['username'];
        $password = $_POST['users']['password'];

        $dbpassword = $this->usersTable->findWhere('password', 'username', $username);

        if (password_verify($password, $dbpassword[0])) {
            $_SESSION['loggedin'] = true;
            $dbaccess = $this->usersTable->findWhere('access', 'username', $username);
            if ($dbaccess[0] === 'Full') {
            $_SESSION['access'] = 1;
            }
            else {
                $_SESSION['access'] = 0;
            }
            $dbid = $this->usersTable->findWhere('id', 'username', $username);
            $_SESSION['id'] = $dbid[0];
            header('location: /admin/jobs');
                }
        else {
            header('location: /admin/login');
        }
    }
    else {
        return $this->login($errors);
    }
                    }
            
public function jobs($errors = []) {
        $categories = $this->categoriesTable->findAll();
        $applicants = $this->applicantsTable->findAll();
        if (isset($_GET['category'])) 
        {
            if ($_GET['category'] == 0)
            {
                header('location: /admin/jobs');
            }
            else {
            $jobs = $this->jobsTable->find($_GET['category']);
            }
        }
        else {
            if ($_SESSION['access'] == 0)
        {
            $jobs = $this->jobsTable3->find($_SESSION['id']);
        }
        else
        {
            $jobs = $this->jobsTable1->findAll();
        }
        }

                    return [
                    'template' => 'jobs.html.php',
                    'title' => 'Jos Jobs - Job list',
                    'class' => 'sidebar',
                    'categories' => '',
                    'variables' => [
                        'jobs' => $jobs,
                        'categories' => $categories,
                        'applicants' => $applicants,
                        'errors' => $errors
                    ] 
                        ];
                    }

    
public function addcategorySubmit() {
    $errors = $this->validateCategory($_POST['category']);
    if (count($errors) == 0) {
        $this->categoriesTable->save($_POST['category']);
        
        header('location: /admin/categories');
    }
    else
    {
        return $this->addcategory($errors);
    }
        }

public function addcategory($errors = []) {
        return [
        'template' => 'addcategory.html.php',
        'title' => 'Jos Jobs - Add Category',
        'class' => 'sidebar',
        'categories' => '',
        'variables' => [
            'errors' => $errors, 
        ] 
        ];
        }
public function editcategory() {
    
            if (isset($_GET['id'])) {
                $categoryid = $_GET['id'];
                $category = $this->categoriesTable->find($categoryid);
                }
                return [
                'template' => 'editcategory.html.php',
                'title' => 'Jos Jobs - Edit Category',
                'class' => 'sidebar',
                'categories' => '',
                'variables' => [
                 'category' => $category[0]
                ] 
                ];
                }
public function editcategorySubmit() {
    $errors = $this->validateCategory($_POST['category']);
    if (count($errors) == 0) {
            $this->categoriesTable->save($_POST['category']);
        header('location: /admin/categories');
                    }
                    else {
                        return $this->categories($errors);
                    }
                }

public function deletecategorySubmit() {

            $this->categoriesTable->delete($_POST['category']['id']);
            
            header('location: /admin/categories');
            }
    
public function deletejobSubmit() {

                $this->jobsTable1->delete($_POST['job']['id']);
                            
                header('location: /admin/jobs');
                }
    
public function archivejobSubmit() {
            $this->jobsTable1->save($_POST['job']);
                    header('location: /admin/jobs');
                    }

public function editjob() {

        $categories = $this->categoriesTable->findAll();

        if (isset($_GET['id'])) {

            $jobid = $_GET['id'];

            if ($_SESSION['access'] == 0)
        {
            $author = $this->jobsTable1->findS('authorId', $jobid);

            if ($_SESSION['id'] == $author[0]) {

                $job = $this->jobsTable1->find($jobid);
            }
            else{
            header('location: /admin/nopermission');
            }
        }
        else {

            $job = $this->jobsTable1->find($jobid);
        }
        
            return [
            'template' => 'editjob.html.php',
            'title' => 'Jos Jobs - Edit Job',
            'class' => 'sidebar',
            'categories' => '',
            'variables' => [
             'categories' => $categories,
             'job' => $job[0]
            ] 
            ];
            }
        }
public function editjobSubmit() {
    $errors = $this->validateJob($_POST['job']);
    if (count($errors) == 0) {
                $this->jobsTable1->save($_POST['job']);
                
                header('location: /admin/jobs');
                }
    else {
        return $this->jobs($errors);
    }
            }

public function addjob($errors = []) {
        $categories = $this->categoriesTable->findAll();
        return [
        'template' => 'addjob.html.php',
        'title' => 'Jos Jobs - Add Job',
        'class' => 'sidebar',
        'categories' => '',
        'variables' => [
        'categories' => $categories,
        'errors' => $errors
                    ] 
                ];
                        }
public function addjobSubmit() {
    $errors = $this->validateJob($_POST['job']);
    if (count($errors) == 0) {
                $this->jobsTable1->save($_POST['job']);
                            
                header('location: /admin/jobs');
    }
    else {
        return $this->addjob($errors);
    }
                            }

public function categories($errors = []) {
        $categories = $this->categoriesTable->findAll();
            
            return [
                        'template' => 'categories.html.php',
                        'title' => 'Jos Jobs - Categories',
                        'class' => 'sidebar',
                        'categories' => '',
                        'variables' => [
                         'categories' => $categories,
                         'errors' => $errors
                        ] 
                        ];
                        }

public function users($errors = []) {
        $users = $this->usersTable->findAll();
        
        return [
        'template' => 'users.html.php',
        'title' => 'Jos Jobs - Users',
        'class' => 'sidebar',
        'categories' => '',
        'variables' => [
            'users' => $users,
            'errors' => $errors
        ] 
            ];}
public function edituser() {
        if (isset($_GET['id'])) {
            $userid = $_GET['id'];
            $user = $this->usersTable->find($userid);
            }
            return [
            'template' => 'edituser.html.php',
            'title' => 'Jos Jobs - Edit User',
            'class' => 'sidebar',
            'categories' => '',
            'variables' => [
                'user' => $user[0]
            ] 
            ];
            }
public function edituserSubmit() {
    $errors = $this->validateUser($_POST['users']);
    if (count($errors) == 0) { 
            
            $criteria = [
                'id' => $_POST['users']['id'],
                'fullname' => $_POST['users']['fullname'],
                'company' => $_POST['users']['company'],
                'username' => $_POST['users']['username'],
                'password' => password_hash($_POST['users']['password'], PASSWORD_DEFAULT),
                'access' => $_POST['users']['access']
            ];

            $this->usersTable->save($criteria);

            header('location: /admin/users');
                }
    else{
        return $this->users($errors);
    }
            }

public function deleteuserSubmit() {

                $this->usersTable->delete($_POST['users']['id']);
                            
                header('location: /admin/users');
                }

public function adduser($errors = []) {
            
            return [
            'template' => 'adduser.html.php',
            'title' => 'Jos Jobs - Add User',
            'class' => 'sidebar',
            'categories' => '',
            'variables' => [
                'errors' => $errors
            ] 
                ];
                        }
public function adduserSubmit() {
    $errors = $this->validateUser($_POST['users']);
    if (count($errors) == 0) { 
        
            $criteria = [
                    'fullname' => $_POST['users']['fullname'],
                    'company' => $_POST['users']['company'],
                    'username' => $_POST['users']['username'],
                    'password' => password_hash($_POST['users']['password'], PASSWORD_DEFAULT),
                    'access' => $_POST['users']['access']
                ];

                $this->usersTable->save($criteria);

                header('location: /admin/users');

    }
    else {
        return $this->adduser($errors);
    }
                            }

public function applicants() {
            if (isset($_GET['id'])) 
                {
                $jobid = $_GET['id'];

                if ($_SESSION['access'] == 0)
                {
                    $author = $this->jobsTable1->findS('authorId', $jobid);
        
                    if ($_SESSION['id'] == $author[0]) {
        
                        $job = $this->jobsTable1->find($jobid);
                        $applicants = $this->applicantsTable->find($jobid);
                    }
                    else{
                    header('location: /admin/nopermission');
                    }
                }
                else {
                $job =  $this->jobsTable1->find($jobid);
                $applicants = $this->applicantsTable->find($jobid);
                }
                }
                        
                return [
                'template' => 'applicants.html.php',
                'title' => 'Jos Jobs - Applicants',
                'class' => 'sidebar',
                'categories' => '',
                'variables' => [
                'applicants' => $applicants,
                'job' => $job[0]
                ] 
                ];
                }

public function enquiries() {
        if (isset($_GET['status'])) 
        {
            $status = $_GET['status'];
            if ($_GET['status'] == 1)
            {
                $enquiries = $this->enquiryTable->find($status);
            }
            else 
            {
            $status = 0;
            $enquiries = $this->enquiryTable->find($status);

            }
        }
        else {
            $enquiries = $this->enquiryTable->findAll();
        }
            return [
            'template' => 'enquiries.html.php',
            'title' => 'Jos Jobs - Enquiries',
            'class' => 'sidebar',
            'categories' => '',
            'variables' => [
                    'enquiries' => $enquiries
                        ] 
                    ];
            }
public function enquiriesSubmit() {
                $this->enquiryTable1->save($_POST['enquiry']);
                
                header('location: /admin/enquiries?status=1');
                }


public function validateLogin($user) {
    $errors = [];
    if ($user['username'] == '') {
    $errors[] = 'You must enter a username';
    }
    if ($user['password'] == '') {
    $errors[] = 'You must enter a password';
    }
    return $errors;
    }
public function validateCategory($category) {
        $errors = [];
        if ($category['name'] == '') {
        $errors[] = 'You must enter a category name';
        }
        return $errors;
        }

public function validateJob($job) {
            $errors = [];
            if ($job['title'] == '') {
            $errors[] = 'You must enter a job title';
            }
            if ($job['description'] == '') {
                $errors[] = 'You must enter a job description';
                }
            if ($job['salary'] == '') {
                $errors[] = 'You must enter a salary';
                    }
            if ($job['closingDate'] == '') {
                $errors[] = 'You must select a closing date';
                        }
            if ($job['location'] == '') {
                $errors[] = 'You must enter a location';
                    }
            return $errors;
            }
public function validateUser($users) {
                $errors = [];
                if ($users['fullname'] == '') {
                $errors[] = 'You must enter a full name';
                }
                if ($users['company'] == '') {
                    $errors[] = 'You must enter a company';
                    }
                if ($users['username'] == '') {
                    $errors[] = 'You must enter a username';
                        }
                if ($users['password'] == '') {
                    $errors[] = 'You must enter a password';
                            }
                return $errors;
                }
}
    ?>