<h2>Enquires List</h2>

<table>
<thead>
<tr>
<th>Name</th>
<th>Email</th>
<th>Telephone</th>
<th>Enquiry</th>
<th>Completed</th>
<th>Dealt By</th>
<th style="width: 5%">&nbsp;</th>
<th style="width: 5%">&nbsp;</th>
</tr>
</thead>

<tbody>
<?php foreach ($enquires as $enquiry) : ?>
    <tr>
        <td><?=$enquiry['name']?></td>
        <td><?=$enquiry['email']?></td>
        <td><?=$enquiry['telephone']?></td>
        <td><?=$enquiry['enquiry']?></td>
        <td><?=$enquiry['dealt']?></td>
        <td><?=$enquiry['admin']?></td>
        <td><a style="float: right" href="/enquires/edit?id=<?=$enquiry['id']?>">Edit</a></td>
        <td>
            <form method="post" action="/enquires/delete">
                <input type="hidden" name="id" value="<?=$enquiry['id']?>" />
                <input type="submit" name="submit" value="Delete" />
            </form>
        </td>
    </tr>
<?php endforeach; ?>
</tbody>
</table>
