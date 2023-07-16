<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="/styles.css"/>
		<title><?=$title?></title>
	</head>
	<body>
	<header>
		<section>
			<aside>
				<h3>Office Hours:</h3>
				<p>Mon-Fri: 09:00-17:30</p>
				<p>Sat: 09:00-17:00</p>
				<p>Sun: Closed</p>
			</aside>
			<h1>Jo's Jobs</h1>

		</section>
	</header>
	<nav>
		<ul>
			<li><a href="/">Home</a></li>
			<li><a href="/job/all_jobs">Jobs</a>
				<ul>
				<?php
        $server = 'mysql';
        $username = 'student';
        $password = 'student';
        $schema = 'as1';

        $pdo = new PDO('mysql:dbname=' . $schema . ';host=' . $server, $username, $password);

        $stmt = $pdo->prepare('SELECT * FROM job.category');
        $stmt->execute();

        foreach ($stmt as $row) {
            echo '<li><a class="categoryLink" href="/job/job_filter?id=' . $row['id'] . '">' . $row['name'] . '</a></li>';

        }
        ?>

				</ul>

				<li><a href="/job/about">About Us</a></li>
				<li><a href="/enquires/enquiry">Enquiry</a></li>
				<li><a href="/job/faq">FAQs</a></li>
				

		
			
		



	</nav>
<img src="/images/randombanner.php"/>
	<main class="sidebar">
<?=$output?>
	</main>


	<footer>
		&copy; Jo's Jobs 2023
	</footer>
</body>
</html>
