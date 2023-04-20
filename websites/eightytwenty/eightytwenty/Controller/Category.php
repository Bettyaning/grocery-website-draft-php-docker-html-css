<?php
namespace JosJobs\Controller;
class Category {

    private $categoriesTable;
    private $jobsTable;
    private $jobsTable2;

        public function __construct($categoriesTable, $jobsTable, $jobsTable2) {
            $this->categoriesTable = $categoriesTable;
            $this->jobsTable = $jobsTable;
            $this->jobsTable2 = $jobsTable2;

        }

    public function category(){
        if (isset($_GET['location'])) {
            $joblocation = $_GET['location'];
            if ($joblocation == 0)
            {
                $jobs = $this->jobsTable->find($_GET['id']);
            }
            else {
                $jobs = $this->jobsTable2->find($joblocation);
            }
            $categories = $this->categoriesTable->findAll();
            $selected_category = $this->categoriesTable->find($_GET['id']);
            $category_name = $this->categoriesTable->findName($_GET['id']);
            $locations = $this->jobsTable->findLocation($_GET['id']);
            }
        else {
        $categories = $this->categoriesTable->findAll();
        $selected_category = $this->categoriesTable->find($_GET['id']);
        $date = new \DateTime();
        $jobs = $this->jobsTable->find($_GET['id']);
        $category_name = $this->categoriesTable->findName($_GET['id']);
        $locations = $this->jobsTable->findLocation($_GET['id']);
        }

        return [.
            'template' => 'category.html.php',
            'title' => 'Jos Jobs - ' . $category_name[0],
            'class' => 'sidebar',
            'categories' => $categories,
            'variables' => [
                'categories' => $categories,
                'locations' => $locations,
                'selected_category' => $selected_category[0],
                'jobs' => $jobs
            ] 
                ];
    }
}