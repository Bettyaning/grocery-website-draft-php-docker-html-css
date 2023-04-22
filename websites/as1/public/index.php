<?php
require '../header.php';

?>
<?php

$server ='mysql';
$username = 'student';
$password = 'student';

$schema = 'as1';

$pdo = new PDO('mysql:dbname=' . $schema . ';host=' . $server, $username, $password);

$stmt = $pdo->prepare('SELECT * FROM as1.auction ORDER BY endDate ASC LIMIT 10');

$stmt->execute();

foreach ($stmt as $row){
    echo '<ul class="productList">';

    echo '<li>';
    
   echo '<img src="product.png" alt="product name">';
   echo '<article>';


    echo '<h2>Product name: ' . $row['title'].'</h2>';




    // $query = $pdo->prepare('SELECT * FROM as1.category');
    // $query->execute();

    //     if ($category['name'] == $row['categoryId']){
    //         echo '<h3>Product category' . $category['categoryId'] . $category['name'] . '</h3>';

    //     }else{
            
    //     }

    

    // <h3>Product category</h3>
    echo '<p>' . $row['description'] . '</p>';







    echo '<time>Time left: ' . $row['endDate'] . '</time>';
    echo '</article>';

    echo '</li>';
echo '</ul>';


}


?>



<?php

require '../footer.php';
?>