
  <div class="order-history">
    <h1>Active Orders</h1>
    <br>
    <button class="shop-button" onclick="redirect()">See fulfilled orders</button>
    <br>
    <br>

    <?php foreach ($orders as $order) { ?>
      <div class="order">
        <div class="order-header">
          <h3>Order #<?=$order->order_id?></h3>
          <p>Date: <?=$order->date?></p>
          <p>Total Paid: £<?=$order->total_paid?></p>
          <p>Customer: <?=$order->name?></p>
          <p>Shipping address: <?=$order->address . ' ' . $order->city . ' ' . $order->postcode;?></p>
          <p>Current Status: <?=$order->status?></p>
          <form method="POST" action="/admin/changestatus">
                    <input type="hidden" name="orders[order_id]" value="<?=$order->order_id?>">
                    <select name="orders[status]">
                    <option value="Despatched">Proccesing</option>
                    <option value="Despatched">On Hold</option>
					<option value="Despatched">Despatched</option>
                    <option value="Cancelled">Cancelled</option>
                    <option value="Completed">Completed</option>
				</select>
                    <button type="submit">Change order status</button>
                    </form>
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

  <script>

function redirect() {
  window.location.href = '/admin/fulfilled';
}
</script>