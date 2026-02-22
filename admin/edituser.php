<?php
require_once "../includes/dbconfig.php";
//check permission
if(!isset($_SESSION["permission"]) && $_SESSION['permission'] ==0) {
    header("location: index.php");
    exit();
}
$now = time();
$message ='';
//get edit data
if(isset($_GET['edit'])){
	$e = $conn->prepare("SELECT * FROM `users` WHERE `ID`=:id");
	$e->bindParam(':id',$_GET['edit']);
	$e->execute();
	$erows = $e->fetch();
	
}
//edit data
if(isset($_POST['submit'])){
	$u = $conn->prepare("UPDATE `users` SET `name`=? ,`family`=?,`tel`=?,`email`=?,`age`=? WHERE `ID`=?");
	$u->bindParam(1,$_POST['name']);
	$u->bindParam(2,$_POST['family']);
	$u->bindParam(3,$_POST['tel']);
	$u->bindParam(4,$_POST['email']);
	$u->bindParam(5,$_POST['age']);
	$u->bindParam(6,$_POST['id']);
	$u->execute();
	if($u){
		header('location:users.php?op=ok');
	}
	else{
		header('location:users.php?op=error');
	}
}
//message
if(isset($_GET['op'])){
	$op = $_GET['op'];
	switch ($op){
		case 'ok':
		$message = '<div class="alert alert-success text-center">ثبت با موفقیت انجام شد</div>';
		break;
		case 'error':
		$message = '<div class="alert alert-danger text-center">مشکلی پیش آمده مجدد تلاش نمایید</div>';
		break;
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
<div class="container-fluid">
    <div class="row">
        <div class="col-2 admin-menu text-center bg-light py-3">
            <?php
            include("menu.php");
            ?>
        </div>
        <div class="col-10 admin-content text-right py-3">
            <h4>ویرایش کاربران</h4>
            <hr>
            <?=$message?>
            <form action="" method="POST" enctype="multipart/form-data">
			<div class="form-group row">
                    <div class="col-12">
                        <table class="table table-striped table-hover text-center">
							<tr><td>نام</td><td><input name="name" type="text" class="form-control" value="<?=$erows['name']?>"></td></tr>
							<tr><td>نام خانوادگی</td><td><input name="family" type="text" class="form-control" value="<?=$erows['family']?>"></td></tr>
							<tr><td>تلفن</td><td><input name="tel" type="text" class="form-control" value="<?=$erows['tel']?>"></td></tr>
							<tr><td>ایمیل</td><td><input name="email" type="text" class="form-control" value="<?=$erows['email']?>"></td></tr>
							<tr><td>سن</td><td><input name="age" type="text" class="form-control" value="<?=$erows['age']?>"></td></tr>
							<tr><td  class=" text-left" colspan="2"><input name="submit" type="submit" class="btn btn-success" value="ویرایش"></td></tr>
						</table>
					</div>
            </div>
			<input name="id" type="hidden" class="form-control" value="<?=$erows['ID']?>">
            </form>
        </div>
    </div>
</div>
</body>
</html>