<!DOCTYPE html>
<html>
	<head>
		<link rel="stylesheet" href="/styles.css"/>
		
		<title><?=$title?></title>
	</head>
	<body>

	<header>

	<div class="logo">
	<a href="/"><img src="/images/updatedLogo.png"/></a>


	<div class="loginform">
	<form action = "login.php" method= "post">
<label> Email</label>
<input type="email" placeholder="email" name="email" class="email"/>
<label> Password</label>
<input type="password" placeholder="password" name="password" class="password"/>


<input type="submit"  value ="SIGN IN" name="submit" />
</form> <br>
	<div class="searchbar">	
	<form action="#">
				<input type="text" name="search" placeholder="Search for anything" />
				<input type="submit" name="submit" value="Search" />
			</form>
	</header>



	<nav>
	<input type="checkbox" class="toggle-menu">
            <div class="hamburger"></div>
            <ul class="menu">
			<li><a href="/">Home</a></li>
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
	<p>put hottest products out on main page/deals/offers/sale etc.</p>
	
    <?=$output?>
  </main>
  <footer>
		&copy; Eighty Twenty Ltd <?=date('Y');?>
	</footer>
</body>
</html>