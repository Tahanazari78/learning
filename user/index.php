<?php
require_once "../includes/dbconfig.php";
if (!isset($_SESSION["userid"])) {
    header("location: ../index.php");
    exit();
}
$userid = $_SESSION['userid'];
//get data from user
$user = $conn->query("SELECT * FROM `users` WHERE `ID`='$userid'");
$user_rows = $user->fetch();

$title = 'اطلاعات حساب';
include("header.php"); ?>
<main>
    <div class="container">
        <div class="row py-5">
            <h2 class="font-weight-bold">حساب کاربری من</h2>
            <div class="d-inline pt-2">
                <span class="mx-4">|</span>
                <h5 class="text-muted d-inline">اطلاعات حساب</h5>
            </div>
        </div>
        <div class="row pb-5">
            <div class="col-md-4">
                <div class="card shadow text-right">
                    <div class="card-body">
                        <?php
                        include("menu.php");
                        ?>
                    </div>
                </div>
            </div>
            <div class="col-md-8">
                <div class="card shadow text-right">
                    <div class="card-body">
                        <span class="font-weight-bold">اطلاعات شخصی</span>
                        <hr>
                        <table class="table table-bordered">
                            <tbody>
                            <tr>
                                <td>نام و نام
                                    خانوادگی: <?php echo $user_rows['name'] . " " . $user_rows['family'] ?></td>
                                <td>شماره موبایل: <?php echo $user_rows['tel'] ?></td>
                            </tr>
                            <tr>
                                <td>ایمیل: <?php echo $user_rows['email'] ?></td>
                                <td><a href="edit.php">ویرایش اطلاعات</a></td>
                            </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<?php include("footer.php"); ?>


