<%--
    Document   : home
    Created on : Apr 2, 2021, 6:20:21 PM
    Author     : thisa
--%>

<%-- <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <button class="btn-danger btn btn-block rounded-pill" type="button" onclick="document.cookie = 'usr=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/Hospital-mng-sys;'; location.reload();">LOG OUT</button>
        <a href="eApp">e-appointment</a>
        <a href="Channel">channel book</a>




    </body>
</html> --%>
<!DOCTYPE html>
<html lang="en" dir="">
    <head>

        <title>Patient - Hospital Management System</title>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content=" Hospital Management System - Creativeitem" />
        <meta name="author" content="Creativeitem" />



<link rel="stylesheet" href="../assets/js/jquery-ui/css/no-theme/jquery-ui-1.10.3.custom.min.css">
<link rel="stylesheet" href="../assets/css/font-icons/entypo/css/entypo.css">
<link href="Test001/fonts.googleapis.com/css?family=Poppins:400,500,600" rel="stylesheet">
<link rel="stylesheet" href="../assets/css/bootstrap.css">
<link rel="stylesheet" href="../assets/css/neon-core.css">
<link rel="stylesheet" href="../assets/css/neon-theme.css">
<link rel="stylesheet" href="../assets/css/neon-forms.css">
<link rel="stylesheet" href="../assets/css/custom.css">
<link rel="shortcut icon" href="../uploads/favicon.png">
<link rel="stylesheet" href="../assets/css/font-icons/font-awesome/css/font-awesome.min.css">
<link rel="stylesheet" href="../assets/js/vertical-timeline/css/component.css">
<link rel="stylesheet" href="../assets/js/datatables/responsive/css/datatables.responsive.css">
<script src="../assets/frontend/default/vendor/jquery/jquery.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<%-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> --%>
<%-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> --%>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>


<script>
// function info()
// {
//
//   var xmlhttp = new XMLHttpRequest();
//   xmlhttp.onreadystatechange = function() {
//     if (this.readyState === 4 && this.status === 200) {
//         document.getElementById('test02').innerHTML="<h3 style=\"margin:20px 0px; color:#818da1; font-weight:200;\"><i class=\"entypo-right-circled\"></i>Patient E - Channeling</h3>"+this.responseText;
//     }
//   };
//   xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/patient/information.jsp", true);
//   xmlhttp.send();
// }
    function test456()
    {
document.getElementById('test').innerHTML="<img src=\"https://cdn.dribbble.com/users/1186261/screenshots/3718681/_______.gif\" alt=\"Loading...\">";
      // var xmlhttp = new XMLHttpRequest();
      // xmlhttp.onreadystatechange = function() {
      //   if (this.readyState === 4 && this.status === 200) {
      //       document.getElementById('test').innerHTML="<h3 style=\"margin:20px 0px; color:#818da1; font-weight:200;\"><i class=\"entypo-right-circled\"></i>Patient E - Channeling</h3>"+this.responseText;
      //   }
      // };
      // xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/patient/eApp", true);
      // xmlhttp.send();
      document.getElementById('test').innerHTML="<iframe src=\"http://localhost:8080/Hospital-mng-sys/patient/eApp\" style=\"border:none\" width=\"100%\" height=\"1175px\"></iframe>";
    }


        function History()
        {

          // var xmlhttp = new XMLHttpRequest();
          // document.getElementById('test').innerHTML="<center><img src=\"https://cdn.dribbble.com/users/1186261/screenshots/3718681/_______.gif\" alt=\"Loading...\"></center>";
          // xmlhttp.onreadystatechange = function() {
          //   if (this.readyState === 4 && this.status === 200) {
          //       document.getElementById('test').innerHTML="<h3 style=\"margin:20px 0px; color:#818da1; font-weight:200;\"><i class=\"entypo-right-circled\"></i>History</h3>"+this.responseText;
          //   }
          // };
          // xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/patient/history.jsp", true);
          // xmlhttp.send();
           document.getElementById('test').innerHTML="<iframe src=\"http://localhost:8080/Hospital-mng-sys/patient/history\" style=\"border:none\" width=\"100%\" height=\"1100px\"></iframe>";

        }
        function ChngPwd()
        {

          // var xmlhttp = new XMLHttpRequest();
          // xmlhttp.onreadystatechange = function() {
          //   if (this.readyState === 4 && this.status === 200) {
          //       document.getElementById('test').innerHTML="<h3 style=\"margin:20px 0px; color:#818da1; font-weight:200;\"><i class=\"entypo-right-circled\"></i>Update Profile</h3>"+this.responseText;
          //   }
          // };
          // xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/patient/UpdateProfile.jsp", true);
          // xmlhttp.send();
          document.getElementById('test').innerHTML="<iframe src=\"http://localhost:8080/Hospital-mng-sys/patient/UpdateProfile.jsp\" style=\"border:none\" width=\"100%\" height=\"1100px\"></iframe>";

        }
        function order()
        {

          // var xmlhttp = new XMLHttpRequest();
          // xmlhttp.onreadystatechange = function() {
          //   if (this.readyState === 4 && this.status === 200) {
          //       document.getElementById('test').innerHTML="<h3 style=\"margin:20px 0px; color:#818da1; font-weight:200;\"><i class=\"entypo-right-circled\"></i>Update Profile</h3>"+this.responseText;
          //   }
          // };
          // xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/patient/UpdateProfile.jsp", true);
          // xmlhttp.send();
          document.getElementById('test').innerHTML="<iframe src=\"http://localhost:8080/Hospital-mng-sys/patient/order.jsp\" style=\"border:none\" width=\"100%\" height=\"1100px\"></iframe>";

        }
