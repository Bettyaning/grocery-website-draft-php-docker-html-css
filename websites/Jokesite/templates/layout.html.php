<!doctype html>
<html>
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="/jokes.css">
    <title><?=$title?></title>
  </head>
  <body>
  <nav>
    <header>
      <h1>Internet Joke Database</h1>
    </header>
    <ul>
      <li><a href="/">Home</a></li>
      <li><a href="/joke/list">Jokes List</a></li>
      <li><a href="/joke/edit">Add a new Joke</a></li>
      <li><a href="/category/list">Category List</a></li>
      <li><a href="/category/edit">Add a new Category</a></li>
    </ul>
  </nav>

  <main>
  <?=$output?>
  </main>

  <footer>
  &copy; IJDB 2018
  </footer>
  </body>
</html>