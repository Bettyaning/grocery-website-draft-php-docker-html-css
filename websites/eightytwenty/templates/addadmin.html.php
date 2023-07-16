<div class="container-register">
    <h2>Admin creation</h2>
    <form action="/page/register" method="POST">
      <div class="form-group-r">
        <label for="username">Email (username):</label>
        <input type="text" id="username" name="users[username]" required>
      </div>
      <div class="form-group-r">
        <label for="fullname">Full Name:</label>
        <input type="text" id="fullname" name="users[full_name]" required>
      </div>
      <div class="form-group-r">
            <label for="dob">Date of Birth:</label>
            <input type="date" id="dob" name="users[dob]" required onchange="validateDateOfBirth()">
            <span id="dobError" style="color: red;"></span>
        </div>
      <div class="form-group-r">
        <label for="password">Password:</label>
        <input type="password" id="password" name="users[password]" required>
      </div>
      <input type='hidden' id="access" name="users[access]" value="1" />
      <div class="form-group-r">
      <button type="submit" id="registerButton" disabled>Create</button>
      </div>
    </form>
  </div>
  <script>
    function validateDateOfBirth() {
        var dobInput = document.getElementById("dob");
        var selectedDate = new Date(dobInput.value);
        var currentDate = new Date();
        var registerButton = document.getElementById("registerButton");

        if (selectedDate > currentDate) {
            document.getElementById("dobError").textContent = "Date of birth cannot be in the future.";
            registerButton.disabled = true;
        } else {
            var minDate = new Date();
            minDate.setFullYear(minDate.getFullYear() - 16);
            if (selectedDate > minDate) {
                document.getElementById("dobError").textContent = "You must be at least 16 years old.";
                registerButton.disabled = true;
            } else {
                document.getElementById("dobError").textContent = "";
                registerButton.disabled = false;
            }
        }
    }
</script>