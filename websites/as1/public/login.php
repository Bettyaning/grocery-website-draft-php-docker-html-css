<?php
session_start();
require '../header.php';

$server = 'mysql';
$username = 'student';
$password = 'student';
$schema = 'as1';

$pdo = new PDO('mysql:dbname=' . $schema . ';host=' . $server, $username, $password);

if (isset($_POST['submit'])) {
    $stmt = $pdo->prepare('SELECT * FROM as1.register WHERE email = :email');
    $values = [
        'email' => $_POST['email'],
    ];
    $stmt->execute($values);

    $user = $stmt->fetch();

    if ($user) {
        if (password_verify($_POST['password'], $user['password'])) {
            $_SESSION['loggedin'] = true;
            echo 'You are now logged in';
        } else {
            echo 'Incorrect password';
        }
    } else {
        echo 'Account not found';
    }
} else {
    ?>
    <form action="login.php" method="post">
        <label>Email</label>
        <input type="email" name="email"/>

        <label>Password</label>
        <input type="password" name="password"/>

        <input type="submit" value="Log In" name="submit"/>
    </form>
    <?php
}

require '../footer.php';
?>
