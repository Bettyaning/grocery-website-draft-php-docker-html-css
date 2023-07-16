<?php
namespace AS;
interface Routes {
 public function getController($name);
 
 public function getDefaultRoute();
 public function getLoginRoute();
 public function checkLogin($route);
 
}

?>