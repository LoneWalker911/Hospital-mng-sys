<%--
    Document   : index
    Created on : Mar 30, 2021, 2:10:52 PM
    Author     : thisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Object error = (String)request.getAttribute("error"); %>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="robots" content="index, follow">
<meta name="description" content=" Hospital Management System">
<meta name="keywords" content="bootstrap, responsive, template, website, html, theme, ux, ui, web, design, developer, support, business, corporate, real estate, education, medical, school, education, demo, css, framework">
<meta name="author" content="Creativeitem">
        <title>Appointment |  Diagnostic Center</title>
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

    <body onload="chng();">
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
                Patient Register            </h3>
            <span class="section-title-delimiter clearfix d-none"></span>
        </div>
    </div>
</section>
<section class="slice sct-color-2">
    <div class="container container-xs">
        <div class="row">
            <div class="col">
                <form class="form-default" role="form"
                    action="PatientRegister"
                        method="post">

                        <div class="form-group">
                            <label for="" class="text-uppercase  c-gray-light">
                                Name                            </label>
                            <input type="text" class="form-control input-lg" placeholder=""
                                   name="name">
                        </div>
                        <div class="form-group eChannel eApp">
                            <label for="" class="text-uppercase c-gray-light">
                                Date                        </label>
                            <input type="text" id="date" class="form-control input-lg datepicker" placeholder=""
                                   onchange="Date1(Date.parse(this.value));" name="timestamp" required readonly="readonly">
                        </div>
                        <div class="form-group">
                            <label for="" class="text-uppercase  c-gray-light">
                                Address                            </label>
                            <input type="text" class="form-control input-lg" placeholder=""
                                   name="address">
                        </div>
                        <div class="form-group">
                            <label for="" class="text-uppercase c-gray-light">
                                E-mail                            </label>
                            <input type="text" class="form-control input-lg" placeholder=""
                                   name="email">
                        </div>
                        <div class="form-group">
                            <label for="" class="text-uppercase c-gray-light">
                                Mobile                            </label>
                            <input type="text" class="form-control input-lg" placeholder=""
                                   name="mobile">
                        </div>
                        <div class="form-group">
                            <label for="" class="text-uppercase c-gray-light">
                                Password                            </label>
                            <input type="password" class="form-control input-lg" placeholder=""
                                   name="Password">
                        </div>


              <button type="submit" class="btn btn-styled btn-base-1"
                          style="cursor: pointer;" name="register" value="Register"> Register          </button>
                        <div class="form-group">
                          <ul class="error">
              <% if(error!=null) out.print(error);%>
          </ul>
                        </div>

                </form>
            </div>
        </div>
    </div>
</section>

<script>

function Date1(timestamp)
    {var a = new Date(timestamp);
        var months = ['01','02','03','04','05','06','07','08','09','10','11','12'];
        var year = a.getFullYear();
        var month = months[a.getMonth()];
        var date = a.getDate();
        var time = year + '-' + month + '-' + date ;
        document.getElementById("date").value=time;
    }
function chng(){
    var elems = document.getElementsByClassName("flatpickr-time");
    var i;
    for (i = 0; i < elems.length; i++) {
    elems[i].style.display = "none";
    }}
    
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
<script src="/Hospital-mng-sys/assets/frontend/default/vendor/popper/popper.min.js"></script>
<script src="/Hospital-mng-sys/assets/frontend/default/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="/Hospital-mng-sys/assets/frontend/default/js/vendor/jquery.easing.js"></script>
<script src="/Hospital-mng-sys/assets/frontend/default/js/ie10-viewport-bug-workaround.js"></script>
<script src="/Hospital-mng-sys/assets/frontend/default/js/slidebar/slidebar.js"></script>
<script src="/Hospital-mng-sys/assets/frontend/default/js/classie.js"></script>

<!-- Bootstrap Extensions -->
<script src="/Hospital-mng-sys/assets/frontend/default/vendor/bootstrap-dropdown-hover/js/bootstrap-dropdown-hover.js"></script>
<!-- Plugins -->
<script src="/Hospital-mng-sys/assets/frontend/default/vendor/flatpickr/flatpickr.min.js"></script>
<script<script src="/Hospital-mng-sys/assets/frontend/default/vendor/swiper/js/swiper.min.js"></script>
<script src="/Hospital-mng-sys/assets/common/izitoast/js/iziToast.min.js"></script>

<!-- App JS -->
<script src="/Hospital-mng-sys/assets/frontend/default/js/wpx.app.js"></script>


    </body>

</html>
