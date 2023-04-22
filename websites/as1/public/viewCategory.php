<?php
require '../header.php';

?>
<a href="addAuction.php">Add Auction</a>
<?php
if (isset($_GET['categoryId'])) {


$server ='mysql';
$username = 'student';
$password = 'student';

$schema = 'as1';

$pdo = new PDO('mysql:dbname=' . $schema . ';host=' . $server, $username, $password);

$categoryStmt = $pdo->prepare('SELECT * FROM as1.category WHERE categoryId = :categoryId');
$auctionStmt = $pdo->prepare('SELECT * FROM as1.auction WHERE categoryId = :categoryId');

$values = [
    'categoryId' => $_GET['categoryId']
];

$categoryStmt->execute($values);
$auctionStmt->execute($values);


$category = $categoryStmt->fetch();

echo '<h2>Category name: ' . $category['name'] . '</h2>';


echo '<ul>';

foreach ($auctionStmt as $auction){
    echo '<ul class="productList">';

    
   echo '<img src="product.png" alt="product name">';
   echo '<article>';
    echo '<h2>Product name: ' . $auction['title'].'</h2>';
    echo '<p>' . $auction['description'] . '</p>';

    echo '<time>Time left: ' . $auction['endDate'] . '</time>';
    echo '<li><a href="auction.php?id=' . $auction['id']. '">' . 'View Auction </a></li>';
    echo '<li><a href="editAuction.php?id=' . $auction['id']. '">' . 'Edit Auction </a></li>';
    echo '<li><a href="deleteAuction.php?id=' . $auction['id']. '">' . 'Delete Auction </a></li>';
    echo '</article>';

}
echo '</ul>';

}
?>



<?php

require '../footer.php';
?>