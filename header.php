

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/header.css"/>
    
</head>
<body>
<header>
  <div class="menu-bar">
  <i class="fa-solid fa-x" onclick="toogle_menu()"> </i>
    <a class="menu-bar-home" href="index.php"> الصفحه الريئسية </a>
    <a class="menu-bar-contact_us" href="contact_us.php"> اتصل بنا </a>
    <a class="menu-bar-about" href="about_us.php"> عنا </a>
   <a href="books.php">الكتب</a>
        <a href="articles.php">المقالات</a>
        <a href="challenges.php"> التحديات</a>
    <a class="menu-bar-login" onclick="login_menu()" id="login_menu">تسجيل الدخول</a>
    <a class="menu-bar-register" onclick="signup_menu()" id="signup_menu">انشاء حساب</a>
    <a href="admin_dashboard.php" id="admin_dashboard_menu"> لوحه تحكم الادمن </a>
    <a href="logout.php" id="logout_menu"> تسجيل خروج</a>
  </div>
  <div class="menu" id="menu" onclick="toogle()"> <i class="fa-solid fa-bars" id="ss" ></i></div>
  <ul class="parent-ul">
    <li><a href="index.php"> الصفحه الريئسية </a></li>
    <li> <a href="contact_us.php"> اتصل بنا </a></li>
    <li> <a href="about_us.php"> عنا </a></li>
    <li id="admin_dashboard"> <a href="admin_dashboard.php"> لوحه تحكم الادمن </a></li>
    <li onclick="signup()" id="signup">انشاء حساب |</li>
    <li onclick="login()" id="login"> تسجيل دخول</li>
    <li id="logout"><a href="logout.php"> تسجيل خروج</a></li>
    <li class="parent-links">الروابط الجديدة
   
      <ul class="child-links">
        <li><a href="books.php">الكتب</a></li>
        <li><a href="articles.php">المقالات</a></li>
        <li><a href="challenges.php"> التحديات</a></li>
        <li><a href="question_answers.php"> سؤال وجواب </a></li>
      </ul>
    </li>
  </ul>

  <div class="logo-parent">
  <div class="profile"> <a href="profile.php"> <?php echo substr($_SESSION["user"]["username"],0,1)?> </a></div>
  <img src="img/logo2.png" class="logo"> 

</div>
  
</header>


<div class="black"></div>
<div class= "scroll-btn"> UP  </div>
</body>
<?php 
include("signup_form.php");
include("login_form.php");  
?>


<?php if(isset($_SESSION['user'])){ ?>

<?php 
echo "<script> document.getElementById('signup').style.display ='none';
document.getElementById('signup_menu').style.display ='none';
document.getElementById('login').style.display = 'none';
document.getElementById('login_menu').style.display = 'none';
document.getElementById('logout_menu').style.display='block';
document.getElementById('logout').style.display='flex';
document.getElementById('admin_dashboard_menu').style.display='block';
document.querySelector('.profile').style.display='block';

</script>";

if(isset($_SESSION["user"]["role"])=="Admin"){
    echo "<script>;
     document.getElementById('admin_dashboard').style.display='flex';

     </script>";
 }
}?>
<script src="js/header.js"> </script>


</html>