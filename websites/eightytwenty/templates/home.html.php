<div class="hero">
            <h1>Welcome to EIGHTY TWENTY</h1>
            <p>We use only quality ingredients to give you great-tasting food that isn't packed with sugar and net carbs. So our innovative, protein-forward recipes aren't just for athletes to enjoy - they're for everyone!</p>
            <a href="/page/allproducts" class="hero-button">Shop Now</a>
        </div>

        <section class="banner-carousel">
    <div class="carousel">
        <div><img src="/images/banner.png" alt="Banner"></div>
    </div>
</section>

<section class="best-sellers">
            <h2>New In</h2>
            <div class="product-list">
            <?php foreach ($products as $product) { ?>
                <div class="product">
                <a href="/page/product?id=<?=$product->product_id?>">
                    <img src="/images/<?=$product->picture?>" alt="Product">
                    <h3><?=$product->title?></h3>
            </a>
                    <p>Be the first one to try it!</p>
                    <span class="price">£<?=$product->price?></span>
                    <form method="POST" action="/page/basket">
                    <input type="hidden" name="product_id" value="<?=$product->product_id?>">
                    <button type="submit" class="product-button">Add to Cart</button>
                    </form>
                </div>
                <?php } ?>
            </div>
        </section>
        <section class="best-sellers">
            <h2>Explore Our Categories</h2>
            <div class="product-list">
                <?php foreach ($selected_categories as $selected_category) { ?>
            <div class="product">
                <img src="/images/icon.png" alt="Category">
                <h3><?=$selected_category->category_name?></h3>
                <a href="/page/category?id=<?=$selected_category->category_id?>" class="category-button">Shop Category</a>
            </div>
            <?php } ?>
            </div>
        </section>
    <br>