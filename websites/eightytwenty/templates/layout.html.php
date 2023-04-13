<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="/styles.css"/>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<title><?=$title?></title>
	</head>
	<body>
	<header>
	<a href="/"><img src="/images/logo.png"
		width="250" 
     height="260"/></a>
		
<button class="login">Login</button>
	</header>
	<nav>
	<input type="checkbox" class="toggle-menu">
            <div class="hamburger"></div>
		<ul class= "menu">
			<li><a href="/">Home</a></li>
			<li><a href="/page/supplements">Supplements</a></li>
			<li><a href="/page/protein">Protein</a></li>
			<li><a href="/page/snacks">Snacks</a></li>
			<li><a href="/page/drinks">Drinks</a></li>
			<li><a href="/page/fresh">Fresh</a></li>
			<li><a href="/page/frozen">Frozen</a></li>
			<li><a href="/page/faq">FAQ</a></li>
			<li><a href="/page/about">About us</a></li>
		</ul>

	</nav>
	<main class="<?=$class?>">
    <?=$output?>
  </main>
  <footer>
		&copy; Eighty Twenty Ltd <?=date('Y');?>
	</footer>
</body>
</html>