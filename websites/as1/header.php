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

                <?
            $server ='mysql';
$username = 'student';
$password = 'student';

$schema = 'as1';

$pdo = new PDO('mysql:dbname=' . $schema . ';host=' . $server, $username, $password);

$stmt = $pdo->prepare('SELECT * FROM as1.category');
$stmt->execute();


foreach ($stmt as $row){


    echo '<li><a class="categoryLink" href="viewCategory.php?categoryId=' .$row['categoryId']. '">' . $row['name'] . '</a></li>';

}
?>









<li><a class="categoryLink" href="login.php">Login</a></li>
	<li><a class="categoryLink" href="register.php">Register</a></li>
	<li><a class="categoryLink" href="admin.php">Admin</a></li>
	<li><a class="categoryLink" href="logout.php">Logout</a></li>


	</ul>
		</nav>
		<img src="banners/1.jpg" alt="Banner" />
