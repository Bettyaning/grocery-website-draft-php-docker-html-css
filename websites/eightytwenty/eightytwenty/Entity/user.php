<?php
namespace JosJobs\Entity;
class User {
    public $usersTable;

    public $id;
    public $name;
    public $email;
    public $phone;
    public $details;
    public $status;
    public $employeeId;

    public function __construct(\AS2\DatabaseTable $usersTable) {
        $this->usersTable = $usersTable;
    }
    public function getUser() {
        
        return $this->usersTable->find($this->employeeId)[0];
    }
}