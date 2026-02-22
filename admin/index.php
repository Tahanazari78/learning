<?php
require_once "../includes/dbconfig.php";
require_once "../includes/jdf.php";
//check permission
if(!isset($_SESSION["permission"]) && $_SESSION['permission'] ==0) {
    header("location: ../index.php");
    exit();
}
//count of users
$allusers = $conn->query("SELECT * FROM users");
$usercount = $allusers->rowCount();
//count of question
$q = $conn->query("SELECT * FROM `questions`");
$qcount = $q->rowCount();
//count of azmoon
$a = $conn->query("SELECT * FROM `azmoon`");
$acount = $a->rowCount();
//count of designer
$d = $conn->query("SELECT * FROM `users` WHERE `status`=1");
$dcount = $d->rowCount();
//count of result
$p = $conn->query("SELECT * FROM `user_answers` GROUP BY `user_id`");
$pcount = $p->rowCount();
//count of contact
$c = $conn->query("SELECT * FROM `contact`");
$ccount = $c->rowCount();
//get all data
$contact = $conn->prepare("SELECT * FROM `contact` ORDER BY `created_at` DESC");
$contact->execute();
$total = $contact->rowCount();
//delete
if(isset($_GET['del'])){
    $id = $_GET['id'];
    $del = $conn->prepare("DELETE FROM `contact` WHERE `id`='$id'");
    $del->execute();
    header('location:index.php?ok');
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
    <!-- icon -->
    <script src="../js/all.js"></script>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-2 admin-menu text-center bg-light py-3">
            <?php
            include ("menu.php");
            ?>
        </div>
        <div class="col-md-10 admin-content text-right py-3">
            <h4>داشبورد کاربری</h4>
            <span class="text-muted">به پنل مدیریت خوش آمدید</span>
            <hr>
            <div class="row pb-4">
                <div class="col-md-2">
                    <div class="card bg-light shadow-sm">
                        <div class="card-body text-center">
                            <p class="text-right">تعداد کاربران</p>
                            <h4 class="font-weight-bold"></h4>
                            <span><?=$usercount?> نفر</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="card bg-light shadow-sm">
                        <div class="card-body text-center">
                            <p class="text-right">تعداد سوالات</p>
                            <h4 class="font-weight-bold"></h4>
                            <span><?=$qcount?> عدد</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="card bg-light shadow-sm">
                        <div class="card-body text-center">
                            <p class="text-right">تعداد آزمون ها</p>
                            <h4 class="font-weight-bold"></h4>
                            <span><?=$acount?> مورد</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="card bg-light shadow-sm">
                        <div class="card-body text-center">
                            <p class="text-right">تعداد طراحان</p>
                            <h4 class="font-weight-bold"></h4>
                            <span><?=$dcount?> نفر</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="card bg-light shadow-sm">
                        <div class="card-body text-center">
                            <p class="text-right">تعداد شرکت کنندگان</p>
                            <h4 class="font-weight-bold"></h4>
                            <span><?=$pcount?> نفر</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-2">
                    <div class="card bg-light shadow-sm">
                        <div class="card-body text-center">
                            <p class="text-right">تعداد پیام ها</p>
                            <h4 class="font-weight-bold"></h4>
                            <span><?=$ccount?> مورد</span>
                        </div>
                    </div>
                </div>
                <div class="col-md-12 text-right py-3">
                    <h4>آخرین پیام ها</h4>
                    <table class="table table-striped table-hover text-center">
                        <thead>
                        <tr>
                            <th>نام</th>
                            <th>ایمیل</th>
                            <th>متن پیام</th>
                            <th>تاریخ</th>
                            <th>عملیات</th>
                        </tr>
                        </thead>
                        <tbody>
                        <?php if($total){ while($rows = $contact->fetch()){ ?>
                            <tr>
                                <td><?=$rows['name']?></td>
                                <td><?=$rows['email']?></td>
                                <td><?=$rows['content']?></td>
                                <td><?=jdate('Y,m,d',$rows['created_at'])?></td>
                                <td>
                                    <a href="contact.php?id=<?=$rows['id']?>&del" class="btn btn-xs btn-danger">حذف</a>
                                </td>
                            </tr>
                        <?php } } else echo '<tr><td colspan="6">محتوایی جهت نمایش موجود نمی باشد</td></tr>'; ?>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
</body>
</html>