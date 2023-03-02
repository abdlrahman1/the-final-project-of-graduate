<?php

session_start();
include("connection.php");
include("header.php");

$id = $_GET['id'];

$article = $database->prepare("SELECT * FROM articles WHERE id = :id");
$article->bindParam(':id', $id);
$article->execute();
$result = $article->fetch();

?>

<head>
  <link rel = "stylesheet" href="css/article_details.css"/>
</head>
<?php
   date_default_timezone_set("africa/cairo");
        $postTime = new DateTime($result['create_date']);
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
      ?>
<body>

<div class="article_Con">
<div class="article_header">
<h1> <?php echo $result["title"]?></h1>
<div class="article_subheading">
<h3><?php  echo $result["subheading"]?></h3>
</div>
<div class="header_img">
  <img src = <?php echo "upload/".$result["admin_pro"]?> class="img">
  <div class="name_date">
  <div class="name"> <h4><?php echo $result["admin_name"]?></div> </h4>
  <div class="publish_time"> <?php echo  $timeAgo?></div>
  </div>

</div>


</div>
<hr>
      </hr>
  <div class="con_content">
  <img src="articles/<?php echo $result["img_title"]?>">

  <div class="content">
  <p class="content_pargraph"> <?php  echo $result["article"]?></p>

      </div>



<div class="con_content2"> 
<?php if(!empty($result["subheading2"])){ echo "<h2>".$result["subheading2"]."</h2>";}?>


<?php if(isset($result["img2"])&&$result["img2"]>0){
 echo "<img src='articles/".$result["img2"]."'>";
  }
  ?>
<div class="content_2">
<p class="content_paragraph_2">
    <?php 
        if ($result["content2"]) {
            echo $result["content2"];
        }

    ?>
</p>

</div>
</div>

<div class="con_content3"> 
<?php if(!empty($result["subheading3"])){ echo "<h2>".$result["subheading3"]."</h2>";}?>

<?php if(isset($result["img3"])&&$result["img3"]>0){
 echo "<img src='articles/".$result["img3"]."'>";
  }
  ?>
<div class="content_3">
<p class="content_paragraph_3">
    <?php 
        if ($result["content3"]) {
            echo $result["content3"];
        }

    ?>
</p>

</div>
</div>
<div class="con_content4"> 
<?php if(!empty($result["subheading4"])){ echo "<h2>".$result["subheading4"]."</h2>";}?>

<?php if(isset($result["img4"])&&$result["img4"]>0){
 echo "<img src='articles/".$result["img4"]."'>";
  }
  ?>
<div class="content_4">
<p class="content_paragraph_4">
    <?php 
        if ($result["content4"]) {
            echo $result["content4"];
        }

    ?>
</p>

</div>
</div>

<div class="con_content5"> 
<?php if(!empty($result["subheading5"])){ echo "<h2>".$result["subheading5"]."</h2>";}?>

<?php if(isset($result["img5"])&&$result["img5"]>0){
 echo "<img src='articles/".$result["img5"]."'>";
  }
  ?>
<div class="content_5">
<p class="content_paragraph_5">
    <?php 
        if ($result["content5"]) {
            echo $result["content5"];
        }

    ?>
</p>

</div>
</div>

</div>
</div>


<?php  include("footer.php");?>
</body>



