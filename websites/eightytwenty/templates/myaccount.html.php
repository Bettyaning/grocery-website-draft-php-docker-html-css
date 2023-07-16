<div class="container">
  <h1>My Account</h1>
  <div class="account-details">
    <h2>Account Information</h2>
    <div class="details">
      <label for="name">Name:</label>
      <p><?=$user->full_name?></p>
    </div>
    <div class="details">
      <label for="email">Email:</label>
      <p><?=$user->username?></p>
    </div>
    <div class="details">
      <label for="email">Date of Birth:</label>
      <p><?=$user->dob?></p>
    </div>
        
    <button class="shop-button" onclick="redirect()">Change account details</button>

  </div>

  <div class="order-history">
    <h2>Order History</h2>
    <?php foreach ($orders as $order) { ?>
      <div class="order">
        <div class="order-header">
          <h3>Order #<?=$order->order_id?></h3>
          <p>Date: <?=$order->date?></p>
          <p>Total Paid: £<?=$order->total_paid?></p>
          <p>Status: <?=$order->status?></p>
        </div>
        <?php 
        foreach ($products[$order->order_id] as $product) { ?>
                <div class="order-details">
                  <div class="product">
                    <img src="/images/<?=$product->picture?>" alt="Product">
                    <div class="product-info">
                      <h3><?=$product->title?></h3>
                      <p>Price: £<?=$product->price?></p>
                      <p>Quantity: <?=$quantities[$product->product_id]; ?></li></p>
                    </div>
                  </div>
                </div>
              <?php }
            } 
    ?>
  </div>
</div>
<script>

function redirect() {
  window.location.href = '/page/changeaccountdetails';
}
</script>