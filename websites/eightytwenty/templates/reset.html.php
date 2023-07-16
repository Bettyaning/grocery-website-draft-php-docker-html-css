<div class="container-register">
    <h2>Password reset</h2>
    <br>
    <p> Details are correct. Please enter your new password below! </p>
    <br>
    <form action="/page/reset" method="POST">
    <input type='hidden'  name="users[user_id]" value="<?=$user->user_id?>" />
      <div class="form-group-r">
        <label for="password">New Password:</label>
        <input type="text" id="password" name="users[password]" required>
      </div>
      <div class="form-group-r">
        <button type="submit">Reset</button>
      </div>
    </form>
  </div>