
<html>
<head>
<link rel="stylesheet" href="css/books.css"/>
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

$books = $database->prepare("SELECT * FROM books LIMIT $start_from, $result_per_page");
$books->execute();
$result = $books->fetchALL();

?>
<form method="post">
  <div class="parent_search">
    <input type="text" class="search_input" name="article_search" placeholder="ابحث عن الكتب...">
    <button type="submit" class="search_button">
      <svg viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg"><path d="M22.89 21.47l-6.32-6.32a8 8 0 1 0-1.41 1.41l6.32 6.32a1 1 0 0 0 1.41 0 1 1 0 0 0 0-1.41zM4 10a6 6 0 1 1 6 6 6 6 0 0 1-6-6z"/></svg>
    </button>
  </div>
</form>

<?php 
if(isset($_POST["article_search"])){
  $article_search = $_POST['article_search'];
  $article_engine = $database->prepare("SELECT * from books WHERE title Like '%$article_search%'");
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

<div class="books_container">
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
      echo'<div class="books_card">';
      echo'<a href="books_details.php?id='.$re['id'].'">';
      echo '<div class="books_card_header">';
      echo   '<img src="books/'.$re["img_title"].'" alt="">';
      echo '</div>';
      echo  '<div class="books_card_body">';
      echo    '<span class="books_tag tag-teal">books</span>';
      echo "<h4>".substr($re["title"],0,100). "</h4>";
      echo "<p>".substr($re["article"],0,100). "</p>";
      echo  '<div class="book_user">';
      
      echo  '<img src="books/'.$re["admin_pro"].'" alt="">';
     
    
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
 $total_books = $database->prepare("SELECT COUNT(*) FROM books");
$total_books->execute();
$total_books = $total_books->fetchColumn();
$total_pages = ceil($total_books / $result_per_page);
  for ($i=1; $i<=$total_pages; $i++) {
   if($page == $i) {
    echo '<a style="color:black"; class="page-number" href="books.php?page='.$i.'">'.$i.'</a> ';
   } 
   else{
    echo '<a class="page-number" href="books.php?page='.$i.'">'.$i.'</a> ';
   }
   
  }
  ?>
</div>
<?php  include("footer.php")?>
</body>
</html>
</body>
</html>