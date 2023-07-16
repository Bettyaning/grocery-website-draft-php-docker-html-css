<?php
require '../header.php';

$server = 'mysql';
$username = 'student';
$password = 'student';
$schema = 'as1';

$pdo = new PDO('mysql:dbname=' . $schema . ';host=' . $server, $username, $password);

if (isset($_POST['submit'])) {
    $stmt = $pdo->prepare('INSERT INTO as1.auction (title, description, categoryID, endDate, currentBid)
                           VALUES (:title, :description, :categoryID, :endDate, :currentBid)');

    $values = [
        'title' => $_POST['title'],
        'description' => $_POST['description'],
        'categoryID' => $_POST['categoryID'],
        'endDate' => $_POST['endDate'],
        'currentBid' => $_POST['currentBid']
    ];

    $stmt ->execute($values);
        echo 'Auction Added';
}
else{
?>

<h2>Add Auction</h2>

<form action="addAuction.php" method="post">
    <label>Title:</label>
    <input type="text" name="title" />

    <label>Description:</label>
    <textarea name="description"></textarea>

    <label>Category:</label>
    <select name="categoryID">
        <?php
        $stmt = $pdo->prepare('SELECT * FROM as1.category');
        $stmt->execute();

        foreach ($stmt as $row) {
            echo '<option value="' . $row['categoryID'] . '">' . $row['name'] . '</option>';
        }
        
        ?>
    </select>

    <label>End Date:</label>
    <input type="date" name="endDate" />

    <label>Current Bid:</label>
    <input type="number" name="currentBid" />

    <input type="submit" value="Submit" name="submit" />
</form>

<?php
require '../footer.php';
        }
?>
