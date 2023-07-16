<?php

require '../../functions/loadTemplate.php';
require '../../autoload.php';
$pdo = new PDO('mysql:dbname=job;host=mysql', 'student', 'student');


$output = loadTemplate('../../templates/adminlogin.html.php', [0]);

$title = 'Jo\'s Jobs - Admin Home';


require '../../templates/layout.html.php';