<?php
require_once ('includes/dbconfig.php');
//articles
if(!isset($_GET['id'])){
    header('location:articles.php');
    exit();
}
$id = $_GET['id'];
$articles = $conn->query("SELECT * FROM `articles` INNER JOIN `category` ON `category`.`cid`=`articles`.`catid` WHERE `id`='$id'");
$rows = $articles->fetch();
$films = explode(',',$rows['video']);
$conn->query("UPDATE `articles` SET `view`=`view`+1 WHERE `id`='$id'");
$title = $rows['title'];
?>
<?php include "includes/header.php"; ?>
<main>
    <div class="container">
        <div class="text-right px-0">
            <div class="mt-3 alert alert-light border"><a href="index.php">خانه</a> > <a href="cat.php?id=<?=$rows['catid']?>"><?=$rows['ctitle']?></a> > <?=$title?></div>

            <div class="card my-4">
                <div class="card-body bg-white">
                    <h1 class="h6 font-weight-bold"><i class="fa fa-check"></i> <?=$rows['title']?></h1>
                    <hr>
                    <div class="col-md-12">
                        <p class="pt-2 text-justify-custom"><?=nl2br($rows['summary'])?></p>
                        <a href="#" data-toggle="collapse" data-target="#more">+ جزئیات بیشتر</a>
                        <div id="more" class="collapse cf">
                            <br>
                            <span class="text-justify"><?=$rows['content']?></span>
                            <?php if($rows['video']!==''){ ?>
                                <?php foreach($films as $film){ ?>
                                    <div class="text-center">
                                        <video id="video" width="700" controls>
                                            <source src="img/learn/video/<?=$film?>" >
                                        </video>
                                    </div><br>
                                <?php } ?>
                            <?php } ?>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
</main>
<?php  include "includes/footer.php";?>
