<?php
require_once "../includes/dbconfig.php";
require_once "../includes/jdf.php";
//check permission
if(!isset($_SESSION["permission"]) && $_SESSION['permission'] ==0) {
    header("location: index.php");
    exit();
}
$now = time();
$message ='';
$user_id = $_SESSION["userid"];
//test category
$cat = $conn->query("SELECT * FROM `category` ORDER BY `ctitle` ASC");
//submit data
if(isset($_POST['btn_save'])){
	$title = $_POST['title'];
	$catid = $_POST['cat'];
	$description = $_POST['description'];
    $pic = $_FILES['pic']['name'];
	$q = $conn->prepare("INSERT INTO `azmoon` (`title`,`userid`,`catid`,`description`,`pic`,`created_at`,`active`) VALUES (?,?,?,?,?,?,1)");
	$q->bindParam(1,$title);
	$q->bindParam(2,$user_id);
	$q->bindParam(3,$catid);
	$q->bindParam(4,$description);
	$q->bindParam(5,$pic);
	$q->bindParam(6,$now);
	$q->execute();
	if($q){
        move_uploaded_file($_FILES['pic']['tmp_name'],'../img/azmoon/'.$_FILES['pic']['name']);
		header("location: addquestions.php?id=".$conn->lastInsertId());
        exit;
	}
	else{
		header("location: azmoon.php?op=error");
        exit;
	}
}
//edit
if(isset($_GET['edit'])){
    $id = $_GET['edit'];
    $edit = $conn->prepare("SELECT * FROM `azmoon` WHERE `ID`=:id");
    $edit->execute([':id'=>$id]);
    $erows = $edit->fetch();
}
//update data
if(isset($_POST['btn_edit'])){
    $title = $_POST['title'];
    $catid = $_POST['cat'];
    $description = $_POST['description'];
    $pic = $erows['pic'];
    if(!empty($_FILES['pic']['name'])){
        $pic = $_FILES['pic']['name'];
    }
    $q = $conn->prepare("UPDATE `azmoon` SET `title`=?,`catid`=?,`description`=?,`pic`=? WHERE `ID`=?");
    $q->bindParam(1,$title);
    $q->bindParam(2,$catid);
    $q->bindParam(3,$description);
    $q->bindParam(4,$pic);
    $q->bindParam(5,$id);
    $q->execute();
    if($q){
        if(!empty($_FILES['pic']['name'])) {
            move_uploaded_file($_FILES['pic']['tmp_name'], '../img/azmoon/' . $_FILES['pic']['name']);
        }
        header("location: azmoon.php?op=ok&edit=".$id);
        exit;
    }
    else{
        header("location: azmoon.php?op=error");
        exit;
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
        <div class="col-md-2 admin-menu text-center bg-light py-3">
            <?php
            include("menu.php");
            ?>
        </div>
        <div class="col-md-10 admin-content text-right py-3">
            <h4>ایجاد تست</h4>
            <hr>
            <?=$message?>
            <form action="" method="POST" enctype="multipart/form-data">
                <div class="form-group row">
                    <div class="col-md-6">
                        <label>عنوان تست:</label>
                        <input type="text" class="form-control" name="title" value="<?=@$erows['title']?>" required>
                    </div>
                    <div class="col-md-6">
                        <label>دسته بندی:</label>
                        <select name="cat" class="form-control" required>
                            <option value="">انتخاب کنید</option>
                            <?php while($rows = $cat->fetch()) { ?>
                                <option <?=@$erows['catid']==$rows['cid']?'selected':''?> value="<?=$rows['cid']?>"><?=$rows['ctitle']?></option>
                            <?php } ?>
                        </select>
                    </div>
				</div>
				<div class="form-group row">
                   <div class="col-md-12">
                        <label>توضیحات</label>
                        <textarea cols="40" rows="6" class="form-control" name="description"><?=@$erows['description']?></textarea>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-md-12">
                        <label>تصویر</label>
                        <input name="pic" type="file" class="form-control">
                    </div>
                    <?php if(isset($_GET['edit'])){ ?>
                        <div class="col-md-12">
                            <img src="../img/azmoon/<?=@$erows['pic']?>" class="img-fluid" width="200">
                        </div>
                    <?php } ?>
                </div>
                <div class="text-left">
                    <?php if(isset($_GET['edit'])) { ?>
                        <button type="submit" class="btn btn-sm btn-primary" name="btn_edit">ویرایش</button>
                    <?php } else{ ?>
                        <button type="submit" class="btn btn-sm btn-success" name="btn_save">ثبت</button>
                    <?php } ?>
                </div>
            </form>
        </div>
    </div>
</div>
</body>
</html>