<?php
session_start();
require '../header.php';
?>


<?php
if (isset($_POST['submit'])) {
            

    if ($_POST['email'] === 'admin@web.com' && $_POST['password'] === 'password') {
    
        $_SESSION['admin'] = true;



                    echo '<p>You are now logged in</p>';

                    echo '<ul><a href="adminCategories.php">Admin Category</a></ul>';

                }
            

            else{
                echo 'Account not found';

                echo ' Please try again';

            }

        }

else{
    ?>
<form action = "admin.php" method= "post">

<label> Email</label>
<input type="email" name="email"/>

<label> Password</label>
<input type="password" name="password"/>


<input type="submit"  value ="Log In" name="submit" />
</form>
<?php
}

?>

<?php
require '../footer.php';
?>