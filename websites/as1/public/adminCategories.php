<?php
session_start();

// Check if admin is logged in, redirect to login page if not
if (!isset($_SESSION['admin']) || $_SESSION['admin'] !== true) {
    header("Location: login.php");
    exit;
}

require '../header.php';

?>

<?php
echo '<h2> <a href="addCategory.php"> Add Categories</a> </h2>';

$server = 'mysql';
$username = 'student';
$password = 'student';
$schema = 'as1';

$pdo = new PDO('mysql:dbname=' . $schema . ';host=' . $server, $username, $password);

$stmt = $pdo->prepare('SELECT * FROM as1.category');
$stmt->execute();

foreach ($stmt as $row) {
    echo '<h2>Product name: ' . $row['name'] . '</h2>';
    echo '<li><a href="editCategory.php?categoryID=' . $row['categoryID'] . '">' . 'Edit ' . $row['name'] . '</a></li>';
    echo '<li><a href="deleteCategory.php?categoryID=' . $row['categoryID'] . '">' . 'delete ' . $row['name'] . '</a></li>';
}

?>

<?php
require '../footer.php';
?>
