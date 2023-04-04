<?php
require '../header.php';
?>


<?php

$server ='mysql';
$username = 'student';
$password = 'student';

$schema = 'as1';

$pdo = new PDO('mysql:dbname=' . $schema . ';host=' . $server, $username, $password);

$stmt = $pdo->prepare('SELECT * FROM as1.auction WHERE id = :id');

$values = [
    'id' => $_GET['id']
];


$stmt->execute($values);

$row = $stmt->fetch();


echo '<h1>' . $row['title'] . '</h1>';
echo '<p>' . $row['description']  . '</p>';




echo '<p>Ende Date ' . $row['endDate']  . '</p>';

?>


<?php
require '../footer.php';
?>
