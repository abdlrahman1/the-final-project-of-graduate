<?php
session_start();
include("connection.php");
include("header.php");

date_default_timezone_set('africa/cairo'); // Replace with your desired time zone

function time_difference($time) {
    $time_difference = time() - strtotime($time);
    $seconds = $time_difference;
    $minutes = round($time_difference / 60);
    $hours = round($time_difference / 3600);
    if ($seconds < 60) {
        return "الان";
    } elseif ($minutes == 1) {
        return "منذ دقيقه مضت ";
    } elseif ($minutes < 60) {
        return "$minutes منذ دقائق مضت ";
    } elseif ($hours == 1) {
        return "منذ ساعه مضت";
    } elseif ($hours < 24) {
        return "$hours منذ ساعات مضت";
    } else {
        $result = date("F j, Y, g:i a", strtotime($time));
        echo "Result: " . $result . "\n";
        return $result;
    }
}

if(isset($_POST["send"])){
    $username = $_SESSION["user"]["username"];
    $email = $_SESSION["user"]["email"];
    $message = $_POST["message"];
    $parent_id = $_POST["parent_id"];
    $pro_img = $_SESSION["user"]["pro_img"];
    $comments = $database->prepare("INSERT INTO question_answers(username,email,message,parent_comment_id,img_profile) VALUES(:username, :email, :message, :parent_id,:pro_img)");
    $comments->bindParam(':username', $username);
    $comments->bindParam(':email', $email);
    $comments->bindParam(':message', $message);
    $comments->bindParam(':parent_id', $parent_id);
    $comments->bindParam(':pro_img', $pro_img);
    if($comments->execute()){
        // Refresh the page to prevent form resubmission on page refresh
        echo "<meta http-equiv='refresh' content='0'>";
    } else {
        echo "the message was not sent";
    }
}

if (isset($_SESSION["user"])) {
    // User is signed in, show the comment form
    ?>
    
    <?php
    
    // Fetch and display the comments
    $comments_query = $database->query("SELECT * FROM question_answers WHERE parent_comment_id = 0 ORDER BY created_at DESC");
    $comments = $comments_query->fetchAll(PDO::FETCH_ASSOC);
    foreach ($comments as $comment) {
        ?>
        <div class="comment-container">
            <div class="comment">
                <div class="con_details">
        
                <img src= "upload/<?php echo $comment['img_profile'];?>" alt="profile image">
                <div class="name_date">    <strong class="username"> <?php echo $comment['username']; ?></strong> 
                <span class="time"><?php echo time_difference($comment['created_at']); ?></span>
              </div>
    
                  </div>
                   <div class="comment_message"><span class="message"><?php echo $comment['message']; ?></span>
                
                </div>
                
                <?php if ($_SESSION["user"]["role"] == "admin") { ?>
                    <form method="post" action="delete_comment.php">
                        <input type="hidden" name="comment_id" value="<?php echo $comment['id']; ?>">
                        <button type="submit">حذف</button>
                    </form>
                <?php } ?>
            
                <?php
            // Fetch and display replies for this comment
            $replies_query = $database->prepare("SELECT * FROM question_answers WHERE parent_comment_id = :comment_id ORDER BY created_at ASC");
            $replies_query->bindParam(':comment_id', $comment['id']);
            $replies_query->execute();
            $replies = $replies_query->fetchAll(PDO::FETCH_ASSOC);
            foreach ($replies as $reply) {
                ?>
                <div class="reply-container">
                    <div class="reply">
                        <div class="con_details">
                        <img src= "upload/<?php echo $reply['img_profile'];?>" alt="profile image">
                        <div class="name_date">    <strong class="username"> <?php echo $reply['username']; ?></strong> 
                        <span class="time"><?php echo time_difference($reply['created_at']); ?></span>
                      </div>
                          </div>
                         <div class="reply_message"><span class="message"><?php echo $reply['message']; ?></span></div>
                        <?php if ($_SESSION["user"]["role"] == "admin") { ?>
                          
                            <form method="post" action="delete_comment.php">
                                <input type="hidden" name="comment_id" value="<?php echo $reply['id']; ?>">
                                <button type="submit">حذف</button>
                            </form>
                        <?php } ?>
                    </div>
                </div>
                <?php
            }
            ?>
            
            <!-- Reply form -->
            <div class="reply-form-container">
                <button class="reply-btn">رد</button>
                <div class="reply-form">
                    <form method="post">
                        <input type="hidden" name="parent_id" value="<?php echo $comment['id']; ?>">
                        <textarea name="message" placeholder="Your reply"></textarea>
                        <button type="submit" name="send">ارسال</button>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <?php
}
echo '<form method="post" class="comment-form">
<input type="hidden" name="parent_id" value="0">
    <label for="message"> اترك تعليقآ</label>
    <textarea name="message" required></textarea>
    <button type="submit" name="send">ارسال</button>
</form>';
} else {
    // User is not signed in, show a message to sign in
    ?>
    <p>من فضلك قم بتسجيل الدخول لامكانية رؤيه التعليقات والرد</p>
    <?php
    }
    
  include("footer.php");  
?>
<head>
    <script>
 document.addEventListener("DOMContentLoaded", function() {
  var replyBtns = document.querySelectorAll(".reply-btn");
  for (var i = 0; i < replyBtns.length; i++) {
    replyBtns[i].addEventListener("click", function() {
      var form = this.nextElementSibling;
      if (form.style.display === "none") {
        form.style.display = "block";
      } else {
        form.style.display = "none";
      }
    });
  }
});

        </script>
<link rel="stylesheet"href="css/question_answers.css"/>
</head>