</script>



<style>
    .tile-stats .icon
    {
        bottom: 30px;
    }
</style>
    </head>
    <body class="page-body">
        <div class="page-container" >
            <div class="sidebar-menu">
    <header class="logo-env" >

        <!-- logo -->
        <div class="logo" style="">
            <a href="../index.php/login">
                <img src="../uploads/logo.png"  style="max-height:60px;"/>
            </a>
        </div>

    </header>
    <div class="sidebar-user-info">

        <div class="sui-normal">

                <span>Welcome,</span>
                <strong>Thisara Gunathilaka</strong>
        </div>
    </div>

    <ul id="main-menu" class="">


        <li class="">
            <a onclick="test456();" href="#">
                <i class="fa fa-stethoscope"></i>
                <span>E-channeling</span></a>

        </li>

          <li class="">
            <a onclick="History();" href="#">
              <i class="fa fa-desktop"></i>
                <span>History</span>
            </a>
        </li>


        <li class="">
          <a onclick="ChngPwd();" href="#">
            <i class="fa fa-user"></i>
              <span>Change Password</span>
          </a>
      </li>


    </ul>

</div>            <div class="main-content">

                <div class="row">
    <div class="col-md-12 col-sm-12 clearfix" style="text-align:center;">
        <h2 style="font-weight:200; margin:0px;">Hospital Management System</h2>
    </div>

    <div class="col-md-12 col-sm-12 clearfix ">
        <ul class="list-inline links-list pull-left">
            <li class="dropdown language-selector">
                <a class="dropdown-toggle" data-toggle="dropdown" data-close-others="true">
                    <i class="entypo-user"></i> Patient                </a>
            </li>
        </ul>


        <ul class="list-inline links-list pull-right">
            <li class="sep"></li>
              <li>
                <a onclick="document.cookie = 'usr=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/Hospital-mng-sys;'; location.reload();" href="#">
                    Logout &nbsp;<i class="fa fa-sign-out"></i>
                </a>
            </li>
        </ul>
    </div>

</div>

