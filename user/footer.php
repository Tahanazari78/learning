<footer>
<div class="container-fluid text-dark text-right mt-5 bg-white border">
    <div class="container">
        <div class="row pb-4 pt-5 align-items-center">
            <div class="col-md-6 col-sm-12">
                <p>شنبه تا چهارشنبه از ساعت ۹ - ۱۷ و پنجشنبه‌ها از ساعت ۹ - ۱۳ پاسخگوی شما هستیم</p>
                <p>برای مشاوره رایگان با ما تماس بگیرید 021-11111</p>
            </div>
            <div class="col-md-6 col-sm-12 text-left">
                <a href="#"><img src="../img/enamad.png" alt="" class="img-thumbnail img-fluid bg-white rounded py-3 px-2"></a>
                <a href="#"><img src="../img/samandehi.png" alt="" class="img-thumbnail img-fluid bg-white rounded py-3 px-3 mx-3"></a>
                <a href="#"><img src="../img/etehadie.png" alt="" class="img-thumbnail img-fluid bg-white rounded py-3 px-2"></a>
            </div>
        </div>
    </div>
</div>
<div class="container-fluid text-white py-4" style="background-color: #212529">
    <div class="container">
        <div class="row align-items-center">
            <div class="col-md-8 col-12 text-right">
                <span>کلیه حقوق مادی و معنوی متعلق به این سایت می باشد و هرگونه کپی برداری با ذکر منبع مجاز می باشد.</span>
            </div>
            <div class="col-md-4 col-12">
                <i class="fab fa-linkedin-in" style="font-size: 1.8rem"></i>
                <i class="fab fa-instagram mx-3" style="font-size: 1.8rem"></i>
                <i class="fab fa-telegram-plane" style="font-size: 1.8rem"></i>
            </div>
        </div>
    </div>
</div>
</footer>
<script>
    $(document).ready(function() {
        var hash = window.location.hash; // مثال: #6
        if(hash) {
            var azid = parseInt(hash.substring(1));
            <?php if(count($results) > 0): ?>
            var results = <?php echo json_encode($results); ?>;
            results.forEach(function(row) {
                if(parseInt(row.azid) === azid){
                    showResult(row.azmoon_title, row.result_title, row.result_description);
                }
            });
            <?php endif; ?>
        }
    });
    function showResult(title, resultTitle, description) {
        Swal.fire({
            title: '📘 ' + resultTitle,
            html: '<p style="text-align:justify;line-height:2;">' + description + '</p>',
            icon: 'info',
            confirmButtonText: 'باشه',
            confirmButtonColor: '#3085d6'
        });
    }
</script>

</body>
</html>
