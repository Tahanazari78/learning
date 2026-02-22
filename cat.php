<?php
require_once "includes/dbconfig.php";

$where ='';
if(isset($_GET['title'])){
    $title = $_GET['title'];
    $where = " WHERE `title` LIKE '%$title%' ";
}
if(isset($_GET['id'])){
    $id = intval($_GET['id']);
    $where = " WHERE `catid`='$id'";
}
//get data
$alldate = $conn->prepare("SELECT * FROM `articles` $where ORDER BY `id` DESC");
$alldate->execute();
$total = $alldate->rowCount();
$title = 'دسته بندی';
?>
<?php include("includes/header.php"); ?>
<main>
    <div class="container mt-3">
        <!-- Content -->
        <div class="col-md-12 py-4">
            <div class="row">
            <?php if($total){ while($rows = $alldate->fetch()){  ?>
                  <div class="p-lg-2 p-3 mb-3 text-right bg-white btn-outline-dark border">
                      <div class="row">
                          <div class="col-md-2"><img class="img-thumbnail" src="img/learn/<?=$rows['pic']?>" alt="<?=$rows['title']?>">
                          </div>
                          <div class="col-md-10">
                              <a href="show.php?id=<?=$rows['id']?>"><h2 class="font-weight-bold text-primary h6"><?=$rows['title']?></h2></a>
                              <p class="text-justify text-dark"><?=nl2br($rows['summary'])?></p>
                              <a href="show.php?id=<?=$rows['id']?>" class="pull-left btn btn-sm btn-outline-dark">ادامه...</a>
                          </div>
                      </div>
                  </div>
            <?php }
            } else echo '<div class="col-md-12 mt-5 text-center alert alert-warning">محتوایی جهت نمایش موجود نمی باشد.</div>';?>
        </div>
    </div>
</main>
<?php include("includes/footer.php"); ?>
