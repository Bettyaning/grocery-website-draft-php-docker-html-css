<?php
// Function to check if session is already active, if not, start a new session
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}
?>

<!DOCTYPE html>
<html>
<head>
    <title>ibuy Auctions</title>
    <link rel="stylesheet" href="ibuy.css" />
</head>

<body>
<header>
    <h1><span class="i">i</span><span class="b">b</span><span class="u">u</span><span class="y">y</span></h1>

    <form action="#">
        <input type="text" name="search" placeholder="Search for anything" />
        <input type="submit" name="submit" value="Search" />
    </form>
</header>

<nav>
    <ul>
        <li><a class="categoryLink" href="index.php">Home page</a></li>
<li><a class="categoryLink" href="addAuction.php">Add Auction</a></li>

        <?php
        $server = 'mysql';
        $username = 'student';
        $password = 'student';
        $schema = 'as1';

        $pdo = new PDO('mysql:dbname=' . $schema . ';host=' . $server, $username, $password);

        $stmt = $pdo->prepare('SELECT * FROM as1.category');
        $stmt->execute();

        foreach ($stmt as $row) {
            echo '<li><a class="categoryLink" href="viewCategory.php?categoryID=' . $row['categoryID'] . '">' . $row['name'] . '</a></li>';
        }

        if (isset($_SESSION['loggedin']) && $_SESSION['loggedin'] === true) {
            echo '<li><a class="categoryLink" href="logout.php">Log Out</a></li>';
        } else {
            echo '<li><a class="categoryLink" href="login.php">Log In</a></li>';
            echo '<li><a class="categoryLink" href="register.php">Register</a></li>';
        }

        // Check if admin is logged in
        if (isset($_SESSION['admin']) && $_SESSION['admin'] === true) {
            echo '<li><a class="categoryLink" href="logout.php">Log Out</a></li>';
        } else {
            echo '<li><a class="categoryLink" href="admin.php">Admin</a></li>';
        }
        ?>


    </ul>
</nav>
<img src="banners/1.jpg" alt="Banner" />
