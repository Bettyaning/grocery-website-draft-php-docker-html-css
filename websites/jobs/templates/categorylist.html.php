<h2>Categories</h2>

<a class="new" href="/category/edit">Add new category</a>


<table>
<thead>
<tr>
<th>Name</th>
<th style="width: 5%">&nbsp;</th>
<th style="width: 5%">&nbsp;</th>
</tr>

<?php
foreach ($category as $categories) {
    echo '<tr>';
    echo '<td>' . $categories['name'] . '</td>';
    echo '<td><a style="float: right" href="/category/edit?id=' . $categories['id'] . '">Edit</a></td>';
    echo '<td><form method="post" action="/category/delete">
    <input type="hidden" name="id" value="' . $categories['id'] . '" />
    <input type="submit" name="submit" value="Delete" />
    </form></td>';
    echo '</tr>';
}
?>
</thead>
</table>
