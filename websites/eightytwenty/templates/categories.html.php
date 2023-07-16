<div class="container2">
    <div class="login-form">
<h2>Categories</h2>

<a href="/admin/addcategory" class="category-button">Add new category</a>
<br>
<?php foreach ($categories as $category) { ?>
                    <form method="POST" action="/admin/deletecategory">
                        <br>
                    <h3> <?=$category->category_name?> </h3>
                    <input type="hidden" name="id" value="<?=$category->category_id?>">
                    <button type="submit">Delete</button>
                    </form>
					<?php }
				?>
            </div>
  </div>