<div class="hero">
            <h1> Search results for <?=$search?> </h1>
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
                    <form method="POST" action="/page/basket">
                    <input type="hidden" name="product_id" value="<?=$product->product_id?>">
                    <button type="submit">Add to Cart</button>
                    </form>
                </div>
                <?php } ?>
            </div>
        </div>
            </div>