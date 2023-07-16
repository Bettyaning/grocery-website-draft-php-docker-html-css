<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/styles.css">
    <title><?= $title?></title>
</head>
<body>
    <header>
        <div class="logo">
            <a href="/admin/home">
                <img src="/images/logo.png" alt="logo">
            </a>
        </div>
    <div class="cta-buttons">
    <a href="/page/logout" class="cta-button">Log out</a>
            </div>
  </div>
    </header>
    <nav>
        <ul>
            <li><a href="/admin/home" class="active">Home</a></li>
            <li><a href="/page/home" class="active">Live website</a></li>
        </ul>
    </nav>
    <main>
	<?= $output?>
    </main>
    <footer>
        <p>&copy; 2023 Eighty Twenty. All rights reserved.</p>
    </footer>
</body>
</html>
