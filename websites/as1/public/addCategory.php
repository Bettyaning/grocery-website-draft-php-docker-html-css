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
    $stmt = $pdo-> prepare('INSERT INTO as1.category(name)
                            VALUES (:name)');


$values = [
    'name' => $_POST['name'],
];

$stmt ->execute($values);

echo 'Your Category has been successfully added';

echo '<a href="adminCategories.php"> Back to Categories</a>';
}
else{
    ?>
<form action ="addCategory.php" method="POST">

<label>Category name </label>
<input type="text" name="name"/>

    <input type="submit" value="submit" name="submit"/>

</form>
<?php
}
require '../footer.php';
?>

