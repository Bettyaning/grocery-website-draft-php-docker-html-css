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
    if (isset($_POST['submit'])) {

        $stmt = $pdo-> prepare('INSERT INTO as1.auction(title, description, categoryId, endDate)
        VALUES (:title, :description, :categoryId, :endDate)');


$values = [
    'title' => $_POST['title'],
    'description' => $_POST['description'],
    'categoryId' => $_POST['categoryId'],
    'endDate' => $_POST['endDate'],
];


$stmt ->execute($values);
echo 'Auction Added';

    }
}

else{
?>

<form action="addAuction.php" method="post">

<label>Title: </label>
<input type="text" name="title"/>

<label>Description: </label>
<textarea name="description"> </textarea>


<label>Category: </label>
<select name="categoryId">

<?php

$stmt = $pdo->prepare('SELECT * FROM as1.category');
$stmt->execute();

foreach ($stmt as $row){
    if ($row['categoryId'] == $Category['categoryId']){
        echo'<option value="' . $row['categoryId'] . '" selected="selected">' . $row['name'] . '</option>';
    }
    else {
        echo'<option value="' . $row['categoryId'] . '">'. $row['name'] . '</option>';
    }
}


?>



</select>



<label>End Date: </label>
<input type="date" name="endDate"/>

<input type="submit" value="submit" name="submit"/>

</form>



<?php
}
require '../footer.php';
?>
