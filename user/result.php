<?php
require_once "../includes/dbconfig.php";
require_once "../includes/jdf.php";
if (!isset($_SESSION["userid"])) {
    header("location: ../index.php");
    exit();
}
$userid = $_SESSION['userid'];
//گرفتن اطلاعات تست هر کاربر
$sql = "SELECT 
    a.azid,
    a.azmoon_title,
    a.total_score,
    r.title AS result_title,
    r.content AS result_description,
    a.attempt_date
FROM (
    SELECT 
        ua.attempt_date,
        az.title AS azmoon_title,
        SUM(ans.score) AS total_score,
        ua.azid
    FROM user_answers ua
    INNER JOIN answers ans ON ua.answer_id = ans.aid
    INNER JOIN azmoon az ON az.ID = ua.azid
    WHERE ua.user_id = :userid
    GROUP BY ua.attempt_date
) AS a
LEFT JOIN results r 
    ON a.azid = r.azid 
   AND a.total_score BETWEEN r.min_score AND r.max_score
ORDER BY a.attempt_date DESC;
";
$stmt = $conn->prepare($sql);
$stmt->execute(['userid' => $userid]);
$results = $stmt->fetchAll(PDO::FETCH_ASSOC);

$title = 'نتایج آزمون ها';
include 'header.php';
?>
<main>
    <div class="container">
        <div class="row py-5">
            <h2 class="font-weight-bold">حساب کاربری من</h2>
            <div class="d-inline pt-2">
                <span class="mx-4">|</span>
                <h5 class="text-muted d-inline">آزمون ها انجام شده</h5>
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
                        <span class="font-weight-bold">آزمون های من</span>
                        <hr>
                        <?php if (count($results) > 0): ?>
                            <div class="table-responsive">
                                <table class="table table-bordered table-hover align-middle text-center">
                                    <thead class="table-info">
                                    <tr>
                                        <th>ردیف</th>
                                        <th>عنوان</th>
                                        <th>تاریخ انجام</th>
                                        <th>امتیاز کل</th>
                                        <th>نتیجه</th>
                                        <th>توضیحات</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <?php $i = 1; foreach ($results as $row): ?>
                                        <tr>
                                            <td><?php echo $i++; ?></td>
                                            <td class="fw-bold text-primary"><?php echo htmlspecialchars($row['azmoon_title']); ?></td>
                                            <td class="text-success fw-bold"><?php echo jdate("Y/m/d",$row['attempt_date']); ?></td>
                                            <td class="text-success fw-bold"><?php echo $row['total_score']; ?></td>
                                            <td><?php echo htmlspecialchars($row['result_title']); ?></td>
                                            <td>
                                                <button class="btn btn-sm btn-outline-info"
                                                        onclick="showResult(
                                                                '<?php echo addslashes($row['azmoon_title']); ?>',
                                                                '<?php echo addslashes($row['result_title']); ?>',
                                                                '<?php echo addslashes($row['result_description']); ?>'
                                                                )">
                                                    مشاهده
                                                </button>
                                            </td>
                                        </tr>
                                    <?php endforeach; ?>
                                    </tbody>
                                </table>
                            </div>
                        <?php else: ?>
                            <div class="alert alert-warning text-center">
                                تا کنون در هیچ آزمونی شرکت نکرده‌اید.
                            </div>
                        <?php endif; ?>
                    </div>
            </div>
        </div>
    </div>
</main>
<?php include("footer.php"); ?>