<hr style="margin-top:0px;" />



    <!-- Form for E-Appointment-->
      <div id="test" >
          </div>

    <%-- Modal for patient history --%>

  <div class="modal shade in" id="myModal" role="dialog" style="">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Patient Information</h3>
        </div>
        <div class="modal-body">

          <table class="table table-striped">

          <tr>
            <th scope="col">ID</th>
            <td>01252</td>
          </tr>

          <tr>
            <th scope="row">Name</th>
            <td>Thisara Gunathilaka</td>
          </tr>

          <tr>
            <th scope="row">Date</th>
            <td>12/01/2021</td>
          </tr>

          <tr>
            <th scope="row">Time</th>
            <td>20:12:02</td>
          </tr>

          <tr>
            <th scope="row">No</th>
            <td>001</td>
          </tr>

          <tr>
            <th scope="row">Doctor Name</th>
            <td>Dr. Thisra Gunathialaka</td>
          </tr>

          <tr>
            <th scope="row">Department</th>
            <td>ENT</td>
          </tr>


        </table>
                      <hr>
        <table class="table table-striped">
          <h3>Prescription</h3>
          <tr>
            <th scope="row">Name</th>
            <th scope="row">Qty</th>
          </tr>
          <tr>
            <td>Paracetamol 500mg</td>
            <td>30</td>
          </tr>
          </table>
                      <hr>
          <table class="table table-striped">
            <h3>Payment Information</h3>
            <tr>
              <th scope="row">Doctor Charges</th>
              <td>LKR 1200</td>
            </tr>

            <tr>
              <th scope="row">Prescription</th>
              <td>LKR 2000</td>
            </tr>

            <tr>
              <th scope="row">Total</th>
              <td scope="col">LKR 3200</td>
            </tr>
            </table>
          </div>
          <div class="modal-footer">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
          </div>
        </div>

      </div>
    </div>


                <!-- Footer -->
<footer class="main">
	&copy; 2017 <strong> Hospital Management System</strong>
    Developed by

</footer>

            </div>

        </div>
        <script type="text/javascript">



function showAjaxModal(url)
{
$('.customized-modal').css('margin-top', window.scrollY);
// SHOWING AJAX PRELOADER IMAGE
jQuery('#modal_ajax .modal-body').html('<div style="text-align:center;margin-top:200px;"><img src="assets/images/preloader.gif" style="height:25px;" /></div>');

// LOADING THE AJAX MODAL
jQuery('#modal_ajax').modal('show', {backdrop: 'true'});

// SHOW AJAX RESPONSE ON REQUEST SUCCESS
$.ajax({
  url: url,
  success: function(response)
  {
    jQuery('#modal_ajax .modal-body').html(response);
  }
});
}
</script>

<!-- (Ajax Modal)-->
<div class="modal fade customized-modal" id="modal_ajax">
    <div class="modal-dialog" >
        <div class="modal-content" style="">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"> Hospital Management System</h4>
            </div>

            <div class="modal-body" style="height:500px; overflow:auto;">


            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>




<script type="text/javascript">
function confirm_modal(delete_url)
{
jQuery('#modal-4').modal('show', {backdrop: 'static'});
document.getElementById('delete_link').setAttribute('href' , delete_url);
}
</script>

<!-- (Normal Modal)-->
<div class="modal fade" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content" style="margin-top:100px;">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" style="text-align:center;">Are you sure to delete this information ?</h4>
            </div>


            <div class="modal-footer" style="margin:0px; border-top:0px; text-align:center;">
                <a href="#" class="btn btn-danger" id="delete_link">Delete</a>
                <button type="button" class="btn btn-info" data-dismiss="modal">Cancel</button>
            </div>
        </div>
    </div>
</div>

<!--    custom width modal -->

<script type="text/javascript">



    function showCustomWidthModal(url)
    {
        // SHOWING AJAX PRELOADER IMAGE
        jQuery('#modal-2 .modal-body').html('<div style="text-align:center;margin-top:200px;"><img src="assets/images/preloader.gif" style="height:25px;" /></div>');

        // LOADING THE AJAX MODAL
        jQuery('#modal-2').modal('show', {backdrop: 'true'});

        // SHOW AJAX RESPONSE ON REQUEST SUCCESS
        $.ajax({
            url: url,
            success: function(response)
            {
                jQuery('#modal-2 .modal-body').html(response);
            }
        });
    }
