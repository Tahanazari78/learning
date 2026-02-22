<?php
require_once "../includes/dbconfig.php";
//check permission
if(!isset($_SESSION["permission"]) && $_SESSION['permission'] ==0) {
    header("location: index.php");
    exit();
}
$message='';
//get data
$data = $conn->query("SELECT * FROM `sentence` order by `id` desc");
$cat = $conn->query("SELECT * FROM `category` ORDER BY `ctitle` ASC");
//submit data
if(isset($_POST['btn_save'])) {
    $content = $_POST['content'];
    $cat = $_POST['cat'];
    $data = $conn->prepare("INSERT INTO `sentence` (`content`,`cat`) VALUES (?,?)");
    $data->bindParam(1,$content);
    $data->bindParam(2,$cat);
    if($data->execute()){
        header('location:sentence.php?op=ok');
        exit();
    }
    else{
        header('location:sentence.php?op=error');
        exit();
    }
}
//edit data
if(isset($_GET['edit'])){
    $id = $_GET['edit'];
    $edit = $conn->prepare("SELECT * FROM `sentence` WHERE `id`=?");
    $edit->bindParam(1,$id);
    $edit->execute();
    $erows = $edit->fetch();
}
//update data
if(isset($_POST['btn_update'])){
    $id = $_GET['edit'];
    $content = $_POST['content'];
    $cat = $_POST['cat'];
    $data = $conn->prepare("UPDATE `sentence` SET `content`= ?,`cat`=? WHERE `id`=?");
    $data->bindParam(1,$content);
    $data->bindParam(2,$cat);
    $data->bindParam(3,$id);
    if($data->execute()){
        header('location:sentence.php?op=ok');
        exit();
    }
    else{
        header('location:sentence.php?op=error');
        exit();
    }
}
//delete
if(isset($_GET['delete'])){
    $id = $_GET['delete'];
    $q = $conn->query("DELETE FROM `sentence` WHERE `id`='$id'");
    header('location:sentence.php?op=ok');
    exit();
}
//message
if(isset($_GET['op'])){
    switch ($_GET['op']){
        case 'ok':
            $message = '<div class="alert alert-success">عملیات با موفقیت انجام شد.</div>';
            break;
        case 'error':
            $message = '<div class="alert alert-danger">مشکلی پیش آمده مجدد تلاش نمایید.</div>';
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
            <h4>تیکه کدهای کاربردی</h4>
            <hr>
            <?=@$message?>
            <form action="" method="POST" enctype="multipart/form-data">
                <div class="form-group row">
                    <div class="col-md-12">
                        <label>تیکه کد:</label>
                        <textarea class="form-control" rows="10" name="content"><?=@$erows['content']?></textarea>
                    </div>
                </div>
                <div class="form-group row">
                    <div class="col-md-12">
                        <label>دسته:</label>
                        <select name="cat" class="form-control" required>
                            <option value="">انتخاب کنید</option>
                            <?php while($rows = $cat->fetch()) { ?>
                                <option <?=@$erows['cat']==$rows['ctitle']?'selected':''?> value="<?=$rows['ctitle']?>"><?=$rows['ctitle']?></option>
                            <?php } ?>
                        </select>
                    </div>
                </div>
                <div class="text-left">
                    <?php if(isset($_GET['edit'])){ ?>
                    <button type="submit" class="btn btn-primary" name="btn_update">ویرایش</button>
                    <?php }else{ ?>
                    <button type="submit" class="btn btn-success" name="btn_save">ثبت</button>
                    <?php } ?>
                </div>
            </form>
            <hr>
            <div class="col-md-12 admin-content text-right py-3">
                <h4>لیست تصاویر</h4>
                <table class="table table-striped table-hover text-center">
                    <thead>
                    <tr>
                        <th>#</th>
                        <th>محتوا</th>
                        <th>نویسنده</th>
                        <th>عملیات</th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php $count=1; while($rows = $data->fetch()){ ?>
                        <tr>
                            <td><?=$count++?></td>
                            <td><?=mb_substr($rows['content'],0,100)?>...</td>
                            <td><?=$rows['writer']?></td>
                            <td>
                                <a href="sentence.php?edit=<?=$rows['id']?>"class="btn btn-xs btn-primary">ویرایش</a>
                                <a href="sentence.php?delete=<?=$rows['id']?>"class="btn btn-xs btn-danger">حذف</a>
                            </td>
                        </tr>
                    <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>