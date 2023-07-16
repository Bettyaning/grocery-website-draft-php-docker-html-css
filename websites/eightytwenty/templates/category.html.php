<div class="hero">
            <h1> Explore our wide range of <?=$selected_category->category_name?> </h1>
            <p>Our products are considered the very best in healthy nutrition today.</p>
        </div>
<div class="container">
            <div class="list">
            <?php foreach ($products as $product) { ?>
                <div class="item">
                <a href="/page/product?id=<?=$product->product_id?>">
                    <img src="/images/<?=$product->picture?>" alt="meal">
                    <h2 class="title"><?=$product->title?></h2>
                    <p class="price">£<?=$product->price?></p>
            </a>
            <?php if ($product->qty != 0){ ?>
            <form method="POST" action="/page/basket">
                    <input type="hidden" name="product_id" value="<?=$product->product_id?>">
                    <button type="submit">Add to Cart</button>
                    </form>
                </div>
                <?php } else { ?>
                    <p class="unavailable">Out of Stock</p>
                    </div>
                    <?php } } ?>
            </div>
        </div>
            </div>