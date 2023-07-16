<?php foreach($jokes as $joke) { ?>
<blockquote>
<p>
	<?=$joke['joketext']?> 
	<a href="/joke/edit?id=<?=$joke['id']?>">edit</a>

	<form action="/joke/delete" method="POST">
		<input type="hidden" name="id" value="<?=$joke['id']?>" />
		<input type="submit" value="Delete" />
	</form>

</p>
</blockquote>
<?php } ?>