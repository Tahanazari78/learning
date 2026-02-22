<?php
require_once "includes/dbconfig.php";

if(!isset($_SESSION['userid'])){
    echo '<script>
	window.alert("برای استفاده از آزمون وارد سایت شوید");
	window.location.href = "login.php";
	</script>';
    exit;
}

if(!isset($_GET['id'])){
    header('location:index.php');
    exit;
}

$user_id = $_SESSION['userid'];
$azid = $_GET['id'];

// گرفتن اطلاعات آزمون
$azstmt = $conn->prepare("SELECT * FROM azmoon WHERE id = :id");
$azstmt->execute([':id' => $azid]);
$azmoon = $azstmt->fetch(PDO::FETCH_ASSOC);
$now = time();
// ثبت پاسخ‌های کاربر
if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['answers'])) {
    $answers = $_POST['answers'];

    $insert = $conn->prepare("INSERT INTO user_answers (user_id, azid, question_id, answer_id,attempt_date) 
                              VALUES (:user_id, :azid, :question_id, :answer_id,:now)");

    foreach ($answers as $question_id => $answer_id) {
        $insert->execute([
            ':user_id' => $user_id,
            ':azid' => $azid,
            ':question_id' => $question_id,
            ':answer_id' => $answer_id,
            ':now' => $now,
        ]);
    }

    header("location:user/result.php?#".$azmoon['ID']);
    exit;
}

// گرفتن سوال‌ها
$qstmt = $conn->prepare("SELECT * FROM questions WHERE azid = :azid");
$qstmt->execute([':azid' => $azid]);
$questions = $qstmt->fetchAll(PDO::FETCH_ASSOC);

$title = $azmoon['title'];
?>
<?php include("includes/header.php"); ?>
<style>
    .question-box {
        border: 1px solid #ccc;
        padding: 15px;
        margin-bottom: 20px;
        border-radius: 10px;
    }
</style>

<main>
    <div class="container mt-4">
        <div class="mb-4 text-center alert alert-info rounded p-3">
            <h3>آزمون: <?= htmlspecialchars($azmoon['title']) ?></h3>
            <p><?=nl2br($azmoon['description'])?></p>
        </div>

        <?php if ($questions): ?>
            <form method="POST">
                <?php $i=1; foreach ($questions as $q): ?>
                    <div class="card question-box text-right">
                        <h5><?=$i?> - <?= htmlspecialchars($q['title']) ?></h5>
                        <div class="answers mt-3">
                            <?php
                            // دریافت گزینه‌های مربوط به هر سوال
                            $astmt = $conn->prepare("SELECT * FROM answers WHERE question_id = :qid");
                            $astmt->execute([':qid' => $q['qid']]);
                            $answers = $astmt->fetchAll(PDO::FETCH_ASSOC);
                            ?>

                            <?php foreach ($answers as $a): ?>
                                <div class="form-check">
                                    <input class="form-check-input pr-2" type="radio"
                                           name="answers[<?= $q['qid'] ?>]"
                                           id="answer_<?= $a['aid'] ?>"
                                           value="<?= $a['aid'] ?>"
                                           required>
                                    <label class="form-check-label px-4" for="answer_<?= $a['aid'] ?>">
                                         <?= htmlspecialchars($a['text']) ?>

                                    </label>
                                </div>
                            <?php endforeach; ?>
                        </div>
                    </div>
                <?php $i++; endforeach; ?>

                <button type="submit" class="btn btn-success w-100">ثبت پاسخ و دیدن نتیجه</button>
            </form>
        <?php else: ?>
            <div class="alert alert-warning text-center">هیچ سوالی برای این تست ثبت نشده است.</div>
        <?php endif; ?>
    </div>
</main>

<?php include "includes/footer.php"; ?>
