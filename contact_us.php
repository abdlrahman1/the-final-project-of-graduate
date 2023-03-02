
<head>
  <link rel="stylesheet" href="css/contact_us.css"/>
</head>

<?php
session_start();
include("connection.php");
include("header.php");

if(isset($_POST["btn_contact_us"])){

  $name = $_POST["contact_us_full_name"];
  $email = $_POST["contact_us_email"];
  $phone = $_POST["contact_us_phone_number"];
  $message = $_POST["contact_us_message"];
  $ip = $_SERVER['REMOTE_ADDR'];
  $error = "";
  //check for valid name
  if (!preg_match("/^[a-zA-Z ]*$/",$name)) {
    $error .= "Only letters and white space allowed in name.<br>"; 
  }
  //check for valid email
  if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    $error .= "Invalid email format.<br>"; 
  }
  //check for valid phone number
  if(!preg_match("/^[0-9]{11}$/", $phone)) {
    $error .= "Invalid phone number format, must be 11 digits.<br>";
  }

  //if no errors were found, insert into database
  if($error == "") {
    $contact_us = $database->prepare("INSERT INTO contact_us(name,phone,email,message,time_message,user_ip)VALUES(:name,:phone,:email,:message,now(),:ip)");
    $contact_us->bindParam(':name',$name);
    $contact_us->bindParam(':email',$email);
    $contact_us->bindParam(':phone',$phone);
    $contact_us->bindParam(':message',$message);
    $contact_us->bindParam(':ip',$ip);
    $contact_us->execute();

    if($contact_us->rowCount() > 0) {
      echo "<div class='alert success'>Your message was sent to the admin.</div>";
      echo "<meta http-equiv='refresh' content='2'>";
      exit();
    } else {
      echo "<div class='alert error'>Please try again.</div>";
    }
    
  } else {
    echo "<div class='alert error'>" . $error . "</div>";
  }
}  
?>


<body>
  <form method="post">
    <div class="contact_us_parent">
      <div class="inputs">
        <h1> ارسل لنا رسالة</h1>
        <input type="text" class="input" placeholder="الاسم بالكامل" name="contact_us_full_name"> 
        <input type="text" class="input" placeholder="الايميل" name="contact_us_email"> 
        <input type="text" class="input" placeholder="رقم الهاتف" name="contact_us_phone_number"> 
        <textarea class="textarea" placeholder="رسالتك" name="contact_us_message"></textarea>
        <button type="submit" class="send" name="btn_contact_us">ارسال</button>
      </div>
    </div>
  </form>

  <?php include("footer.php");?>
</body>
</html>
