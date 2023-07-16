<div class="hero">
            <h1> Dietary advices from us </h1>
            <p>Choose your current goal below for a special nutritional meal plsn!</p>
        </div>


<div class="container-a">
  <div class="buttons">
    <button class="btn" onclick="showArticle(1)">My goal is to gain weight!</button>
    <button class="btn" onclick="showArticle(2)">My goal is to lose weight!</button>
  </div>
  <div class="articles">
    <div id="article1" class="article">
      <h2>Weight gain</h2>
      <br>
      <p>Breakfast:</p>
<li>A bowl of our <a href="/page/product?id=27">Protein Porridge</a> with berries, yogurt and a teaspoon of honey</li>
<li>A boiled egg</li>
<li>A cup of green tea or black coffee</li>
<br>
<img src="/images/article1-1.png" alt="Weight Loss Image">
<br>
<br>
<p>Mid-Morning Snack:</p>
<li>Our <a href="/page/product?id=7">Protein Bar</a></li>
<br>
<p>Lunch:</p>
<li>Our <a href="/page/product?id=28">Super Meal Bangin' Burrito</a></li>
<li>A side salad with olive oil and vinegar dressing</li>
<br>
<p>Afternoon Snack:</p>
<li>Our <a href="/page/product?id=13">Protein Lean Shake</a></li>
<br>
<p>Dinner:</p>
<li>Our <a href="/page/product?id=30">Italian Tomato & Herb Couscous</a></li>
<br>
<img src="/images/article1-2.png" alt="Weight Loss Image">
<br>
<br>
<p>Evening Snack (optional):</p>
<li>A big handful of roasted chickpeas</li>
<li>Herbal tea</li>
<br>
<p> Important! </p>
<p> While the dietary needs and preferences can vary among individuals, we provide you with a general framework for an average men and women diet plan to support weight loss/gain. Remember to consult a healthcare professional or a registered dietitian for personalized advice based on your specific requirements and health conditions. </p>
    </div>
    <div id="article2" class="article">
      <h2>Weight loss</h2>
      <br>
      <p>Breakfast:</p>
<li>A stack of our <a href="/page/product?id=33">Diet Protein Pancakes</a> with some sugar-free chocolate, peanuts and a teaspoon of honey</li>
<li>A green apple</li>
<li>A cup of green tea or black coffee</li>
<br>
<img src="/images/article2-1.png" alt="Weight Loss Image">
<br>
<br>
<p>Mid-Morning Snack:</p>
<li>Our <a href="/page/product?id=16">Keto Cookies woth Collagen</a></li>
<br>
<p>Lunch:</p>
<li>Our <a href="/page/product?id=31">Super Meal Cheeky Tikka Masala</a></li>
<li>A side salad with olive oil and vinegar dressing</li>
<br>
<img src="/images/article2-2.png" alt="Weight Loss Image">
<br>
<br>
<p>Afternoon Snack:</p>
<li>Our <a href="/page/product?id=7">Protein Bar</a></li>
<br>
<p>Dinner:</p>
<li>Our <a href="/page/product?id=35">Diet Meal Replacement</a> shake</li>
<br>
<img src="/images/article2-3.png" alt="Weight Loss Image">
<br>
<br>
<p>Evening Snack (optional):</p>
<li>Herbal tea</li>
<br>

    </div>
  </div>
</div>
<script>
    function showArticle(articleNumber) {
  var articles = document.querySelectorAll('.article');
  articles.forEach(function(article) {
    article.classList.remove('show');
  });

  var selectedArticle = document.getElementById('article' + articleNumber);
  selectedArticle.classList.add('show');
}
</script>