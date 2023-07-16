<h2>Applicants List</h2>

<table>
<thead>
<tr>
<th>Name</th>
<th>Email</th>
<th>Phone</th>
<th>Resume</th>
<th style="width: 5%">&nbsp;</th>
<th style="width: 5%">&nbsp;</th>
</tr>

<?php foreach ($applicants as $applicant) {
    echo '<tr>';
    echo '<td>' . ($applicant['name'] ?? '') . '</td>';
    echo '<td>' . ($applicant['email'] ?? '') . '</td>';
    echo '<td>' . ($applicant['telephone'] ?? '') . '</td>';
    echo '<td>' . ($applicant['enquiry'] ?? '') . '</td>';
    echo '<td><a style="float: right" href="/applicants/edit?id=' . ($applicant['id'] ?? '') . '">Edit</a></td>';

    echo '<td>
    <form method="post" action="/applicants/delete">
        <input type="hidden" name="id" value="' . ($applicant['id'] ?? '') . '" />
        <input type="submit" name="submit" value="Delete" />
    </form>
    </td>';

    echo '</tr>';
}
?>
</thead>
</table>
