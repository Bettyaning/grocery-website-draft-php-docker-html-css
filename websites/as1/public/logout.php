<?php
session_start();
require '../header.php';
?>


<?php
unset($_SESSION['loggedin']);
echo '<p>You are logged out</p>';


echo '<a class="categoryLink" href="login.php">click here to log in</a>';






?>


<?php
require '../footer.php';
?>
