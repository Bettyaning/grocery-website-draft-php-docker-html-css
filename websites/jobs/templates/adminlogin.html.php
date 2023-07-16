<?php
session_start();
require '../../database.php';

$loginError = false;

if (isset($_POST['submit'])) {
    $stmt = $pdo->prepare('SELECT * FROM admin WHERE username = :username');
    $stmt->bindValue(':username', $_POST['username']);
    $stmt->execute();

    $user = $stmt->fetch(PDO::FETCH_ASSOC);
    if ($user && $user['password'] && password_verify($_POST['password'], $user['password'])) {
        $_SESSION['loggedin'] = true;
        $_SESSION['user'] = $user;
    } else {
        $loginError = true;
    }
}

if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] == true) {
    ?>
    <section class="left">
        <ul>
            <li><a href="/job/list">Jobs</a></li>
            <li><a href="/category/list">Categories</a></li>
            <li><a href="/enquires/list">Enquires</a></li>
            <li><a href="/applicants/list">Applicants</a></li>
            <li><a href="/admin/logout.php">Log out</a></li>  
        </ul>
    </section>

    <section class="right">
        <h2>You are now logged in</h2>
    </section>
    <?php
} else {
    ?>
    <h2>Log in</h2>

    <?php if ($loginError) { ?>
        <p>Invalid username or password.</p>
    <?php } ?>

    <form action="index.php" method="post" style="padding: 40px">
        <label>Username</label>
        <input type="text" name="username" />

        <label>Password</label>
        <input type="password" name="password" />

        <input type="submit" name="submit" value="Log In" />
    </form>
    <?php
}
?>
