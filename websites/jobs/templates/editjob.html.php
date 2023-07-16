<form action="" method="POST">

<input type="hidden" name="job[id]" value="<?=$job['id'] ??  ''?>" />
<label>Title</label>
<input type="text" name="job[title]" value="<?=$job['title'] ?? ''?>" />

<label>Description</label>
<textarea name="job[description]"><?=$job['description'] ?? ''?></textarea>

<label>Location</label>
<input type="text" name="job[location]" value="<?=$job['location'] ?? ''?>" />


<label>Salary</label>
<input type="text" name="job[salary]" value="<?=$job['salary'] ?? '' ?>" />

<label>Category</label>
<select name="job[categoryId]">
<?php
    foreach ($category as $categories) {
            echo '<option value="' . $categories['id'] . '">' . $categories['name'] . '</option>';
    }

?>
<select name="" id=""></select>

<label>Closing Date</label>
<input type="date" name="job[closingDate]" value="<?=$job['closingDate'] ?? '' ?>" />


</select>
<label>archived?</label>
<select name="job[archived]" id="">
    <option value="0">No</option>
  <option value="1">Yes</option>
</select>



<input type="submit" name="submit" value="Save" />

</form>