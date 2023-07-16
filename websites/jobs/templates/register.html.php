<?php
$server = 'mysql';
$username = 'student';
$password = 'student';
$schema = 'as1';

$pdo = new PDO('mysql:dbname=' . $schema . ';host=' . $server, $username, $password);

if (isset($_POST['submit'])) {
    $stmt = $pdo->prepare('SELECT * FROM job.admin WHERE username = :username');
    $stmt->execute(['username' => $_POST['username']]);
    $admin = $stmt->fetch();

    if ($admin) {
        echo '<h1>Error: Username already exists</h1>';
    } else {
        $stmt = $pdo->prepare('INSERT INTO job.admin (username, password) VALUES (:username, :password)');
        $password = $_POST['password'];
        $hash = password_hash($password, PASSWORD_DEFAULT);
        $values = [
            'username' => $_POST['username'],
            'password' => $hash
        ];
        $stmt->execute($values);

        echo '<h1>Thank you for registering</h1>';
        echo '<p><a href="/admin/index.php">Click here to log in</a></p>';
    }
} else {
    ?>
    <form action="register.php" method="post">
        <label>Username</label>
        <input type="text" name="username" required>

        <label>Password</label>
        <input type="password" name="password" required>

        <input type="submit" value="Submit" name="submit">
    </form>
    <?php
}
?>
