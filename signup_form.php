<?php include("connection.php");?>
<html>
<head>
    <link rel="stylesheet" href="css/all.min.css"/>
    <link rel="stylesheet" href="css/signup.css"/>

</head>
<body>
    <form method="POST" enctype="multipart/form-data" class="form" action="index.php">
        <div class="sign_up_con" id="signup_con">
            <i class="fa-solid fa-x remove_mark_signup"></i>
            <h1>Sign Up</h1>
            <div class="icons"> 
                <div class="icon"><i class="fa-regular fa-user"></i></div>
            </div>
            <p>Or use your account</p>
            <div class="input_con">
                <div class="username_div" style="display:none">
                    <span class="error">Please enter a valid username</span>
                </div>
                <input type="text" class="username_input" placeholder="Username" name="username" id="username">
                <div class="firstname_div"style="display:none">
                    <span class="error">Please enter a valid first name</span>
                </div>

                <input type="text" class="username_input" placeholder="First Name" name="firstname" id="firstname">
                <div class="lastname_div" style="display:none">
                    <span class="error">Please enter a valid last name</span>
                </div>
                <input type="text" class="username_input" placeholder="Last Name" name="lastname" id="lastname">
                <div class="email_div" style="display:none">
                    <span class="error">Please enter a valid email address</span>
                </div>
                <input type="email" class="username_input" placeholder="Email" name="email" id="email">
                <div class="password_div" style="display:none">
                    <span class="error">Please enter a valid password</span>
                </div>
                <input type="password" class="password_input" placeholder="Password" name="password" id="password">
                <input type="file" name="img" id="img">
            </div>
            <div class="login_links">
                <a href="login">Already have an account?</a>
            </div>
            <div class="login_btn">
            <button class="button" type="submit" name="btn" id="submitBtn" onclick="return validateForm();">Sign Up</button>

            </div>
        </div>
    </form>

</body>

</html>




<?php

if(isset($_POST["btn"]) && isset($_FILES["img"]) && !empty($_POST["username"]) && !empty($_POST["firstname"]) && !empty($_POST["lastname"]) && !empty($_POST["email"]) && !empty($_POST["password"])) {
  
    $username = $_POST["username"];
    $fname = $_POST["firstname"];
    $lname = $_POST["lastname"];
    $email = $_POST["email"];
    $password = $_POST["password"];
    $img = $_FILES["img"]["name"];
    $img_temp = $_FILES["img"]["tmp_name"];
    $img_size = $_FILES["img"]["size"];
    $_SESSION["name"] = $fname;
    $img_extension = pathinfo($img, PATHINFO_EXTENSION);
    $allowed_extensions = ["png", "jpg", "jpeg"];

    // check if email or username already exists
    $check_query = $database->prepare("SELECT email FROM register WHERE email = :email or username = :username");
    $check_query->bindParam(':email', $email);
    $check_query->bindParam(':username', $username);
    $check_query->execute();
    if($check_query->rowCount() > 0){
        $error_reg =  "This email or username address is already registered";
        echo "<div class=' error_reg error'>" . $error_reg . "</div>";
    } else {
        if(in_array($img_extension, $allowed_extensions)){
            if($img_size < 3000000){
                $upload_dir = 'D:\xampp\htdocs\php code\hims_final_project\upload/';
                $timestamp = time();
                $random_number = rand(1000, 9999);
                $new_img_name = $timestamp . '_' . $random_number . '.' . $img_extension;
                $img_path = $upload_dir . $new_img_name;
                if(move_uploaded_file($img_temp, $img_path)){
                    // insert the user into the database
                    $insert = $database->prepare("INSERT INTO register(username,firstname,lastname,email,password,pro_img,login_date)VALUES (:username,:firstname,:lastname,:email,:password,:img,now())");
                    $insert->bindParam(':username', $username);
                    $insert->bindParam(':firstname', $fname);
                    $insert->bindParam(':lastname', $lname);
                    $insert->bindParam(':email', $email);
                    $insert->bindParam(':password', $password);
                    $insert->bindParam(':img', $new_img_name);
                    $insert->execute();
                    if($insert->rowCount() > 0){
                        $success_insert = "your email registed success";
                        echo "<div class='success success_reg'>" . $success_insert . "</div>";
                    }
                } else {
                    $error_reg = "Error uploading image";
                    echo "<div class=' error_reg error'>" . $error_reg . "</div>";
                }
            } else {
                $error_reg = "the img size is too large";
                echo "<div class=' error_reg error'>" . $error_reg . "</div>";
            }
        } else {
            $error_reg = "please insert a png or jpg photo";
                    echo "<div class=' error_reg error'>" . $error_reg . "</div>";
    
        }
    }
}

?>
<script src="js/signup.js"> </script>