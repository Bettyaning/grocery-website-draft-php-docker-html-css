<div class="hero">
            <h1> Stock maintenance </h1>
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
                    <form method="GET" action="/admin/edit">
                    <input type="hidden" name="id" value="<?=$product->product_id?>">
                    <button type="submit">Edit</button>
                    </form>
                    <form method="POST" action="/admin/delete">
                    <input type="hidden" name="id" value="<?=$product->product_id?>">
                    <button type="submit">Delete</button>
                    </form>
                </div>
                <?php } ?>
            </div>
        </div>
            </div>