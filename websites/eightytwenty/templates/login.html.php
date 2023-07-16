<div class="container2">
    <div class="login-form">
      <h2>Login</h2>
      <form action="/page/login" method="POST">
        <div class="form-group">
          <label for="username">Username</label>
          <input type="text" id="username" name="users[username]" placeholder="Enter your email" required>
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" id="password" name="users[password]" placeholder="Enter your password" required>
        </div>
        <button type="submit">Login</button>
      </form>
      <br>
      <p>Forgot password? <a href="/page/forgotpassword">Reset now</a></p>
    </div>
  </div>
