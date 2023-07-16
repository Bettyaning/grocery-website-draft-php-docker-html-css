<?php
require '../header.php';
?>

<?php
$server = 'mysql';
$username = 'student';
$password = 'student';
$schema = 'as1';

$pdo = new PDO('mysql:dbname=' . $schema . ';host=' . $server, $username, $password);

if (isset($_POST['submit'])) {
    $stmt = $pdo->prepare('UPDATE as1.category
                           SET name = :name
                           WHERE categoryID = :categoryID');

    $values = [
        'name' => $_POST['name'],
        'categoryID' => $_POST['categoryID'],
    ];

    $stmt->execute($values);

    echo '<p>' . $_POST['name'] . ' Category has been successfully EDITED</p>';
    echo '<a href="adminCategories.php">Back to Categories</a>';
} elseif (isset($_GET['categoryID'])) {
    $CategoryStmt = $pdo->prepare('SELECT * FROM as1.category WHERE categoryID = :categoryID');

    $values = [
        'categoryID' => $_GET['categoryID'],
    ];

    $CategoryStmt->execute($values);
    $Category = $CategoryStmt->fetch();
    ?>

    <form action="editCategory.php" method="POST">
        <input type="hidden" name="categoryID" value="<?php echo $Category['categoryID']; ?>" />

        <label>Category name</label>
        <input type="text" name="name" value="<?php echo $Category['name']; ?>" />

        <input type="submit" value="Submit" name="submit" />
    </form>

    <?php
}
?>

<?php
require '../footer.php';
?>
