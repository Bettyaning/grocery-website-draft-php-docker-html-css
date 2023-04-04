<?php
namespace JosJobs\Entity;
class Category {
    public $categoriesTable;

    public $id;
    public $title;
    public $description;
    public $salary;
    public $closingDate;
    public $categoryId;
    public $location;
    public $status;

    public function __construct(\AS2\DatabaseTable $categoriesTable) {
        $this->categoriesTable = $categoriesTable;
    }
    public function getJobCategory() {
        
        return $this->categoriesTable->find($this->categoryId)[0];
    }
}