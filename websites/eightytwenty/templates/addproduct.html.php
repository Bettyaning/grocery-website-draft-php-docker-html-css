<div class="container2">
    <div class="login-form">
<h2>Add Product</h2>
			
			<form action="/admin/addproduct" method="POST" enctype="multipart/form-data">
            <div class="form-group">
				<label>Title</label>
				<input type="text" name="products[title]" required/>
                </div>
                <div class="form-group">
				<label>Description</label>
				<textarea name="products[description]"></textarea>
                </div>
                <div class="form-group">
                <label>Nutrition</label>
				<textarea name="products[nutrition]"></textarea>
</div>

                <label>Category</label>
                </div>
                <div class="form-group">
				<select name="products[category_id]">
				<?php
					foreach ($categories as $category) { ?>
					<option value="<?=$category->category_id?>"><?=$category->category_name?></option>
					<?php }
				?>
				</select>
                </div>
                
                <div class="form-group">
				<label>Price</label>
				<input type="text" name="products[price]" required/>

                </div>

                <div class="form-group">
				<label>Available stock</label>
				<input type="text" name="products[qty]" required/>

                </div>

                <div class="form-group">
				<label>Batch</label>
				<input type="text" name="products[batch]" required/>

                </div>

                <label>Image</label>
				<input type="file" name="picture" required/>
         
				<button type="submit">Add</button>

			</form>
            </div>
  </div>