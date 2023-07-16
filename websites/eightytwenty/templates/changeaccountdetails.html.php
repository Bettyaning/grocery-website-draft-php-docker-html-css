<div class="container-register">
    <h2>Change details</h2>
    <form action="/page/changeaccountdetails" method="POST">
    <input type='hidden' name="users[user_id]" value="<?= $user->user_id ?>" />
      <div class="form-group-r">
        <label for="username">Email (username):</label>
        <input type="text" id="username" name="users[username]" value="<?= $user->username ?>" required>
      </div>
      <div class="form-group-r">
        <label for="fullname">Full Name:</label>
        <input type="text" id="fullname" name="users[full_name]" value="<?= $user->full_name ?>" required>
      </div>
      <div class="form-group-r">
        <button type="submit">Save changes</button>
      </div>
    </form>
  </div>