<?php
require '../header.php';
?>


<?php

$server ='mysql';
$username = 'student';
$password = 'student';

$schema = 'as1';

$pdo = new PDO('mysql:dbname=' . $schema . ';host=' . $server, $username, $password);

$stmt = $pdo->prepare('SELECT * FROM as1.auction WHERE auctionID = :auctionID');

$values = [
    'auctionID' => $_GET['auctionID']
];


$stmt->execute($values);

$row = $stmt->fetch();


echo '<h1>' . $row['title'] . '</h1>';
echo '<br>' . '</br>';

echo '<p>' . $row['description']  . '</p>';



echo '<br>' . '</br>';

echo '<p>Ende Date ' . $row['endDate']  . '</p>';
echo '<br>' . '</br>';

echo '<li><a href="editAuction.php?auctionID=' . $row['auctionID'] . '">' . 'Edit Auction' . '</a></li>';
echo '<li><a href="deleteAuction.php?auctionID=' . $row['auctionID'] . '">' . 'Delete Auction' . '</a></li>';



?>


<?php
require '../footer.php';
?>
