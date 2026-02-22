<?php
require_once "includes/dbconfig.php";
//articles
$articles = $conn->query("SELECT * FROM `articles` ORDER BY `created_at` DESC");
$title = 'مقالات';
require_once "includes/header.php";
?>
<main>
    <div class="container">
        <div class="col-md-12 mt-4">
            <div class="row">
                <?php while($rows = $articles->fetch()) { ?>
                            <div class="col-md-4 mb-4">
                                <a href="show.php?id=<?=$rows['id']?>">
                                <div class="card btn-outline-light">
                                    <div class="card-body text-center">
                                        <img class="img-thumbnail img-fluid" src="img/learn/<?=$rows['pic']?>" alt="<?=$rows['title']?>">
                                    </div>
                                    <h6 class="font-weight-bold text-center text-dark mb-2"><?=$rows['title']?></h6>
                                </div>
                                </a>
                            </div>
                <?php } ?>
                        </div>
                    </div>
            </div>
</main>
<?php include("includes/footer.php"); ?>
