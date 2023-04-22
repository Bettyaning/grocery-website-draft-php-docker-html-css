<?php
namespace AS;
interface Routes {
 public function getController($name);
 
 public function getDefaultRoute();
 public function getLoginRoute();
//The new function should be added to the interface so that each website must provide it
 public function checkLogin($route);
 
}