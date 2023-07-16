<div class="container3">
<div class="product-image">
    <div class="image-frame">
      <img id="product-img" src="/images/<?=$product->picture?>" alt="Product Image">
    </div>
  </div>
      <div class="product-details">
        <h1 class="product-title"><?=$product->title?></h1>
        <?php if ($product->qty >= 100) { ?>
        <p class="availability">Availability: In Stock</p>
        <p class="product-description"><?=$product->description?>.</p>
        <div class="product-price">Price: £<?=$product->price?></div>
        <form method="POST" action="/page/basket">
                    <input type="hidden" name="product_id" value="<?=$product->product_id?>">
                    <button type="submit">Add to Cart</button>
                    </form>
        <?php } else if ($product->qty <= 10 && $product->qty != 0){ ?>
          <p class="lowstock">Availability: Low Stock</p>
        <p class="product-description"><?=$product->description?>.</p>
        <div class="product-price">Price: £<?=$product->price?></div>
        <form method="POST" action="/page/basket">
                    <input type="hidden" name="product_id" value="<?=$product->product_id?>">
                    <button type="submit">Add to Cart</button>
                    </form>
                    <?php } else if ($product->qty <= 10){ ?>
                      <p class="unavailable">Availability: Out of Stock</p>
        <p class="product-description"><?=$product->description?>.</p>
        <div class="product-price">Price: £<?=$product->price?></div>
                      <?php } ?>
      </div>
    </div>
 

  <section class="additional-info">
    <div class="container3">
      <div class="product-specs">
        <h2>Product Specifications</h2>
        <p> <?=$product->nutrition?> </p>
      </div>
      <br>
      <div class="product-reviews">
        <h2>Product Reviews</h2>
        <?php if (empty($reviews)){ ?>
          <h3>No reviews for this product yet.</h3>
          <?php } else { 
          foreach ($reviews as $review) { ?>
        <div class="review">
          <h3><?=$review->contents?></h3>
          <p>review left by <?=$users[$review->review_id]->full_name?></p>
        </div>
        <?php } } ?>
      </div>
    </div>
    <?php if (isset($_SESSION['loggedin'])) { ?>
    <div class="container-cf">
    <h1>Leave a review for <?=$product->title?>!</h1>
    <form method="POST" action="/page/leavereview">
      <div>
        <label for="content">Review:</label>
        <textarea name="reviews[contents]" required></textarea>
      </div>
      <div>
      <input type='hidden' name="reviews[user_id]" value="<?=$_SESSION['user']?>" />
      <input type='hidden' name="reviews[product_id]" value="<?=$product->product_id?>" />
        <input type="submit" value="Submit">
      </div>
    </form>
  </div>
  <?php } ?>
    </section>

    <script>

const productImage = document.getElementById('product-img');

// Zoom in when the user hovers over the image
productImage.addEventListener('mouseover', () => {
  productImage.style.transform = 'scale(1.2)';
});

// Reset the zoom when the user moves the mouse away from the image
productImage.addEventListener('mouseout', () => {
  productImage.style.transform = 'scale(1)';
});

</script>