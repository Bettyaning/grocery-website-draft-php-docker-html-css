<p>Welcome to Jo's Jobs, we're a recruitment agency based in Northampton. We offer a range of different office jobs. Get in touch if you'd like to list a job with us.</a></p>

<?php
	foreach ($jobs as $job) {
		echo '<ul>';
		echo '<div class="details">';
		echo '<h2>' . $job['title'] . '</h2>';
		echo '<h3>' . $job['salary'] . '</h3>';
		echo '<p>' . nl2br($job['description']) . '</p>';
		echo '<p> End date ' . nl2br($job['closingDate']) . '</p>';
		echo '<a class="more" href="/apply.php?id=' . $job['id'] . '">Apply for this job</a>';
		echo '</div>';
		echo '</ul>';
	}
?>
