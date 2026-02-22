<?php
require_once "../includes/dbconfig.php";

// بررسی دسترسی
if(!isset($_SESSION["permission"]) || $_SESSION['permission'] == 0) {
    header("location: index.php");
    exit();
}

$message = '';
$azid = isset($_GET['id']) ? $_GET['id'] : $_POST['id'];

// عنوان آزمون
$azmoon = $conn->prepare("SELECT title FROM azmoon WHERE id = ?");
$azmoon->execute([$azid]);
$azrows = $azmoon->fetch();

// ذخیره فرم (افزودن یا ویرایش)
if(isset($_POST['submit'])) {
    $questions = $_POST['questions'] ?? [];

    try {
        $conn->beginTransaction();

        $qInsert = $conn->prepare("INSERT INTO questions (title, azid) VALUES (:title, :azid)");
        $qUpdate = $conn->prepare("UPDATE questions SET title = :title WHERE qid = :id");
        $aInsert = $conn->prepare("INSERT INTO answers (question_id, text, score) VALUES (:question_id, :text, :score)");
        $aDelete = $conn->prepare("DELETE FROM answers WHERE question_id = ?");

        foreach ($questions as $q) {
            if (empty($q['title'])) continue;

            // اگر question_id خالی بود یعنی سؤال جدید
            if (empty($q['id'])) {
                $qInsert->execute([':title' => $q['title'], ':azid' => $azid]);
                $question_id = $conn->lastInsertId();
            } else {
                $qUpdate->execute([':title' => $q['title'], ':id' => $q['id']]);
                $question_id = $q['id'];
                $aDelete->execute([$question_id]); // پاسخ‌های قبلی حذف می‌شوند
            }

            // پاسخ‌ها
            if (!empty($q['answers']) && is_array($q['answers'])) {
                foreach ($q['answers'] as $a) {
                    $aInsert->execute([
                        ':question_id' => $question_id,
                        ':text' => $a['text'] ?? '',
                        ':score' => $a['score'] ?? 0
                    ]);
                }
            }
        }

        $conn->commit();
        header("location: addquestions.php?id=$azid&op=ok");
        exit;
    } catch (Exception $e) {
        $conn->rollBack();
        header("location: addquestions.php?id=$azid&op=error");
        exit;
    }
}

// پیام موفقیت / خطا
if(isset($_GET['op'])){
    $op = $_GET['op'];
    if($op == 'ok') $message = '<div class="alert alert-success text-center">ثبت یا ویرایش با موفقیت انجام شد</div>';
    if($op == 'error') $message = '<div class="alert alert-danger text-center">خطایی رخ داده است</div>';
}

// خواندن سوالات آزمون
$questions = [];
$qstmt = $conn->prepare("SELECT * FROM questions WHERE azid = ?");
$qstmt->execute([$azid]);
$qData = $qstmt->fetchAll();

