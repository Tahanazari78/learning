<?php
require_once "../includes/dbconfig.php";
//check permission
if(!isset($_SESSION["permission"]) && $_SESSION['permission'] ==0) {
    header("location: index.php");
    exit();
}
$now = time();
$message ='';

//categories type
	$cat = "SELECT * FROM `category` ORDER BY `ctitle` ASC";
	$rcat = $conn->prepare($cat);
	$rcat->execute();

//submit data
	if(isset($_POST['btn_save'])){
		$title = $_POST['title'];
        $pic = $_FILES['pic']['name'];
		$q = $conn->prepare("INSERT INTO `category` (`ctitle`,`pic`) VALUES (?,?)");
		$q->bindParam(1,$title);
		$q->bindParam(2,$pic);
		$q->execute();
		if($q){
            move_uploaded_file($_FILES['pic']['tmp_name'],'../img/cat/'.$_FILES['pic']['name']);
			header("location: category.php?op=ok");
		}
		else{
			header("location: category.php?op=error");
		}
	}
//edit
if(isset($_GET['edit'])){
	$edit = $conn->prepare("SELECT * FROM `category` WHERE `cid`=:id");
	$edit->bindParam(':id',$_GET['edit']);
	$edit->execute();
	$row = $edit->fetch();
}

if(isset($_POST['btn_edit'])){
    $title = $_POST['title'];
    $pic = $row['pic'];
    if(!empty($_FILES['pic']['name']))
    $pic = $_FILES['pic']['name'];
	$q=$conn->prepare("UPDATE `category` SET `ctitle`=:title,`pic`=:pic WHERE `cid`=:id");
	$q->bindParam(':title',$title);
	$q->bindParam(':pic',$pic);
	$q->bindParam(':id',$row['cid']);
	$q->execute();
	if($q){
        if(!empty($_FILES['pic']['name']))
        move_uploaded_file($_FILES['pic']['tmp_name'],'../img/cat/'.$_FILES['pic']['name']);
		header("location: category.php?op=ok");
	}
	else{
		header("location: category.php?op=error");
	}
}

//delete
if(isset($_GET['delete'])){
	$d = $conn->prepare("DELETE FROM `category` WHERE `cid`=:id");
	$d->bindParam(':id',$_GET['delete']);
	$d->execute();
	if($d){
			header("location: category.php?op=ok");
		}
		else{
			header("location: category.php?op=error");
		}
}
if(isset($_GET['op'])){
	$op = $_GET['op'];
	switch ($op){
		case 'ok':
		$message = '<div class="alert alert-success text-center">عملیات با موفقیت انجام شد</div>';
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
            <h4>دسته بندی تست ها</h4>
            <hr>
            <?=$message?>
            <form action="" method="POST" enctype="multipart/form-data">
                <div class="form-group row">
                    <div class="col-12">
                        <label>عنوان:</label>
                        <input type="text" class="form-control" name="title" placeholder="عنوان را درج نمایید" value="<?=@$row['ctitle']?>" required>
                    </div>
                    <div class="col-md-12">
                        <label>تصویر</label>
                        <input name="pic" type="file" class="form-control">
                    </div>
                    <?php if(isset($_GET['edit'])){ ?>
                        <div class="col-md-12">
                            <img src="../img/cat/<?=@$row['pic']?>" class="img-fluid" width="200">
                        </div>
                    <?php } ?>
				</div>
                <div class="text-right">
				<?php if(isset($_GET['edit'])){ ?>
					<button type="submit" class="btn btn-primary" name="btn_edit">ویرایش</button>
				<?php }else{ ?>
                    <button type="submit" class="btn btn-success" name="btn_save">ثبت</button>
				<?php } ?>
                </div>
            </form>
		<div class="col-12 admin-content py-3">
		<form action="" method="POST">
            <table class="table table-striped table-hover text-center">
                <thead>
                <tr>
                    <th>#</th>
                    <th>عنوان</th>
                    <th>تست ها</th>
					<th>عملیات</th>
                </tr>
                </thead>
                <tbody>
				<?php $count=0; while($row = $rcat->fetch()){ $count++; 
						$q = $conn->prepare("SELECT `catid` FROM `azmoon` WHERE `catid`=:id");
						$q->bindParam(':id',$row['cid']);
						$q->execute();
				?>
				<tr>
				<td><?=$count?></td>
				<td><?=$row['ctitle']?></td>
				<td><?=$q->rowCount()?></td>
				<td><a href="category.php?delete=<?=$row['cid']?>" class="btn btn-xs btn-danger">حذف</a>
                    <a href="category.php?edit=<?=$row['cid']?>" class="btn btn-xs btn-primary">ویرایش</a></td>
				</tr>
				<?php } ?>
				</tbody>
				</table>
		</form>
		</div>
    </div>
</div>
</body>
</html>