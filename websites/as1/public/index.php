<?php
require '../header.php';
?>

<?php
$server = 'mysql';
$username = 'student';
$password = 'student';
$schema = 'as1';

$pdo = new PDO('mysql:dbname=' . $schema . ';host=' . $server, $username, $password);

$stmt = $pdo->prepare('SELECT * FROM as1.auction ORDER BY endDate ASC LIMIT 10');
$stmt->execute();

foreach ($stmt as $row) {
    echo '<ul class="productList">';
    echo '<li>';
    echo '<img src="product.png" alt="product name">';
    echo '<article>';
    echo '<h2>Product name: ' . $row['title'] . '</h2>';
    echo '<p>' . $row['description'] . '</p>';
    echo '<time>Time left: ' . $row['endDate'] . '</time>';
    echo '</article>';
    echo '</li>';
    echo '</ul>';
    echo '<li><a href="editAuction.php?auctionID=' . $row['auctionID'] . '">' . 'Edit Auction' . '</a></li>';
    echo '<li><a href="auction.php?auctionID=' . $row['auctionID'] . '">' . 'View Auction'. '</a></li>';

}

if (isset($_POST['submit'])) {
    $Reviewstmt = $pdo->prepare('INSERT INTO as1.review(email, message, date) VALUES (:email, :message, :date)');

    $ReviewValues = [
        'email' => $_POST['email'],
        'message' => $_POST['reviewtext'],
        'date' => date('Y-m-d H:i:s'), // Use current date and timea
    ];

    $Reviewstmt->execute($ReviewValues);

    echo 'Review has been added';
    echo '<a href="index.php"> Back to home</a>';
} else {
    ?>
    <form method="POST"> <!-- Add method="POST" to send form data -->
        <label>Email</label>
        <input type="email" name="email" />
        <label>Add your review</label>
        <textarea name="reviewtext"></textarea>
        <input type="submit" name="submit" value="Add Review" />
    </form>
    <?php
}
?>

<?php
require '../footer.php';
?>
