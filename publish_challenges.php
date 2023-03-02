<?php
session_start();

include("connection.php");
include("header.php");
if(isset($_SESSION["user"]["role"]) == "admin"){

    echo "<div class='publish_con_challenge'>
    <form method='post' enctype='multipart/form-data'>
    <div class='publish_con_challenge_child'>
    <h1> انشر تحدي</h1>
    <input type='text' name='title' placeholder='عنوان اجباري  ! '>
    <input type='text' name='subheading' placeholder=' عنوان فرعي اجباري ! '>
    <input type='file' name='img_title' placeholder='  ! '>
    <textarea  placeholder='محتوي اجباري  ! ' required name='content'> </textarea>
    <input type='text'name='subheading2' placeholder='عنوان فرعي2 اختياري'>
    <textarea name='content2' placholder = 'محتوي 2 اختياري'> </textarea>
    <input type='file'name='img2'>
    <input type='text'name='subheading3' placeholder='عنوان فرعي 3 اختياري'>
    <textarea name='content3' placholder = 'محتوي 3 اختياري'> </textarea>
    <input type='file'name='img3'>
    <input type='text'name='subheading4' placeholder='عنوان فرعي 4 اختياري'>
    <textarea name='content4' placholder = 'محتوي 4 اختياري'> </textarea>
    <input type='file'name='img4'>
    <input type='text'name='subheading5' placeholder='عنوان فرعي 5 اختياري'>
    <textarea name='content5' placholder = 'محتوي 5 اختياري'> </textarea>
    <input type='file'name='img5'>
    <button type='submit' name='publish_btn'> نشر</button>
    </div>
    </form>
    </div>";
    if(isset($_POST["publish_btn"])){
        if (empty($_POST["title"]) || empty($_POST["subheading"]) || empty($_FILES["img_title"]["tmp_name"]) || empty(trim($_POST["content"]))) {
            
            echo "Title, Subheading, Image, and Content are required fields.";
         
          }
        else{
            $admin_id = $_SESSION["user"]["id"];
            $admin_name = $_SESSION["user"]["username"];
            $admin_pro = $_SESSION["user"]["pro_img"];
            $title = $_POST["title"];
            $subheading = $_POST["subheading"] ;
            $img_title = $_FILES["img_title"]["name"];
            $content = $_POST["content"];
            $subheading2 = (isset($_POST["subheading2"])) ? $_POST["subheading2"] : NULL;
            $content2 = (isset($_POST["content2"])) ? $_POST["content2"] : NULL;
            $img2 = (isset($_FILES["img2"])) ? $_FILES["img2"]["name"] : NULL;
            $subheading3 = (isset($_POST["subheading3"])) ? $_POST["subheading3"] : NULL;
            $content3 = (isset($_POST["content3"])) ? $_POST["content3"] : NULL;
            $img3 = (isset($_FILES["img3"])) ? $_FILES["img3"]["name"] : NULL;
            $subheading4 = (isset($_POST["subheading4"])) ? $_POST["subheading4"] : NULL;
            $content4 = (isset($_POST["content4"])) ? $_POST["content4"] : NULL;
            $img4 = (isset($_FILES["img4"])) ? $_FILES["img4"]["name"] : NULL;
            $subheading5 = (isset($_POST["subheading4"])) ? $_POST["subheading4"] : NULL;
            $content5 = (isset($_POST["content5"])) ? $_POST["content5"] : NULL;
            $img5 = (isset($_FILES["img5"])) ? $_FILES["img5"]["name"] : NULL;
            if(isset($content) && !empty($content)){
                if(file_exists("articles")){
                $target_dir = 'D:\xampp\htdocs\php code\hims_final_project\challenges/';
                $target_file = $target_dir . basename($_FILES["img_title"]["name"]);
                if(move_uploaded_file($_FILES["img_title"]["tmp_name"], $target_file)){
                $img_title = $_FILES["img_title"]["name"];
                $img2 = '';
                $img3 = '';
                $img4 = '';
                $img5 = '';
                if(isset($_FILES["img2"]["name"]) && !empty($_FILES["img2"]["name"])){
                $target_file2 = $target_dir . basename($_FILES["img2"]["name"]);
                if(move_uploaded_file($_FILES["img2"]["tmp_name"], $target_file2)){
                $img2 = $_FILES["img2"]["name"];
                }
                if(isset($_FILES["img3"]["name"]) && !empty($_FILES["img3"]["name"])){
                $target_file3 = $target_dir . basename($_FILES["img3"]["name"]);
                if(move_uploaded_file($_FILES["img3"]["tmp_name"], $target_file3)){
                $img3 = $_FILES["img3"]["name"];
                }
                if(isset($_FILES["img4"]["name"]) && !empty($_FILES["img4"]["name"])){
                $target_file4 = $target_dir . basename($_FILES["img4"]["name"]);
                if(move_uploaded_file($_FILES["img4"]["tmp_name"], $target_file4)){
                $img4 = $_FILES["img4"]["name"];
                }
                if(isset($_FILES["img5"]["name"]) && !empty($_FILES["img5"]["name"])){
                $target_file5 = $target_dir . basename($_FILES["img5"]["name"]);
                if(move_uploaded_file($_FILES["img5"]["tmp_name"], $target_file5)){
                $img5 = $_FILES["img5"]["name"];
                }
                }
                }
                }
                }
                $insert_article = $database->prepare("INSERT INTO challenges(admin_id,admin_name,admin_pro,title,subheading,img_title,article,subheading2,content2,img2,subheading3,content3,img3,subheading4,content4,img4,subheading5,content5,img5,create_date)VALUES(:admin_id,:admin_name,:admin_pro,:title,:subheading,:img_title,:content,:subheading2,:content2,:img2,:subheading3,:content3,:img3,:subheading4,:content4,:img4,:subheading5,:content5,:img5,now())");
                $insert_article->bindParam(':admin_id', $admin_id);
                $insert_article->bindParam(':admin_name', $admin_name);
                $insert_article->bindParam(':admin_pro',$admin_pro);
                $insert_article->bindParam(':title', $title);
                $insert_article->bindParam(':subheading', $subheading);
                $insert_article->bindParam(':img_title',$img_title);
                $insert_article->bindParam(':content', $content);
                $insert_article->bindParam(':subheading2', $subheading2);
                $insert_article->bindParam(':content2', $content2);
                $insert_article->bindParam(':img2', $img2);
                $insert_article->bindParam(':subheading3', $subheading3);
                $insert_article->bindParam(':content3', $content3);
                $insert_article->bindParam(':img3', $img3);
                $insert_article->bindParam(':subheading4', $subheading4);
                        $insert_article->bindParam(':content4', $content4);
                        $insert_article->bindParam(':img4', $img4);
                        $insert_article->bindParam(':subheading5', $subheading5);
                        $insert_article->bindParam(':content5', $content5);
                        $insert_article->bindParam(':img5', $img5);
                        if($insert_article->execute()){
                            echo "The article has been published.";
                        }
                    }
                    else{
                        echo "An error occurred while publishing the article.";
                    }
                }
                else{
                    echo "An error occurred while uploading the image.";
                }
            }
            else{
                echo "The content field is empty.";
            }
            
    }
}
}

    
?>


<head>

<link rel="stylesheet" href="css/publish_challenges.css"/>
</head>
<body>
    

</body>
</html>
