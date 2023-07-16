<?php
session_start();
require '../../functions/loadTemplate.php';
require '../../autoload.php';

unset($_SESSION['loggedin']);
unset($_SESSION['admin']);

$output = loadTemplate('../../templates/logout.html.php', [0]);

$title = 'Jo\'s Jobs - Admin Home';


require '../../templates/layout.html.php';
