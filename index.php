<?php
require_once "includes/dbconfig.php";
require_once "includes/jdf.php";
//about us
$about = $conn->query("SELECT * FROM `aboutus`");
$arow = $about->fetch();
//categories
$categories = $conn->query("SELECT *,(SELECT count(`catid`) FROM `articles` WHERE `catid`=`category`.`cid`) as `learncount` FROM `category`  ORDER BY `cid` DESC LIMIT 9");
//azmoon
$q= $conn->prepare("SELECT * FROM `azmoon` WHERE `active`=1 ORDER BY `created_at` DESC");
$q->execute();
$title = "آموزش برنامه نویسی";
?>
<?php include 'includes/header.php' ?>
<main>
    <!--  Slide -->
    <div class="container-fluid">
        <div class="row ">
            <div class="col-md-5 col-12 p-0">
                <p class="h5 text-justify mt-3 px-4"><?=nl2br($arow['content'])?></p>
            </div>
            <div class="col-md-7 col-12 mt-3 p-0">
                <div class="d-flex text-center justify-content-center">
                <img class="img-fluid" src="img/header.png" width="620">
                </div>
            </div>
        </div>
    </div>
    <!-- -->
    <div class="container mt-5">
        <!-- -->
        <div class="container mt-5">
            <div class="row mt-5 text-center">

                <div class="col-md-4 col-12">
                    <img class="img-fluid w-25 mb-4" src="img/code.png" alt="Programming Courses">
                    <h2>آموزش پروژه‌محور</h2>
                    <p>
                        یادگیری برنامه‌نویسی با انجام پروژه‌های واقعی و کاربردی که شما را مستقیماً برای بازار کار آماده می‌کند.
                    </p>
                </div>

                <div class="col-md-4 col-12">
                    <img class="img-fluid w-25 mb-4" src="img/support.png" alt="Mentorship Support">
                    <h2>پشتیبانی و منتورینگ</h2>
                    <p>
                        همراهی مدرس و منتور در طول مسیر آموزش برای رفع اشکال، بررسی کدها و افزایش سرعت یادگیری.
                    </p>
                </div>

                <div class="col-md-4 col-12">
                    <img class="img-fluid w-25 mb-4" src="img/career.png" alt="Job Ready">
                    <h2>آمادگی ورود به بازار کار</h2>
                    <p>
                        آموزش مهارت‌های مورد نیاز بازار، ساخت رزومه فنی و آمادگی برای استخدام به عنوان برنامه‌نویس.
                    </p>

                </div>

            </div>
        </div>

        <!-- -->
        <div class="row py-5 text-center">
            <div class="col-md-5">
                <hr>
            </div>
            <div class="col-md-2">
                <h5 class="font-weight-bold">آموزش ها</h5>
            </div>
            <div class="col-md-5">
                <hr>
            </div>
        </div>

        <div class="container">
            <div class="row">
                <?php while($rows = $categories->fetch()){ ?>
                    <div class="col-md-4 text-center mt-4">
                        <a href="cat.php?id=<?=$rows['cid']?>">
                            <div class="card">
                                <div class="card-body text-dark btn-outline-light">
                                    <img class="card-img-top img-fluid img-thumbnail" src="<?=$rows['pic']==''?'img/nopic.png':'img/cat/'.$rows['pic']?>" alt="<?=$rows['ctitle']?>">
                                    <p class="font-weight-bold pt-3"><?=$rows['ctitle']?></p>
                                    <hr>
                                    <span>تعداد درس های این دوره <?=$rows['learncount']?> می باشد.</span>
                                </div>
                            </div>
                        </a>
                    </div>
                <?php } ?>
            </div>
        </div>
        <!-- -->
        <div class="row py-5 text-center">
            <div class="col-md-5">
                <hr>
            </div>
            <div class="col-md-2">
                <h5 class="font-weight-bold">آزمون ها</h5>
            </div>
            <div class="col-md-5">
                <hr>
            </div>
        </div>
        <!-- -->
        <div class="row pb-5">
            <?php while($rows = $q->fetch()){ ?>
                <div class="col-md-3 py-2">
                    <a href="details.php?id=<?=$rows['ID']?>">
                        <div class="card">
                            <div class="card-body text-center btn-outline-light">
                            <img class="card-img-top w-75 img-fluid" src="<?=$rows['pic']==''?'img/nopic.png':'img/azmoon/'.$rows['pic']?>" alt="<?=$rows['title']?>">
                                <hr>
                                <span class="font-weight-bold text-dark"><?=$rows['title']?></span>
                            </div>
                        </div>
                    </a>
                </div>

            <?php } ?>
        </div>

    </div>
</main>
<?php include 'includes/footer.php' ?>