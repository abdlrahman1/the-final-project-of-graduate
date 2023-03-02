<html>
<head>
    <link rel = "stylesheet" href="css/challenges.css">
</head>
<body>

<?php
session_start();
include("connection.php");
include("header.php");

date_default_timezone_set('Africa/cairo');
$result_per_page = 8;
$page = 1;

if(isset($_GET['page'])) {
  $page = $_GET['page'];
}

$start_from = ($page-1) * $result_per_page;

$aritcles = $database->prepare("SELECT * FROM challenges LIMIT $start_from, $result_per_page");
$aritcles->execute();
$result = $aritcles->fetchALL();

?>
<form method="post">
  <div class="parent_search">
    <input type="text" class="search_input" name="article_search" placeholder="Search...">
    <button type="submit" class="search_button">
      <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path d="M22.89 21.47l-6.32-6.32a8 8 0 1 0-1.41 1.41l6.32 6.32a1 1 0 0 0 1.41 0 1 1 0 0 0 0-1.41zM4 10a6 6 0 1 1 6 6 6 6 0 0 1-6-6z"/></svg>
    </button>
  </div>
</form>
<?php 
if(isset($_POST["article_search"])){
  $article_search = $_POST['article_search'];
  $article_engine = $database->prepare("SELECT * from challenges WHERE title Like '%$article_search%'");
  $article_engine->execute();
  $result = $article_engine->fetchAll();
if(!empty($result)){
  if(count($result)>0){
    "its found";
  }
}
else{
  echo "please insert a value";
}

}
?>
<div class="challenges_container">
  <?php
    foreach ($result as $re) {
      $postTime = new DateTime($re['create_date']);
      $currentTime = new DateTime();
      $interval = $currentTime->diff($postTime);
      $timeAgo = '';
      if ($interval->y >= 1) {
        $timeAgo = $interval->y . ' years ago';
      } elseif ($interval->m >= 1) {
        $timeAgo = $interval->m . ' months ago';
      } elseif ($interval->d >= 1) {
        $timeAgo = $interval->d . ' days ago';
      } elseif ($interval->h >= 1) {
        $timeAgo = $interval->h . ' hours ago';
      } elseif ($interval->i >= 1) {
        $timeAgo = $interval->i . ' minutes ago';
      } else {
        $timeAgo = 'Less than a minute ago';
      }
      echo'<div class="challenges_card">';
      echo'<a href="challenges_details.php?id='.$re['id'].'">';
      echo '<div class="challenges_card_header">';
      echo   '<img src="challenges/'.$re["img_title"].'" alt="">';
      echo '</div>';
      echo  '<div class="challenges_card_body">';
      echo    '<span class="challenges_tag tag-teal">challenges</span>';
      echo    '<h4>'.$re['title'].'<h4>';
      echo "<p>".substr($re["article"],0,100). "</p>";
      echo  '<div class="user">';
      
      echo  '<img src="upload/'.$re["admin_pro"].'" alt="">';
     
    
      echo   '<div class="user-info">';
      echo     '<h5>'.$re['admin_name'].'<h5>';
      echo     '<small>'.$timeAgo.'</small>';
      echo    '</div>';
      echo   '</div>';
      echo  '</div>';
      echo  '</div>';
      echo '</a>';
    }
    
    ?>
    
    </div>
    <div class="pagination">
  <?php
 $total_articles = $database->prepare("SELECT COUNT(*) FROM challenges");
$total_articles->execute();
$total_articles = $total_articles->fetchColumn();
$total_pages = ceil($total_articles / $result_per_page);
  for ($i=1; $i<=$total_pages; $i++) {
   if($page == $i) {
    echo '<a style="color:black"; class="page-number" href="challenges.php?page='.$i.'">'.$i.'</a> ';
   } 
   else{
    echo '<a class="page-number" href="challenges.php?page='.$i.'">'.$i.'</a> ';
   }
   
  }

  ?>
</div>
<?php include("footer.php")?>
</body>
</html>
</body>
</html>