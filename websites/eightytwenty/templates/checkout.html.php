<h1>Checkout</h1>

<form class="container-register" method="POST" action="/page/checkout">
<div class="form-group">
    <a href="/page/basket" class="btn-go-back">Go Back to Basket</a>
  </div>

      <section>
        <h2>Billing Information</h2>
        <div class="form-group">
          <label for="name">Name</label>
          <input type="text" id="name" name="orders[name]" value="<?=$user->full_name?>"required>
        </div>
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" id="email" name="orders[email]" value="<?=$user->username ?>"required>
        </div>
      </section>

      <section>
        <h2>Shipping Information</h2>
        <div class="form-group">
          <label for="address">Address</label>
          <textarea name="orders[address]" required></textarea>
        </div>
        <div class="form-group">
          <label for="city">City</label>
          <input type="text" id="city" name="orders[city]" required>
        </div>
        <div class="form-group">
          <label for="city">Postcode</label>
          <input type="text" id="city" name="orders[postcode]" required>
        </div>
      </section>

      <section>
        <h2>Order Details</h2>
        <div class="order-details">
          <?php
          $orderTotal = 0; // Initialize the order total
          foreach ($products as $index => $product) {
            $quantity = $quantities[$index];
            $totalPrice = $product->price * $quantity;
            $orderTotal += $totalPrice; // Accumulate the total price

            ?>
            <div class="product">
              <img src="/images/<?= $product->picture; ?>" alt="Product Image">
              <div class="product-info">
                <h3><?= $product->title; ?></h3>
                <p>Price per unit: £<?= $product->price; ?></p>
                <p>Quantity: <?= $quantity ?></p>
                <p>Total Price: £<?= $totalPrice ?></p>
              </div>
            </div>
          <?php } ?>
        </div>
        <p class="order-total">Order Total: £<?= $orderTotal ?></p> <!-- Display the order total -->
      </section>

      <section>
        <h2>Payment Information</h2>
        <div class="form-group">
          <label for="card-number">Card Number</label>
          <input type="text" id="card-number" name="orders[card]" required>
        </div>
        <div class="form-group">
          <label for="expiration">Expiration Date</label>
          <input type="text" id="expiration" name="orders[expiry]" required>
        </div>
      </section>

      <input type="hidden" name="orders[user_id]" value="<?=$_SESSION['user']?>">
      <input type="hidden" name="orders[date]" value="<?=date('d-m-Y');?>"> 
      <input type="hidden" name="orders[status]" value="Processing"> 
      <input type="hidden" name="orders[total_paid]" value="<?=$orderTotal?>"> 

      <div class="form-group">
        <input type="submit" value="Place Order">
      </div>
    </form>
    <script>
  // Function to validate card number
  function validateCardNumber(cardNumber) {
    // Remove any non-digit characters from the input
    var cleanedCardNumber = cardNumber.replace(/\D/g, '');

    // Check if the card number is exactly 16 digits long
    if (cleanedCardNumber.length !== 16) {
      return false;
    }

    return true;
  }

  function validateExpirationDate(expirationDate) {
  // Split the input into month and year
  var parts = expirationDate.split('/');
  var month = parseInt(parts[0], 10);
  var year = parseInt(parts[1], 10);

  // Get the current date
  var currentDate = new Date();
  var currentYear = currentDate.getFullYear() % 100; // Get the last two digits of the current year
  var currentMonth = currentDate.getMonth() + 1; // Adding 1 to match the format MM/YY

  // Compare the input date with the current date
  if (
    year > currentYear || // Check if the input year is in the future
    (year === currentYear && month >= currentMonth) // Check if the input month is in the future in the current year
  ) {
    return true;
  }

  return false;
}

  // Function to handle card number input
  function handleCardNumberInput() {
    var cardNumberInput = document.getElementById('card-number');
    var cardNumber = cardNumberInput.value;

    if (validateCardNumber(cardNumber)) {
      cardNumberInput.setCustomValidity('');
    } else {
      cardNumberInput.setCustomValidity('Please enter a valid 16-digit card number.');
    }
  }

  // Function to handle expiration date input
  function handleExpirationDateInput() {
    var expirationDateInput = document.getElementById('expiration');
    var expirationDate = expirationDateInput.value;

    if (validateExpirationDate(expirationDate)) {
      expirationDateInput.setCustomValidity('');
    } else {
      expirationDateInput.setCustomValidity('Please enter a future date in the format MM/YY.');
    }
  }

  // Add event listeners to card number and expiration date inputs
  document.getElementById('card-number').addEventListener('input', handleCardNumberInput);
  document.getElementById('expiration').addEventListener('input', handleExpirationDateInput);
</script>
