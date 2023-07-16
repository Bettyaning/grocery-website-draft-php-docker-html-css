<h1>Shopping Basket</h1>

<section class="basket-items">
  <h2>Your basket is empty!</h2>

  <button class="shop-button" onclick="redirectToCheckout()">Shop Now</button>
</section>

<script>

  function redirectToCheckout() {
    window.location.href = '/page/home';
  }
</script>