</script>

<div class="modal fade custom-width" id="modal-2">
    <div class="modal-dialog" style="width: 75%;">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"> Hospital Management System</h4>
            </div>

            <div class="modal-body">

            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
        <link rel="stylesheet" href="../assets/js/daterangepicker/daterangepicker-bs3.css">
<link rel="stylesheet" href="../assets/js/selectboxit/jquery.selectBoxIt.css">
<link rel="stylesheet" href="../assets/js/wysihtml5/bootstrap-wysihtml5.css">
<link rel="stylesheet" href="../assets/js/selectboxit/jquery.selectBoxIt.css">
<link rel="stylesheet" href="../assets/js/datatables/responsive/css/datatables.responsive.css">
<link rel="stylesheet" href="../assets/js/select2/select2-bootstrap.css">
<link rel="stylesheet" href="../assets/js/select2/select2.css">

<!-- Bottom Scripts -->

<script src="../assets/js/gsap/main-gsap.js"></script>
<script src="../assets/js/jquery-ui/js/jquery-ui-1.10.3.minimal.min.js"></script>
<script src="../assets/js/bootstrap.js"></script>
<script src="../assets/js/joinable.js"></script>
<script src="../assets/js/resizeable.js"></script>
<script src="../assets/js/neon-api.js"></script>
<script src="../assets/js/bootstrap-switch.min.js"></script>
<script src="../assets/js/toastr.js"></script>
<script src="../assets/js/jquery.validate.min.js"></script>
<script src="../assets/js/fullcalendar/fullcalendar.min.js"></script>
<script src="../assets/js/bootstrap-datepicker.js"></script>
<script src="../assets/js/bootstrap-timepicker.min.js"></script>
<script src="../assets/js/fileinput.js"></script>
<script src="../assets/js/wysihtml5/wysihtml5-0.4.0pre.min.js"></script>
<script src="../assets/js/wysihtml5/bootstrap-wysihtml5.js"></script>
<script src="../assets/js/jquery.multi-select.js"></script>
<script src="../assets/js/jquery.knob.js"></script>
<script src="../assets/js/selectboxit/jquery.selectBoxIt.min.js"></script>
<script src="../assets/js/jquery.inputmask.bundle.min.js"></script>
<script src="../assets/js/daterangepicker/moment.min.js"></script>
<script src="../assets/js/daterangepicker/daterangepicker.js"></script>
<script src="/Hospital-mng-sys/assets/frontend/default/vendor/flatpickr/flatpickr.min.js"></script>
<script src="/Hospital-mng-sys/assets/frontend/default/vendor/swiper/js/swiper.min.js"></script>
<script src="/Hospital-mng-sys/assets/common/izitoast/js/iziToast.min.js"></script>

<link rel="stylesheet" href="../assets/js/dropzone/dropzone.css">
<script src="../assets/js/dropzone/dropzone.js"></script>

<script src="../assets/js/jquery.dataTables.min.js"></script>
<script src="../assets/js/datatables/TableTools.min.js"></script>
<script src="../assets/js/dataTables.bootstrap.js"></script>
<script src="../assets/js/datatables/jquery.dataTables.columnFilter.js"></script>
<script src="../assets/js/datatables/lodash.min.js"></script>
<script src="../assets/js/datatables/responsive/js/datatables.responsive.js"></script>
<script src="../assets/js/select2/select2.min.js"></script>

<script src="../assets/js/neon-calendar.js"></script>
<script src="../assets/js/neon-chat.js"></script>
<script src="../assets/js/neon-custom.js"></script>
<script src="../assets/js/neon-demo.js"></script>
<script src="../assets/js/neon-notes.js"></script>
<script src="../assets/js/jquery.form.js"></script>

<script src="../assets/js/ajax-form-submission.js"></script>


<script>
    $(".html5editor").wysihtml5();
</script>



    </body>
</html>
