<?php
require_once "../includes/dbconfig.php";
require_once "../includes/jdf.php";
//check permission
if(!isset($_SESSION["permission"]) && $_SESSION['permission'] ==0) {
    header("location: index.php");
    exit();
}
//all data from azmoon
$data = $conn->query("SELECT *,`azmoon`.`ID` as `azid` FROM `azmoon` 
    INNER JOIN `users` ON `azmoon`.`userid`=`users`.`ID` 
    INNER JOIN `category` ON `azmoon`.`catid`=`category`.`cid` 
    ORDER BY `azmoon`.`ID` DESC");
$total = $data->rowCount();

if (isset($_GET['delete']) && !empty($_GET['delete'])) {
    $delete_id = $_GET['delete'];
    $sql = "DELETE FROM azmoon WHERE ID = :qid";
    $query = $conn->prepare($sql);
    $query->bindParam(':qid', $delete_id);
    $query->execute();
    $success = "با موفقیت حذف شد";
}

if(isset($_GET['active'])){
	$u = $conn->prepare("UPDATE `azmoon` SET `active`=:st WHERE `ID`=:id");
	$u->bindParam(':st',$_GET['active']);
	$u->bindParam(':id',$_GET['id']);
	$u->execute();
	if($u){
		 header("location: azmoonlist.php?ok");
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
            <h4>لیست آزمون ها</h4>
            <table class="table table-striped table-hover text-center">
                <thead>
                <tr>
                    <th>#</th>
                    <th>عنوان</th>
                    <th>طراح</th>
                    <th>دسته</th>
                    <th>تاریخ ثبت</th>
                    <th>وضعیت</th>
                    <th>سوالات</th>
                    <th>عملیات</th>
                </tr>
                </thead>
                <tbody>
                <?php if($total) { $i=1; while($rows = $data->fetch()) { ?>
                        <tr>
                            <td><?=$i++?></td>
                            <td><?=mb_substr($rows['title'],0,150)?></td>
                            <td><?=$rows['name'].' '.$rows['family']?></td>
							<td><?=$rows['ctitle']?></td>
                            <td><?=jdate('Y/m/d',$rows['created_at'])?></td>
                            <td><a href="azmoonlist.php?active=<?=$rows['active']==0?1:0?>&id=<?=$rows['azid']?>"><?=$rows['active']==0?'<span class="btn btn-xs btn-success">فعال</span>':'<span class="btn btn-xs btn-light">غیرفعال</span>'?></a></td>
							<td>
                                <a href="addquestions.php?id=<?=$rows['azid']?>" class="btn btn-xs btn-warning">مشاهده</a>
                                <a href="result.php?id=<?=$rows['azid']?>" class="btn btn-xs btn-info">نتیجه</a>
                            </td>
                            <td>
                                <a href="azmoon.php?edit=<?=$rows['azid']?>" class="btn btn-xs btn-primary">ویرایش</a>
                                <a href="azmoonlist.php?delete=<?=$rows['azid']?>" class="btn btn-xs btn-danger">حذف</a>
                            </td>
                        </tr>
                        <?php
                    }
                }else echo '<tr><td colspan="8">محتوایی جهت نمایش موجود نمی باشد</td>';
                ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
</body>
</html>