<?php
require '../header.php';

?>
<?php

$server ='mysql';
$username = 'student';
$password = 'student';

$schema = 'as1';

$pdo = new PDO('mysql:dbname=' . $schema . ';host=' . $server, $username, $password);

    $stmt = $pdo-> prepare('DELETE FROM as1.category
                            WHERE categoryId = :categoryId');


$values = [
    'categoryId' => $_GET['categoryId'],
];

$stmt ->execute($values);

echo 'Your Category has been successfully deleted';

echo '<a href="adminCategories.php"> Back to Categories</a>';
?>
<?php

require '../footer.php';
?>

