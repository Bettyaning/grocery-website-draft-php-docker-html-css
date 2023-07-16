<?php
require '../header.php';

?>
<?php

$server ='mysql';
$username = 'student';
$password = 'student';

$schema = 'as1';

$pdo = new PDO('mysql:dbname=' . $schema . ';host=' . $server, $username, $password);

    $stmt = $pdo-> prepare('DELETE FROM as1.auction
                            WHERE auctionID = :auctionID');


$values = [
    'auctionID' => $_GET['auctionID'],
];

$stmt ->execute($values);

echo 'Your Auction has been successfully deleted';

echo '<ul><a href="index.php"> Back to Homepage</a></ul>';
?>
<?php

require '../footer.php';
?>

