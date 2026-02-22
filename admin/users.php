<?php
require_once "../includes/dbconfig.php";
require_once "../includes/jdf.php";
//check permission
if(!isset($_SESSION["permission"]) && $_SESSION['permission'] ==0) {
    header("location: index.php");
    exit();
}
//get all data
$result = $conn->query("SELECT * FROM users ORDER BY `ID` DESC");
//delete
if (isset($_GET['delete']) && !empty($_GET['delete'])) {
    $delete_id = $_GET['delete'];
    $sql = "DELETE FROM users WHERE ID = :user_id";
    $query = $conn->prepare($sql);
    $query->bindParam(':user_id', $delete_id);
    $query->execute();
    $success = "کاربر مورد نظر حذف شد.";
}
//change status
if(isset($_GET['status'])){
	$u = $conn->prepare("UPDATE `users` SET `status`=:st WHERE `ID`=:id");
	$u->bindParam(':st',$_GET['status']);
	$u->bindParam(':id',$_GET['id']);
	$u->execute();
	if($u){
		 header("location: users.php?ok");
	}
}
?>
<!doctype html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>پنل مدیریت</title>
    <!-- css -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/adminlte.min.css">
    <link rel="stylesheet" href="../css/admin.css">
    <!-- js -->
    <script src="../js/jquery-3.5.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/adminlte.min.js"></script>
    <!-- js sweetalert2 -->
    <script src="../js/sweetalert2@11.js"></script>
    <!-- icon -->
    <script src="../js/all.js"></script>
</head>
<body>
<?php
if (isset($success)) {
    ?>
    <script>
        swal.fire({
            title: 'موفق',
            text: "<?php echo $success?>",
            icon: 'success',
            confirmButtonText: 'باشه'
        }).then((result) => {
            if (result.isConfirmed) {
                window.location = "users.php";
            } else {
                window.location = "users.php";
            }
        })
    </script>
    <?php
}
?>
<div class="container-fluid">
    <div class="row">
        <div class="col-2 admin-menu text-center bg-light py-3">
            <?php
            include("menu.php");
            ?>
        </div>
        <div class="col-10 admin-content text-right py-3">
            <h4>کل کاربران</h4>
            <table class="table table-striped table-hover text-center">
                <thead>
                <tr>
                    <th>#</th>
                    <th>نام</th>
                    <th>نام خانوادگی</th>
                    <th>نام کاربری</th>
                    <th>دسترسی</th>
                    <th>عضویت</th>
					<th>عملیات</th>
                </tr>
                </thead>
                <tbody>
                <?php $id = 1; while ($rows = $result->fetch()) { ?>
                        <tr>
                            <td><?php echo $id++ ?></td>
                            <td><?php echo $rows['name'] ?></td>
                            <td><?php echo $rows['family'] ?></td>
                            <td><?=$rows['username']?></td>
                            <td><?php
                                switch ($rows['status']) {
                                    case 0:
                                        echo "کاربر";
                                        break;
                                    case 1:
                                        echo "مدرس";
                                        break;
									case 2:
										echo 'مدیر';
										break;
                                } ?></td>
							<td><?=jdate('Y/m/d',$rows['created_at'])?></td>
							<td>
							<?php if($rows['status']!=2){?>
							<a href="users.php?status=<?=$rows['status']==0?1:0?>&id=<?=$rows['ID']?>"><?=$rows['status']==0?'<span class="btn btn-xs btn-warning">مدرس</span>':'<span class="btn btn-xs btn-info">کاربر</span>'?></a>
							<?php } ?>
							<a href="edituser.php?edit=<?=$rows['ID']?>" class="btn btn-xs btn-primary">ویرایش</a>
								<?php if($rows['status']!=2){?>
                                <a href="users.php?delete=<?php echo $rows['ID'] ?>"
                                   class="btn btn-xs btn-danger">حذف</a>
								<?php } ?>
                            </td>
                        </tr>
                        <?php } ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>