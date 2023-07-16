<section class="left">
	<ul>
        <p>Category</p>
        <?php
        foreach ($category as $categories) {
            echo '<li>';
        ?>
        <a href="/job/job_filter?id=<?=$categories['id']?>"> <?=$categories['name']?> </a>
        <?php
            echo '</li>';
        }
        ?>
	</ul>
</section>

<section class="right">
    <h1>Jobs</h1>
    <ul class="listing">
        <?php
        foreach ($job as $jobs) {
            $category = $categoryTable->find('id', $jobs['categoryId'])[0];
            echo '<li>';
            echo '<div class="details">';
            echo '<h2>' . $jobs['title'] . '</h2>';
            echo '<h3>' . $jobs['salary'] . '</h3>';
            echo '<p>' . nl2br($jobs['description']) . '</p>';
            echo '<p><strong>Location:</strong> ' . $jobs['location'] . '</p>'; // Display the job location
            echo '<a class="more" href="/apply.php?id=' . $jobs['id'] . '">Apply for this job</a>';
            echo '</div>';
            echo '</li>';
        }
        ?>
    </ul>
</section>
