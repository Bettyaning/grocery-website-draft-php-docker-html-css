<?php
require '../header.php';

?>
<?php

$server ='mysql';
$username = 'student';
$password = 'student';

$schema = 'as1';

$pdo = new PDO('mysql:dbname=' . $schema . ';host=' . $server, $username, $password);

if (isset($_POST['submit'])) {
    $stmt = $pdo-> prepare('UPDATE as1.category
                                SET name = :name, categoryId = :categoryId
                                WHERE categoryId = :categoryId');


$values = [
    'name' => $_POST['name'],
    'categoryId' => $_POST['categoryId'],
    
];

$stmt ->execute($values);

echo ' <p>' . $_POST['name'] . ' Category has been successfully EDITED </p>';

echo '<a href="adminCategories.php"> Back to Categories</a>';

}




else if(isset($_GET['categoryId'])) {

$CategoryStmt = $pdo->prepare('SELECT * FROM as1.category WHERE categoryId = :categoryId');



$values = [
    'categoryId' => $_GET['categoryId']
    
];


$CategoryStmt->execute($values);

$Category = $CategoryStmt->fetch();

    ?>
<form action ="editCategory.php" method="POST">
    <input type="hidden" name="categoryId" value="<?php echo $Category['categoryId']; ?>"/>

<label>Category name </label>
<input type="text" name="name" value="<?php echo $Category['name']; ?>"/>



<?php

$stmt = $pdo->prepare('SELECT * FROM as1.category');
$stmt->execute();




foreach($stmt as $row){
    if ($row['categoryId'] == $Category['categoryId']) {
        echo '<option value"' . $row['categoryId'] . '" selected=">' . '</option>';
    }
    else{
        echo '<option value"' . $row['categoryId'] .  '">'. '</option>';
    }
}

?>
</select>

    <input type="submit" value="submit" name="submit"/>
</form>
<?php
}
?>


<?php
require '../footer.php';
?>

