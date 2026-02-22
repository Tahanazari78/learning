<?php
require_once "../includes/dbconfig.php";

// چک مجوز
if (!isset($_SESSION["permission"]) || $_SESSION['permission'] == 0) {
    header("location: index.php");
    exit();
}

// ======= عملیات AJAX =======
if ($_SERVER['REQUEST_METHOD'] === 'POST' && isset($_POST['action'])) {

    // ذخیره
    if ($_POST['action'] === 'save') {
        $azid = $_POST['azid'] ?? 0;
        $results = $_POST['results'] ?? [];

        try {
            foreach ($results as $key => $r) {
                $min = $r['min_score'] ?? 0;
                $max = $r['max_score'] ?? 0;
                $title = trim($r['title'] ?? '');
                $content = trim($r['content'] ?? '');

                if (strpos($key, 'new_') !== false) {
                    // درج جدید
                    $insert = $conn->prepare("INSERT INTO results (azid, title, min_score, max_score, content)
                                              VALUES (:azid, :title, :min_score, :max_score, :content)");
                    $insert->execute([
                        ':azid' => $azid,
                        ':title' => $title,
                        ':min_score' => $min,
                        ':max_score' => $max,
                        ':content' => $content
                    ]);
                } else {
                    // بروزرسانی
                    $update = $conn->prepare("UPDATE results 
                                              SET title=:title, min_score=:min_score, max_score=:max_score, content=:content
                                              WHERE rid=:rid AND azid=:azid");
                    $update->execute([
                        ':rid' => $key,
                        ':azid' => $azid,
                        ':title' => $title,
                        ':min_score' => $min,
                        ':max_score' => $max,
                        ':content' => $content
                    ]);
                }
            }
            echo '<div class="alert alert-success text-center">✅ ذخیره با موفقیت انجام شد.</div>';
        } catch (Exception $e) {
            echo '<div class="alert alert-danger text-center">❌ خطا در ذخیره: ' . $e->getMessage() . '</div>';
        }
        exit;
    }

    // حذف رکورد
    if ($_POST['action'] === 'delete') {
        $rid = $_POST['rid'] ?? 0;
        $stmt = $conn->prepare("DELETE FROM results WHERE rid=:rid");
        $stmt->execute([':rid' => $rid]);
        echo "deleted";
        exit;
    }

    // لود رکوردها
    if ($_POST['action'] === 'load') {
        $azid = $_POST['azid'] ?? 0;
        $stmt = $conn->prepare("SELECT * FROM results WHERE azid=:azid ORDER BY min_score ASC");
        $stmt->execute([':azid' => $azid]);
        $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

        if (!$rows) {
            echo '<div class="alert alert-info text-center">هیچ بازه‌ای ثبت نشده است.</div>';
            exit;
        }

        foreach ($rows as $r) {
            ?>
            <div class="result-box" data-rid="<?= $r['rid'] ?>">
                <div class="row">
                    <div class="col-md-2">
                        <label>حداقل امتیاز</label>
                        <input type="number" name="results[<?= $r['rid'] ?>][min_score]" value="<?= $r['min_score'] ?>" class="form-control" required>
                    </div>
                    <div class="col-md-2">
                        <label>حداکثر امتیاز</label>
                        <input type="number" name="results[<?= $r['rid'] ?>][max_score]" value="<?= $r['max_score'] ?>" class="form-control" required>
                    </div>
                    <div class="col-md-3">
                        <label>عنوان نتیجه</label>
                        <input type="text" name="results[<?= $r['rid'] ?>][title]" value="<?= htmlspecialchars($r['title']) ?>" class="form-control" required>
                    </div>
                    <div class="col-md-4">
                        <label>توضیح نتیجه</label>
                        <textarea name="results[<?= $r['rid'] ?>][content]" class="form-control" rows="2" required><?= htmlspecialchars($r['content']) ?></textarea>
                    </div>
                    <div class="col-md-1 d-flex align-items-end">
                        <button type="button" class="btn btn-danger btn-sm deleteResult" data-id="<?= $r['rid'] ?>">🗑</button>
                    </div>
                </div>
            </div>
            <?php
        }
        exit;
    }
}

// ======= بارگذاری معمول صفحه =======

// گرفتن شناسه آزمون
$azid = isset($_GET['id']) ? $_GET['id'] : 0;
if (!$azid) {
    echo "شناسه آزمون مشخص نیست.";
    exit;
}

// گرفتن عنوان آزمون
$stmt = $conn->prepare("SELECT title FROM azmoon WHERE id = :id");
$stmt->execute([':id' => $azid]);
$azmoon = $stmt->fetch(PDO::FETCH_ASSOC);
?>
<!doctype html>
<html lang="fa">
<head>
    <meta charset="UTF-8">
    <title>مدیریت نتایج آزمون</title>
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/adminlte.min.css">
    <link rel="stylesheet" href="../css/admin.css">
    <!-- js -->
    <script src="../js/jquery-3.5.1.min.js"></script>
    <script src="../js/popper.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/adminlte.min.js"></script>
    <!-- js sweetalert2 -->
    <script src="../js/sweetalert2@11.js"></script>
    <!-- icon -->
    <script src="../js/all.js"></script>
    <style>
        .result-box {
            border: 1px solid #ccc;
            border-radius: 10px;
            padding: 15px;
            background: #f9f9f9;
            margin-bottom: 15px;
        }
    </style>
</head>
<body>
<div class="container-fluid">
    <div class="row">
        <div class="col-md-2 admin-menu text-center bg-light py-3">
            <?php include("menu.php"); ?>
        </div>
        <div class="col-10 admin-content text-right py-3">
            <h4>مدیریت نتایج آزمون: <?= htmlspecialchars($azmoon['title']) ?></h4>
            <hr>
            <div id="message"></div>

            <form id="resultsForm">
                <input type="hidden" name="azid" value="<?= $azid ?>">
                <div id="results"></div>
                <button type="button" class="btn btn-success" id="addResult">+ افزودن بازه نتیجه</button>
                <hr>
                <button type="submit" class="btn btn-primary">💾 ذخیره تغییرات</button>
            </form>
        </div>
    </div>
</div>

<script>
    $(document).ready(function(){
        let resultIndex = 0;
        let azid = <?= $azid ?>;

        // لود نتایج
        loadResults();
        function loadResults(){
            $.post("result.php", {action: "load", azid: azid}, function(data){
                $("#results").html(data);
            });
        }

        // افزودن بازه جدید
        $("#addResult").click(function(){
            resultIndex++;
            let html = `
        <div class="result-box" data-r="new_${resultIndex}">
            <div class="row">
                <div class="col-md-2">
                    <label>حداقل امتیاز</label>
                    <input type="number" name="results[new_${resultIndex}][min_score]" class="form-control" required>
                </div>
                <div class="col-md-2">
                    <label>حداکثر امتیاز</label>
                    <input type="number" name="results[new_${resultIndex}][max_score]" class="form-control" required>
                </div>
                <div class="col-md-3">
                    <label>عنوان نتیجه</label>
                    <input type="text" name="results[new_${resultIndex}][title]" class="form-control" required>
                </div>
                <div class="col-md-4">
                    <label>توضیح نتیجه</label>
                    <textarea name="results[new_${resultIndex}][content]" class="form-control" rows="2" required></textarea>
                </div>
                <div class="col-md-1 d-flex align-items-end">
                    <button type="button" class="btn btn-danger btn-sm removeResult">🗑</button>
                </div>
            </div>
        </div>`;
            $("#results").append(html);
        });

        // حذف بازه جدید (فقط از DOM)
        $(document).on("click", ".removeResult", function(){
            $(this).closest(".result-box").remove();
        });

        // حذف بازه موجود از دیتابیس
        $(document).on("click", ".deleteResult", function(){
            let rid = $(this).data("id");
            Swal.fire({
                title: 'حذف بازه؟',
                text: 'آیا مطمئن هستید؟',
                icon: 'warning',
                showCancelButton: true,
                confirmButtonText: 'بله، حذف شود',
                cancelButtonText: 'خیر'
            }).then((result) => {
                if (result.isConfirmed) {
                    $.post("result.php", {action: "delete", rid: rid}, function(res){
                        if(res === "deleted"){
                            loadResults();
                            Swal.fire('حذف شد', 'بازه با موفقیت حذف شد.', 'success');
                        }
                    });
                }
            });
        });

        // ذخیره تغییرات
        $("#resultsForm").submit(function(e){
            e.preventDefault();
            $.ajax({
                url: "result.php",
                method: "POST",
                data: $(this).serialize() + "&action=save",
                success: function(response){
                    $("#message").html(response);
                    loadResults();
                }
            });
        });
    });
</script>
</body>
</html>
