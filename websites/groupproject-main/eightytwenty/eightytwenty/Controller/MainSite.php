<?php
namespace eightytwenty\Controller;
class MainSite {

        private $productsTable;
       

        public function __construct($productsTable) {
            $this->productsTable = $productsTable;
        }

        public function faq() {
            $categories = $this->categoriesTable->findAll();
            return [
            'template' => 'faq.html.php',
            'title' => 'Jos Jobs - FAQ',
            'class' => 'home',
            'categories' => $categories,
            'variables' => [] 
                ];
        }

        public function about() {

            $categories = $this->categoriesTable->findAll();

            return [
            'template' => 'about.html.php',
            'title' => 'Jos Jobs - About',
            'class' => 'sidebar',
            'categories' => $categories,
            'variables' => [
                'categories' => $categories
            ] 
                ];
        }

    public function aboutSubmit() {

        $this->enquiryTable->save($_POST['enquiry']);

        header('location: /page/success');

        }

public function apply() {
            if (isset($_GET['id'])) {
            $jobid = $_GET['id'];
            $job = $this->jobsTable1->find($jobid);
            }
            $categories = $this->categoriesTable->findAll();
            return [
            'template' => 'apply.html.php',
            'title' => 'Jos Jobs - Application Form',
            'class' => 'sidebar',
            'categories' => $categories,
            'variables' => [
                'job' => $job[0]
            ]
                ];
        }

public function applySubmit(){
            $targetDirectory = "cvs/";
            $fileName = basename($_FILES["cv"]["name"]);
            $targetFilePath = $targetDirectory . $fileName;
            $extension = pathinfo($targetFilePath,PATHINFO_EXTENSION);
            $fileName = uniqid() . '.' . $extension;
            $allowTypes = ['pdf','docx','doc'];

            if(in_array($extension, $allowTypes)){
            
                $targetFilePath = $targetDirectory . $fileName;
                move_uploaded_file($_FILES['cv']['tmp_name'], $targetFilePath);
                
                $criteria = [
                    'name' => $_POST['applicants']['name'],
                    'email' => $_POST['applicants']['email'],
                    'details' => $_POST['applicants']['details'],
                    'jobId' => $_POST['applicants']['jobId'],
                    'cv' => $fileName
                ];
                
                $this->applicantsTable->save($criteria);
    
                header('location: /page/success');
            }
            else {
                echo 'There was an error uploading your CV. Please re-try!';
            }
        }

public function home(){
            //$products = $this->jobsTable1->orderby('closingDate');
            //$categories = $this->categoriesTable->findAll();

            return [
                'template' => 'home.html.php',
                'title' => 'Eighty Twenty',
                'class' => 'home',
                //'categories' => $categories,
                'variables' => [
                ]
                    ];
        }

public function success(){
                        
                        $categories = $this->categoriesTable->findAll();
            
                        return [
                            'template' => 'success.html.php',
                            'title' => 'Jos Jobs - Application successful',
                            'class' => 'home',
                            'categories' => $categories,
                            'variables' => [
                            ]
                                ];
        }



}