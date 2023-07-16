<div class="container-register">
    <h2>Password reset</h2>
    <br>
    <p> To reset your password, please type in your email address (username) and select your date of birth. </p>
    <br>
    <form action="/page/forgotpassword" method="POST">
      <div class="form-group-r">
        <label for="username">Email (username):</label>
        <input type="text" id="username" name="users[username]" required>
      </div>
      <div class="form-group-r">
        <label for="fullname">Date of Birth:</label>
        <input type="date" id="dob" name="users[dob]" required>
      </div>
      <div class="form-group-r">
        <button type="submit">Reset</button>
      </div>
    </form>
  </div>