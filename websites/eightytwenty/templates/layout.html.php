<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="/styles.css"/>
		
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
		<ul>
			<li><a href="/">Homee</a></li>
			<li><a href="/">Supplements</a></li>
			<li><a href="/">Protein</a></li>
			<li><a href="/">Snacks</a></li>
			<li><a href="/">Drinks</a></li>
			<li><a href="/">Fresh</a></li>
			<li><a href="/">Frozen</a></li>
			<li><a href="/page/faq">About us</a></li>
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