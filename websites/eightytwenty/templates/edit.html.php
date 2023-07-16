<div class="container2">
    <div class="login-form">
<h2>Edit Product</h2>
			
			<form action="/admin/edit" method="POST">
            <div class="form-group">
            <input type="hidden" name="products[product_id]" value="<?= $product->product_id ?>">
				<label>Title</label>
				<input type="text" name="products[title]" value="<?= $product->title ?>" />
                </div>
                <div class="form-group">
				<label>Description</label>
				<textarea name="products[description]"><?= $product->description ?></textarea>
                </div>
                <div class="form-group">
                <label>Nutrition</label>
				<textarea name="products[nutrition]"><?= $product->nutrition ?></textarea>
</div>

                <label>Category</label>
                </div>
                <div class="form-group">
				<select name="products[category_id]">

				<?php foreach ($categories as $category) { 
						if ($product->category_id == $category->category_id) { ?>
						<option selected="selected" value="<?=$category->category_id?>"> <?=$category->category_name?> </option>
						<?php }
						else { ?>
						<option value="<?=$category->category_id?>"><?=$category->category_name?></option>
						<?php } }?>

				</select>
                </div>

                <div class="form-group">
				<label>Price</label>
				<input type="text" name="products[price]" value="<?= $product->price ?>"/>

                </div>

                <div class="form-group">
				<label>Available stock</label>
				<input type="text" name="products[qty]" value="<?= $product->qty ?>"/>

                </div>

                <div class="form-group">
				<label>Batch</label>
				<input type="text" name="products[batch]" value="<?= $product->batch ?>"/>

                </div>
         
				<button type="submit">Save</button>

			</form>
            </div>
  </div>