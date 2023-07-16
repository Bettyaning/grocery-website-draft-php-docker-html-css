<form action="" method="POST">

<input type="hidden" name="category[id]" value="<?=$category['id'] ?? '' ?>" />
<label>Name</label>
<input type="text" name="category[name]" value="<?=$category['name']?? '' ?>" />


<input type="submit" name="submit" value="Save" />

</form>