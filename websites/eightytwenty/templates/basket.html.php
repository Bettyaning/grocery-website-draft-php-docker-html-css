<h1>Shopping Basket</h1>

<section class="basket-items">
  <h2>Items</h2>
  <table>
    <tr>
      <th>Item</th>
      <th>Quantity</th>
      <th>Price</th>
      <th>Remove</th>
    </tr>
    <?php foreach ($products as $index => $product) { ?>
      <tr>
        <td>
          <img src="/images/<?= $product->picture; ?>" alt="Item Image">
          <br><?= $product->title; ?>
        </td>
        <td>
          <input type="number" class="quantity-field" value="<?= $quantities[$index] ?>" onchange="updatePrice(this)">
          <form method="POST" action="/page/updatebasket">
            <input type="hidden" name="product_id" value="<?= $product->product_id ?>">
            <input type="hidden" class="new-quantity-field" name="new_quantity" value="<?= $quantities[$index] ?>">
            <button type="submit"  class="update-button">Update</button>
          </form>
        </td>
        <td class="price" data-price="<?= $product->price; ?>">£<?= $product->price; ?></td>
        <td>
          <form method="POST" action="/page/remove">
            <input type="hidden" name="product_id" value="<?= $product->product_id ?>">
            <button type="submit">Remove</button>
          </form>
        </td>
      </tr>
    <?php } ?>
    <tfoot>
      <tr>
        <td colspan="2"></td>
        <th>Total:</th>
        <td id="order-total">£0.00</td>
      </tr>
    </tfoot>
  </table>
</section>

<section class="discount-code">
  <button class="checkout-button" onclick="redirectToCheckout()">Checkout Securely Now</button>
</section>

<script>
function updatePrice(element) {
  var row = element.parentNode.parentNode;
  var priceCell = row.getElementsByClassName("price")[0];
  var quantity = element.value;
  var price = parseFloat(priceCell.getAttribute("data-price"));
  var totalPrice = price * quantity;
  priceCell.textContent = "£" + totalPrice.toFixed(2);

  updateQuantityInSession(row, quantity);
  updateOrderTotal();
}

function updateQuantityInSession(row, quantity) {
  var form = row.querySelector("form");
  var newQuantityInput = form.querySelector(".new-quantity-field");
  newQuantityInput.value = quantity; // Set the updated quantity in the hidden input field
}

  // Trigger the updatePrice function for all quantity fields initially
  window.addEventListener('DOMContentLoaded', function () {
    var quantityFields = document.getElementsByClassName("quantity-field");
    for (var i = 0; i < quantityFields.length; i++) {
      updatePrice(quantityFields[i]);
    }
  });

  function updateOrderTotal() {
    var total = 0;
    var priceCells = document.getElementsByClassName("price");
    for (var i = 0; i < priceCells.length; i++) {
      var price = parseFloat(priceCells[i].getAttribute("data-price"));
      var quantity = parseFloat(priceCells[i].parentNode.getElementsByClassName("quantity-field")[0].value);
      total += price * quantity;
    }
    document.getElementById("order-total").textContent = "£" + total.toFixed(2);
  }

  function redirectToCheckout() {
    window.location.href = '/page/checkout';
  }
</script>