<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/styles.css">
    <title><?= $title?></title>
</head>
<body>
    <header>
        <div class="logo">
            <a href="/page/home">
                <img src="/images/logo.png" alt="logo">
            </a>
        </div>
        <div class="search-bar">
        <form action="/page/search" method='GET'>
  <input type="text"name="search" placeholder="Search">
  <button type="submit">Search</button>
</form>
</div>
		<?php if (isset($_SESSION['loggedin'])) { ?>
			<div class="icons">
    <div class="account">
    <a href="/page/myaccount"> 
      <img src="/images/account.png" alt="account icon">
      </a>
    </div>
    <div class="shopping">
    <a href="/page/basket"> 
      <img src="/images/shoppingcart.png" alt="basket icon">
      <span id="basketCount">0</span>
      </a>
    </div>
    <div class="cta-buttons">
    <a href="/page/logout" class="cta-button">Log out</a>
            </div>
  </div>   
		<?php } else { ?>
			<div class="cta-buttons">
                <a href="/page/login" class="cta-button">Sign In</a>
                <a href="/page/register" class="cta-button">Register</a>
            </div>
	<?php } ?>
    </header>
    <nav>
        <ul>
            <li><a href="/page/home" class="active">Home</a></li>
            <li><a href="/page/faq" class="active">About us</a></li>
            <li><a href="/page/article" class="active">Blog</a></li>
            <?php
				foreach ($categories as $category) 
					{ ?>
					<li><a href="/page/category?id=<?=$category->category_id?>" class="active"><?=$category->category_name?></a></li>
					<?php } ?>
        </ul>
        
    </nav>
    <main>
	<?= $output?>
    </main>
    <footer>
        <p>&copy; 2023 Eighty Twenty. All rights reserved.</p>
    </footer>
	<script>
      // Get the basket data from the session variable
      var basketData = <?= json_encode($_SESSION['basket']) ?>;

      // Count the total quantity in the basket
      var totalQuantity = 0;
      for (var productId in basketData) {
        if (basketData.hasOwnProperty(productId)) {
          totalQuantity += parseInt(basketData[productId]['quantity']);
        }
      }

      // Update the basket count span element
      var basketCountSpan = document.getElementById('basketCount');
      basketCountSpan.textContent = totalQuantity.toString();
    </script>
</body>
</html>
