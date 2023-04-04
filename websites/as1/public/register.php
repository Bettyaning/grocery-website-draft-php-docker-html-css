<?php
require '../header.php';

?>
<?php

$server ='mysql';
$username = 'student';
$password = 'student';

$schema = 'as1';

$pdo = new PDO('mysql:dbname=' . $schema . ';host=' . $server, $username, $password);


if(isset($_POST['submit'])) {
    $stmt = $pdo->prepare('INSERT INTO as1.register(email, password, name)
   VALUES (:email, :password, :name)');

   $password = $_POST['password'];

   $hash = password_hash($password, PASSWORD_DEFAULT);


   $values = [

    'email' => $_POST['email'],
    'password' => $hash,
    'name' => $_POST['name']
   ];

$stmt->execute($values);

echo '<h1> Thank you for registering to iBuy.com</h1>';
echo '<p><a href="login.php">click here to login</a></p>';



}

else{
    ?>
<form action = "register.php" method= "post">

<label> Email</label>
<input type="email" name="email"/>

<label> Password</label>
<input type="password" name="password"/>

<label> Name</label>
<input type="text" name="name"/>


<input type="submit"  value ="submit" name="submit" />
</form>
<?php
}


?>



<?php

require '../footer.php';
?>



