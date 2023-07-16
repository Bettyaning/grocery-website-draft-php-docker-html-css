			<h2>Jobs</h2>

<a class="new" href="/job/edit">Add new job</a>


<table>
<thead>
<tr>
<th>Title</th>
<th style="width: 15%">Salary</th>
<th style="width: 5%">&nbsp;</th>
<th style="width: 15%">&nbsp;</th>
<th style="width: 5%">&nbsp;</th>
<th style="width: 5%">&nbsp;</th>
</tr>

<?php
foreach ($job as $jobs) {

    echo '<tr>';
    echo '<td>' . $jobs['title'] . '</td>';
    echo '<td>' . $jobs['salary'] . '</td>';
    echo '<td><a style="float: right" href="/job/edit?id=' . $jobs['id'] . '">Edit</a></td>';
    echo '<td><form method="post" action="/job/delete">
    <input type="hidden" name="id" value="' . $jobs['id'] . '" />
    <input type="submit" name="submit" value="Delete" />
    </form></td>';
    echo '</tr>';
}
?>
</thead>
</table>