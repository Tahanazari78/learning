<?php
//menu
$menu = $conn->query("SELECT * FROM `category` ORDER BY `ctitle` ASC");
?>
<!doctype html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?=$title?></title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/style.css">
    <script src="../js/jquery-3.5.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/sweetalert2@11.js"></script>
    <script src="../js/all.js"></script>
    <style>
        .navbar-nav .nav-item {
            white-space: nowrap;
        }
        .dropdown-menu {
            min-width: 200px;
        }
        .navbar .form-inline {
            flex-grow: 1;
            justify-content: flex-end;
        }
    </style>
</head>
<body>
<header>
    <div class="container-fluid bg-white border">
        <div class="container">
            <nav class="navbar navbar-expand-lg header-menu navbar-light p-3">
                <!-- لوگو -->
                <a class="navbar-brand" href="../index.php">
                    <img src="../img/logo.png" width="60" alt="لوگو">
                </a>

                <!-- دکمه همبرگر -->
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarContent"
                        aria-controls="navbarContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!-- منو و جستجو -->
                <div class="collapse navbar-collapse " id="navbarContent">
                    <!-- منوی اصلی -->
                    <ul class="navbar-nav mx-auto text-right">
                        <li class="nav-item">
                            <a class="nav-link" href="../index.php">خانه</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="../cat.php" id="navbarDropdown" role="button"  aria-haspopup="true" aria-expanded="false">
                                تست ها
                            </a>
                            <div class="dropdown-menu text-right" aria-labelledby="navbarDropdown">
                                <?php while($m_row = $menu->fetch()){ ?>
                                    <a class="dropdown-item" href="../cat.php?id=<?=$m_row['cid']?>"><?=$m_row['ctitle']?></a>
                                <?php } ?>
                            </div>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../articles.php">مقالات</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../aboutus.php">درباره ما</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../contactus.php">تماس با ما</a>
                        </li>
                    </ul>

                    <!-- فرم جستجو -->
                    <form action="../cat.php" method="get" class="d-flex flex-nowrap my-2 my-lg-0 ml-lg-3">
                        <input class="form-control mr-2 rounded-0" type="search" placeholder="جستجو کنید..." name="title" autocomplete="off">
                        <button class="btn btn-primary rounded-0" type="submit"><i class="fas fa-search"></i></button>
                    </form>

                    <!-- ورود/ثبت نام یا کاربر -->
                    <div class="ml-lg-3 mt-2 mt-lg-0">
                        <?php if(isset($_SESSION['userid'])){ ?>
                            <i class="fa fa-user text-success"></i> <a href="../user/index.php"><?=$_SESSION['fullname']?></a>
                            <span>/</span>
                            <a href="../logout.php">خروج</a>
                            <?php if($_SESSION['permission']==2){ ?>
                                <a class="btn btn-danger btn-sm text-light" href="../admin/">مدیریت</a>
                            <?php } ?>
                        <?php }else{ ?>
                            <i class="fa fa-user"></i> <a href="../login.php">ورود</a>
                            <span>/</span>
                            <a href="../register.php">ثبت نام</a>
                        <?php } ?>
                    </div>
                </div>
            </nav>
        </div>
    </div>
</header>
