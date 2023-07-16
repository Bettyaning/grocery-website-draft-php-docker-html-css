<?php
require '../header.php';




if (isset($_GET['categoryID'])){

$server = 'mysql';
$username = 'student';
$password = 'student';
$schema = 'as1';

$pdo = new PDO('mysql:dbname=' . $schema . ';host=' . $server, $username, $password);

$AuctionStmt = $pdo->prepare('SELECT * FROM as1.auction WHERE categoryID = :categoryID');
$CategoryStmt = $pdo->prepare('SELECT * FROM as1.category WHERE categoryID = :categoryID');

$values = [
    'categoryID' => $_GET['categoryID']
];

$CategoryStmt->execute($values);
$AuctionStmt->execute($values);

$Category = $CategoryStmt->fetch();

echo '<h1>' . $Category['name'] . '</h1>';

echo '<ul>';
foreach ($AuctionStmt as $Auction){
    echo '<ul class="productList">';

    echo '<li>';
    
   echo '<img src="product.png" alt="product name">';
   echo '<article>';
    echo '<h2>' . $Auction['title'] . '</h2>';
    echo '<br>' . '</br>';
    echo '<p>' . $Auction['description'] . '</p>';
    echo '<br>' . '</br>';
    echo '<p> End Date: ' . $Auction['endDate'] . '</p>';
echo '</li>';
echo '<li><a href="editAuction.php?auctionID=' . $Auction['auctionID'] . '">' . 'Edit Auction' . '</a></li>';

echo '<li><a href="auction.php?auctionID=' . $Auction['auctionID'] . '">' . 'View Auction'. '</a></li>';


}

echo '</ul>';


}
        ?>

<?php
require '../footer.php';
?>
