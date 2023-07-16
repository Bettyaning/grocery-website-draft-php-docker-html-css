<div class="container">
  <h1>Exisitng accounts</h1>
  <?php
          foreach ($users as $user) { ?>
  <div class="account-details">
    <br>
    <h3>Account Information</h3>
    <div class="details">
      <label>User Id:</label>
      <p><?=$user->user_id?></p>
    </div>
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
    <div class="details">
      <label>Status: </label>
      <p><?php if ($user->access == 1){ ?>
        Admin
        <?php } else { ?>
            Customer
            <?php } ?> </p>
    </div>
        
    <button class="shop-button" onclick="redirect()">Change account details</button>

  </div>
  <?php } ?>

  </div>
<script>

function redirect() {
  window.location.href = '/page/changeaccountdetails';
}
</script>