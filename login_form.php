
<head>
    <link rel="stylesheet" href="css/all.min.css"/>
    <link rel="stylesheet" href="css/login.css"/>
</head>
<body>
    <form method="post">
        <div class="con" id="login_con">
        <i class="fa-solid fa-xmark remove_mark_login"></i>
            <h1> sign in</h1>
            <div class="icons"> 
                <div class="icon"><i class="fa-regular fa-user"></i></div>
            </div>
            <p> or use your account</p>
            <div class="input_con">
                <input type="text" class="username_input" placeholder="email" name="log_email">
                <input type="password" class="password_input" placeholder="password" name="log_pass">
            </div>
            <div class="login_links">
                <a href="forgot-password"> forgot your password?</a>
                <a href="register"> dont have an account?</a>
            </div>
            <div class="login_btn">
                <button type="submit" name="log_btn">SIGN IN</button>
            </div>
        </div>
    </form>
</body>
</html>
<script src="js/login.js"></script>


<?php
//login form 
if(isset($_POST["log_btn"])){
  $email_log = $_POST["log_email"];
  $pass_log = $_POST["log_pass"];

  $login = $database->prepare("SELECT * FROM register WHERE email = :email_log AND password = :pass_log");
  $login->bindParam(':email_log', $email_log);
  $login->bindParam(':pass_log', $pass_log);
  $login->execute();

  if($login->rowCount()>0){
      $user = $login->fetch();
      $_SESSION['user'] = $user;
      echo "<script>window.location.href = 'index.php';</script>";
  } else {
      $error = "Invalid email or password";
      echo "<div class='alert errorlog'>" . $error . "</div>";
  }
}

?>