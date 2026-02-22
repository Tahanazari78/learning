<img src="../img/user.png" class="img-fluid" alt="" width="50" height="50">
<h5 class="font-weight-bold pt-3"><?=$_SESSION['fullname']?></h5>
<hr>
<!-- Menu -->
<nav class="text-right">
    <div class="d-flex justify-content-between py-2">
        <a class="d-block" href="index.php">داشبورد</a>
        <i class="fas fa-home"></i>
    </div>
    <?php if($_SESSION['permission']==2){ ?>
    <div class="d-flex justify-content-between py-2">
        <a class="d-block" href="aboutus.php">درباره ما</a>
        <i class="fas fa-info"></i>
    </div>
    <div class="d-flex justify-content-between py-2">
        <a class="d-block" href="users.php">کاربران</a>
        <i class="fas fa-users"></i>
    </div>
    <div class="d-flex justify-content-between py-2">
        <a class="d-block" href="contact.php">پیام ها</a>
        <i class="fas fa-comments"></i>
    </div>
    <div class="d-flex justify-content-between py-2">
        <a class="d-block" href="information.php">اطلاعات تماس</a>
        <i class="fas fa-phone"></i>
    </div>
    <?php } ?>
    <div class="d-flex justify-content-between py-2">
        <a class="d-block" href="article.php">آموزش ها</a>
        <i class="fas fa-edit"></i>
    </div>
    <ul class="nav nav-sidebar d-flex justify-content-between p-0" data-widget="treeview">
        <li class="nav-item"><a href="" class="nav-link px-0">آزمون ها<i class="fas fa-caret-down mr-1 text-muted"></i></a>
            <ul class="nav nav-treeview px-2">
                <li class="nav-item"><a href="category.php" class="nav-link py-1">دسته بندی</a></li>
                <li class="nav-item"><a href="azmoon.php" class="nav-link py-1">افزودن تست</a></li>
                <li class="nav-item"><a href="azmoonlist.php" class="nav-link py-1">لیست آزمون ها</a></li>

            </ul>
        </li>
        <i class="fas fa-check "></i>
    </ul>
    <div class="d-flex justify-content-between py-2">
        <a class="d-block" target="_blank" href="../index.php">مشاهده سایت</a>
        <i class="fa fa-globe"></i>
    </div>
    <div class="d-flex justify-content-between py-2">
        <a class="d-block" href="logout.php">خروج</a>
        <i class="fas fa-sign-out-alt "></i>
    </div>
</nav>