foreach ($qData as $q) {
    $answers = $conn->prepare("SELECT * FROM answers WHERE question_id = ?");
    $answers->execute([$q['qid']]);
    $q['answers'] = $answers->fetchAll();
    $questions[] = $q;
}
?>
<!doctype html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>مدیریت سوالات آزمون</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/adminlte.min.css">
    <link rel="stylesheet" href="../css/admin.css">
    <script src="../js/jquery-3.5.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/adminlte.min.js"></script>
    <script src="../js/sweetalert2@11.js"></script>
    <script src="../js/all.js"></script>
    <style>
        .question-box {border: 1px solid #ccc; padding: 15px; margin-bottom: 15px; border-radius: 10px; background: #f9f9f9;}
        .answer-box {margin-top: 10px; padding-left: 10px;}
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-2 admin-menu text-center bg-light py-3">
            <?php include("menu.php"); ?>
        </div>
        <div class="col-10 admin-content text-right py-3">
            <h4>مدیریت سوالات آزمون: <?= htmlspecialchars($azrows['title']) ?></h4>
            <hr>
            <?=$message?>
            <form action="" method="POST">
                <div id="questions">
                    <?php
                    $qIndex = 0;
                    foreach ($questions as $q):
                        $qIndex++;
                        ?>
                        <div class="question-box" data-q="<?= $qIndex ?>">
                            <input type="hidden" name="questions[<?= $qIndex ?>][id]" value="<?= $q['qid'] ?>">
                            <div class="d-flex justify-content-between align-items-center mb-2">
                                <label>سوال <?= $qIndex ?></label>
                                <button type="button" class="btn btn-danger btn-sm removeQuestion">حذف سوال</button>
                            </div>
                            <input type="text" name="questions[<?= $qIndex ?>][title]" class="form-control mb-2" value="<?= htmlspecialchars($q['title']) ?>" required>
                            <div class="answers">
                                <?php
                                $aIndex = 0;
                                foreach ($q['answers'] as $a):
                                    $aIndex++;
                                    ?>
                                    <div class="row align-items-center answer-box">
                                        <div class="col-md-6 mb-2">
                                            <input type="text" name="questions[<?= $qIndex ?>][answers][<?= $aIndex ?>][text]" class="form-control" value="<?= htmlspecialchars($a['text']) ?>" placeholder="پاسخ <?= $aIndex ?>">
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <input type="number" name="questions[<?= $qIndex ?>][answers][<?= $aIndex ?>][score]" class="form-control" value="<?= $a['score'] ?>" placeholder="امتیاز">
                                        </div>
                                        <div class="col-md-3 mb-2">
                                            <button type="button" class="btn btn-outline-danger btn-sm removeAnswer">- حذف پاسخ</button>
                                        </div>
                                    </div>
                                <?php endforeach; ?>
                            </div>
                            <button type="button" class="btn btn-primary btn-sm addAnswer mt-2">+ افزودن پاسخ</button>
                        </div>
                    <?php endforeach; ?>
                </div>

                <button type="button" class="btn btn-success" id="addQuestion"><i class="bi bi-plus"></i> افزودن سوال</button>
                <hr>
                <input name="id" type="hidden" value="<?=$azid?>">
                <button type="submit" name="submit" class="btn btn-primary">💾 ذخیره</button>
            </form>
        </div>
    </div>
</div>

<script>
    $(document).ready(function() {
        let questionIndex = $("#questions .question-box").length;

        // افزودن سوال جدید
        $("#addQuestion").click(function() {
            questionIndex++;
            let html = `
        <div class="question-box" data-q="${questionIndex}">
            <input type="hidden" name="questions[${questionIndex}][id]" value="">
            <div class="d-flex justify-content-between align-items-center mb-2">
                <label>سوال ${questionIndex}</label>
                <button type="button" class="btn btn-danger btn-sm removeQuestion">حذف سوال</button>
            </div>
            <input type="text" name="questions[${questionIndex}][title]" class="form-control mb-2" placeholder="متن سوال را بنویسید" required>
            <div class="answers"></div>
            <button type="button" class="btn btn-primary btn-sm addAnswer mt-2">+ افزودن پاسخ</button>
        </div>`;
            $("#questions").append(html);
        });

        // افزودن پاسخ
        $(document).on("click", ".addAnswer", function() {
            let qBox = $(this).closest(".question-box");
            let qIndex = qBox.data("q");
            let answerCount = qBox.find(".answer-box").length + 1;
            let html = `
        <div class="row align-items-center answer-box">
            <div class="col-md-6 mb-2">
                <input type="text" name="questions[${qIndex}][answers][${answerCount}][text]" class="form-control" placeholder="پاسخ ${answerCount}" required>
            </div>
            <div class="col-md-3 mb-2">
                <input type="number" name="questions[${qIndex}][answers][${answerCount}][score]" class="form-control" placeholder="امتیاز">
            </div>
            <div class="col-md-3 mb-2">
                <button type="button" class="btn btn-outline-danger btn-sm removeAnswer">- حذف پاسخ</button>
            </div>
        </div>`;
            qBox.find(".answers").append(html);
        });

        // حذف سوال
        $(document).on("click", ".removeQuestion", function() {
            $(this).closest(".question-box").remove();
        });

        // حذف پاسخ
        $(document).on("click", ".removeAnswer", function() {
            $(this).closest(".answer-box").remove();
        });
    });
</script>
</body>
</html>