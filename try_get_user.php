<?php  
session_start();
include("connection.php");
$email = $_SESSION["user"]["email"];
$query = $database->prepare("SELECT * FROM register WHERE email = :email");
$query->bindParam(':email', $email);
$query->execute();
$user = $query->fetch();

if ($user["role"] === "admin") {
    $search = isset($_GET["search"]) ? $_GET["search"] : "";
    $data_user = $database->prepare("SELECT * FROM register WHERE (role != 'admin' OR role IS NULL) AND (firstname LIKE :search OR lastname LIKE :search)");
    $data_user->bindValue(":search", "%" . $search . "%");
    if ($data_user->execute()) {
      $get_data_user = $data_user->fetchAll();
    } else {
      echo "Error";
      die();
    }
  }
  

?>
<html>
<head>
	
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<style>
		.profile-img {
			max-width: 200px;
			max-height: 200px;
			object-fit: cover;
		}

		.action-btns {
			display: flex;
			flex-direction: row;
			align-items: center;
			justify-content: space-between;
		}
	</style>
</head>
<body>

	<div class="container my-5">
		<div class="row justify-content-center">
			<div class="col-md-8">
				<div class="card">
					<div class="card-header">
						<h3>Users</h3>
					</div>

					<div class="card-body">
						<?php
				
                // Code before remains the same
                // ...
                
                if ($user["role"] === "admin") {
                    $page = isset($_GET['page']) ? (int)$_GET['page'] : 1;
                    $perPage = 10;
                    $search = isset($_GET["search"]) ? $_GET["search"] : "";
                
                    $data_user_count = $database->prepare("SELECT COUNT(*) FROM register WHERE (role != 'admin' OR role IS NULL) AND (firstname LIKE :search OR lastname LIKE :search)");
                    $data_user_count->bindValue(":search", "%" . $search . "%");
                    $data_user_count->execute();
                    $total = $data_user_count->fetchColumn();
                
                    $totalPages = ceil($total / $perPage);
                    $offset = ($page - 1) * $perPage;
                
                    $data_user = $database->prepare("SELECT * FROM register WHERE (role != 'admin' OR role IS NULL) AND (id LIKE :search OR firstname LIKE :search OR lastname LIKE :search) LIMIT $perPage OFFSET $offset");
                    $data_user->bindValue(":search", "%" . $search . "%");
                    if ($data_user->execute()) {
                        $get_data_user = $data_user->fetchAll();
                    } else {
                        echo "Error";
                        die();
                    }
                }
                ?>
                <html>
                <head>
                    <!-- Head content remains the same -->
                </head>
                <body>
                    <!-- Body content remains the same -->
                    <?php
                    if($user["role"] === "admin"){
                        echo '<div class="table-responsive" width: 1000px;">
                         <form method="get" class="form-inline my-2 my-lg-0">
                              <input class="form-control mr-sm-2" type="text" placeholder="Search by name" name="search">
                                  <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                                    </form>
                                        <br>
                                        <table class="table">
                                                        <thead>
                                                            <tr>
                                                                <th>الاي دي</th>
                                                                <th> الاسم الاول</th>
                                                                <th>الاسم الاخير</th>
                                                                <th>الايميل</th>
                                                                <th> معاد انشاء الحساب</th>
                                                                <th> الصورة الشخصيه</th>
                                                                <th>تنفيذ</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>';
                        foreach($get_data_user as $result){
                            echo "<tr>";
                            echo "<td>" . $result["id"] . "</td>";
                            echo "<td>" . $result["firstname"] . "</td>";
                            echo "<td>" . $result["lastname"] . "</td>";
                            echo "<td>" . $result["email"] . "</td>";
                            echo "<td>" . $result["login_date"] . "</td>";
                            echo '<td><img src="upload/' . $result["pro_img"] . '" class="profile-img"></td>';
                            echo '<td>
                                                        <div class="action-btns">
                                                            <form method="post">
                                                                <input type="hidden" name="id" value="'. $result['id'] .'">
                                                                <input type="submit" class="btn btn-danger" value="Delete" onclick="return confirm(\'Are you sure you want to delete this user?\');">
                                                            </form>
                                                        </div>
                                                      </td>';
                            echo "</tr>";
                        }
                        echo '</tbody>
                                                    </table>
                                                </div>';
                          
                
						} else {
							echo '<p>Username: ' . $user["username"] . '</p>';
							echo '<p>First name: ' . $user["firstname"] . '</p>';
							echo '<p>Last name: ' . $user["lastname"] . '</p>';
							echo '<p>Email: ' . $user["email"] . '</p>';
							echo '<p>Profile Image: <img src="upload/' . $user["pro_img"] . '" width="100" height="100"></p>';
							echo '<p>' . $user["role"] . '</p>';
						}
						?>
					</div>
				</div>
			</div>
		</div>
	</div>
<?php   
if(isset($_POST['id'])){
    //get the user's id from the form
    $id = $_POST['id'];

    // delete the user from the database
    $query = $database->prepare("DELETE FROM register WHERE id = :id");
    $query->bindParam(':id', $id);
    if($query->execute()){
        //display a message to the user
        echo "User has been deleted.";
        header("Location: profile.php");
    }else{
        echo "Error";
    }
}
?>
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <?php
if ($totalPages > 1) {
    echo '<div class="row justify-content-center mt-4">
            <nav aria-label="Page navigation example">
                <ul class="pagination">';
    for ($i = 1; $i <= $totalPages; $i++) {
        echo '<li class="page-item '.($page == $i ? "active" : "").'"><a class="page-link" href="?page='.$i.'&search='.$search.'">'.$i.'</a></li>';
    }
    echo '</ul>
            </nav>
        </div>';
}
?>
</body>
</html>
</body>
</html>
