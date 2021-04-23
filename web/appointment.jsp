<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="robots" content="index, follow">
<meta name="description" content="Bayanno Hospital Management System">
<meta name="keywords" content="bootstrap, responsive, template, website, html, theme, ux, ui, web, design, developer, support, business, corporate, real estate, education, medical, school, education, demo, css, framework">
<meta name="author" content="Creativeitem">
        <title>Appointment | Bayanno Diagnostic Center</title>
        <!--jquery-->


<!-- Page loader -->
<script
    src="assets/frontend/default/vendor/pace/js/pace.min.js"></script>
<link rel="stylesheet"
    href="assets/frontend/default/vendor/pace/css/pace-minimal.css" type="text/css">

<!-- Bootstrap -->
<link rel="stylesheet"
    href="assets/frontend/default/vendor/bootstrap/css/bootstrap.min.css" type="text/css">

<!-- Fonts -->
<link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

<!-- Plugins -->
<link rel="stylesheet"
    href="assets/frontend/default/vendor/swiper/css/swiper.min.css">
<link rel="stylesheet"
    href="assets/frontend/default/vendor/hamburgers/hamburgers.min.css" type="text/css">
<link rel="stylesheet"
    href="assets/frontend/default/vendor/animate/animate.min.css" type="text/css">
<link rel="stylesheet"
      href="assets/common/izitoast/css/iziToast.min.css" type="text/css">
<!-- Icons -->
<link rel="stylesheet"
    href="assets/frontend/default/fonts/font-awesome/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet"
    href="assets/frontend/default/fonts/ionicons/css/ionicons.min.css" type="text/css">
<link rel="stylesheet"
    href="assets/frontend/default/fonts/line-icons-pro/line-icons-pro.css" type="text/css">


<!-- Global style (main) -->
<link id="stylesheet" type="text/css"
    href="assets/frontend/default/css/global-style.css" rel="stylesheet" media="screen">

<!-- Custom style - Remove if not necessary -->
<link type="text/css"
    href="assets/frontend/default/css/custom-style.css" rel="stylesheet">

<!-- Favicon -->
<link href="uploads/favicon.png" rel="icon" type="image/png">

<!-- recaptcha -->
<script src='https://www.google.com/recaptcha/api.js'></script>
<script src="assets/frontend/default/vendor/jquery/jquery.min.js"></script>
</head>

    <body>
        <!-- MAIN WRAPPER -->
        <div class="body-wrap">
            <div id="st-container" class="st-container">
                <div id="doctor_details"></div>
                <div class="st-pusher">
                    <div class="st-content">
                        <div class="st-content-inner">



<section class="slice sct-color-2 b-xs-bottom">
    <div class="container">
        <div class="section-title section-title--style-1 text-center mb-3">
            <h3 class="heading heading-2 strong-400">
                Make An Appointment            </h3>
            <span class="section-title-delimiter clearfix d-none"></span>
        </div>
    </div>
</section>
<section class="slice sct-color-2">
    <div class="container container-xs">
        <div class="row">
            <div class="col">
                <form class="form-default" role="form"
                    action="../index.php/home/make_an_appointment"
                        method="post"
                            enctype="multipart/form-data">




                        <div class="form-group">
                            <label for="" class="text-uppercase  c-gray-light">
                                ID                            </label>
                            <input type="text" class="form-control input-lg" placeholder=""
                                   name="name">
                        </div>

                        <div class="form-group">
                            <label for="" class="text-uppercase  c-gray-light">
                                Name                            </label>
                            <input type="text" class="form-control input-lg" placeholder=""
                                   name="name">
                        </div>

                        <div class="form-group">
                            <label for="" class="text-uppercase c-gray-light">
                                Phone                            </label>
                            <input type="text" class="form-control input-lg" placeholder=""
                                   name="phone">
                        </div>


                    <div class="form-group">
                        <label for="" class="text-uppercase c-gray-light">
                            Date                        </label>
                        <input type="text" class="form-control input-lg datepicker" placeholder=""
                            name="timestamp">
                    </div>

                    <div class="form-group">
                        <label for="" class="text-uppercase c-gray-light">
                            Department                        </label>
                        <select class="form-control" name="department_id" id="dept_select"
                            onchange="get_doctors(this.value)">
                            <option value="0">Select A Department</option>
                                                            <option value="1"
                                                                    >
                                    Anesthetics                                </option>
                                                            <option value="2"
                                                                    >
                                    Cardiology                                </option>
                                                            <option value="3"
                                                                    >
                                    Gastroenterology                                </option>
                                                    </select>
                    </div>

                    <div class="form-group">
                        <label for="" class="text-uppercase c-gray-light">
                            Doctor                        </label>
                        <div id="doctor_list">
                                                            <input type="text" class="form-control input-lg"
                                value="Select A Department First" disabled>
                                                    </div>
                    </div>

                    <div class="form-group">
                        <label for="" class="text-uppercase c-gray-light">
                            Message                        </label>
                        <textarea class="form-control no-resize" rows="5" name="message"
                                  placeholder="Your Message To The Doctor"></textarea>
                    </div>

                    <button type="submit" class="btn btn-styled btn-base-1"
                            style="cursor: pointer;">
                        <i class="fa fa-calendar mr-1"></i> Book Now                    </button>
                </form>
            </div>
        </div>
    </div>
</section>

<script>

    $(document).ready(function () {
       $('#old_patient').hide();
        $('#code_error').hide();

       $('input[type=radio][name=patient_type]').change(function () {
           if (this.value == 'new') {
               $('#old_patient').hide();
               $('#new_patient').fadeIn();
           } else if (this.value == 'old') {
               $('#new_patient').hide();
               $('#old_patient').fadeIn();
           }
       });

    });

    function get_doctors(department_id) {

        $.ajax({
            url: '../index.php/home/get_doctors_of_department/' + department_id,
            success: function (response) {
                jQuery('#doctor_list').html(response);
            }
        });
    }

    function check_code(code) {
        $.ajax({
            url: '../index.php/home/check_patient_code/' + code
        }).done(function (response) {
            if (response == 1) {
                $('#code_error').hide();
            } else if (response == 0) {
                $('#code_error').fadeIn();
            }
        });
    }

</script>

                        </div>
                    </div>
                </div><!-- END: st-pusher -->
            </div><!-- END: st-container -->
        </div><!-- END: body-wrap -->

<!-- SCRIPTS -->
<a href="#" class="back-to-top btn-back-to-top"></a>

<!-- Core -->
<script src="../assets/frontend/default/vendor/popper/popper.min.js"></script>
<script src="../assets/frontend/default/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="../assets/frontend/default/js/vendor/jquery.easing.js"></script>
<script src="../assets/frontend/default/js/ie10-viewport-bug-workaround.js"></script>
<script src="../assets/frontend/default/js/slidebar/slidebar.js"></script>
<script src="../assets/frontend/default/js/classie.js"></script>

<!-- Bootstrap Extensions -->
<script src="../assets/frontend/default/vendor/bootstrap-dropdown-hover/js/bootstrap-dropdown-hover.js"></script>

<!-- Plugins -->
<script src="../assets/frontend/default/vendor/flatpickr/flatpickr.min.js"></script>
<script src="../assets/frontend/default/vendor/swiper/js/swiper.min.js"></script>
<script src="../assets/common/izitoast/js/iziToast.min.js"></script>

<!-- App JS -->
<script src="../assets/frontend/default/js/wpx.app.js"></script>


    </body>

</html>
