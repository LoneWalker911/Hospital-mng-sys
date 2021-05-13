<!DOCTYPE html>
<html lang="en" dir="">
    <head>

        <title>Receptionist - Hospital Management System</title>

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

<script>
    function app()
    {
        document.getElementById('ad').style.display='none';
        document.getElementById('patient').style.display='none';
        document.getElementById('dash').style.display='none';
        document.getElementById('recep').style.display='none';
        document.getElementById('app').style.display='block';
    }
    
    function chan()
    {
        document.getElementById('ad').style.display='none';
        document.getElementById('patient').style.display='none';
        document.getElementById('dash').style.display='none';
        document.getElementById('recep').style.display='block';
        document.getElementById('app').style.display='none';
    }
    
    function patient()
    {
        document.getElementById('ad').style.display='none';
        document.getElementById('patient').style.display='block';
        document.getElementById('dash').style.display='none';
        document.getElementById('recep').style.display='none';
        document.getElementById('app').style.display='none';
    }
    
    function ad()
    {
        document.getElementById('ad').style.display='block';
        document.getElementById('patient').style.display='none';
        document.getElementById('dash').style.display='none';
        document.getElementById('recep').style.display='none';
        document.getElementById('app').style.display='none';
    }
    
    function dash()
    {
        document.getElementById('ad').style.display='none';
        document.getElementById('patient').style.display='none';
        var xmlhttp = new XMLHttpRequest();
          xmlhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {
                document.getElementById('tabledata').innerHTML=this.responseText;
            }
          };
          xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/receptionist/dashboard", true);
          xmlhttp.send();
        document.getElementById('dash').style.display='block';
        document.getElementById('recep').style.display='none';
        document.getElementById('app').style.display='none';
    }
    
    const interval = setInterval(function() {
   var xmlhttp = new XMLHttpRequest();
          xmlhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {
                document.getElementById('tabledata').innerHTML=this.responseText;
            }
          };
          xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/receptionist/dashboard", true);
          xmlhttp.send();
 }, 3000);
 
    function delete(id)
    {   var status=0;
        var r = confirm("Are you sure?!");
        if (r == true) {
        var xmlhttp = new XMLHttpRequest();
          xmlhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {
                if(this.responseText==="1"){
                console.out("App: "+id+" Status changed to "+status);
                eapp(0);
            }}
          };
          xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/doctor/EAppoinment?setStatus=" + status +"&id=" + id, true);
          xmlhttp.send();
      } else {
        txt = "You pressed Cancel!";
      }
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
                <strong>Receptionist </strong>
        </div>
    </div>

    <ul id="main-menu" class="">

        <!-- DASHBOARD -->
        <li class="">
            <a onclick="dash();" href="#">
                <i class="fa fa-desktop"></i>
                <span>Dashboard</span>
            </a>
        </li>

        <li class="">
            <a onclick="app();" href="#">
                <i class="fa fa-edit"></i>
                <span>Add Appointment</span>
            </a>
        </li>

          <li class="">
            <a onclick="chan();" href="#">
              <i class="fa fa-hospital-o"></i>
                <span>Channeling</span>
            </a>
        </li>

        <li class="">
            <a onclick="patient();" href="#">
                <i class="fa fa-user">
                </i>Patient</span>
            </a>
        </li>

        <li class="">
            <a onclick="ad();" href="#">
                <i class="fa fa-stethoscope"></i>
                <span>Active Doctors</span>
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
                    <i class="entypo-user"></i> receptionist                </a>
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



    <!-- Table for receptionist Dashboard-->
    <div class="receptionist-dashboard" id="dash">
      <h3 style="margin:20px 0px; color:#818da1; font-weight:200;">
          <i class="entypo-right-circled"></i>
          Receptionist Dashboard                </h3>

    <table class="table table-striped">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Name</th>
      <th scope="col">Doctor status</th>
      <th scope="col">Cancel</th>
    </tr>
  </thead>
  <tbody id="tabledata">
    <tr>
      <th scope="row">1</th>
      <td>Thisara Gunathilaka</td>
      <td><button class="btn btn-warning btn-sm"  name="cancel">Waiting</button></td>
      <td><button class="btn btn-danger btn-sm" name="cancel"><i class="fa fa-trash-o"/>Delete</button><td>
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Prashan Vimanths</td>
      <td><button class="btn btn-warning btn-sm"  name="cancel">Waiting</button></td>
      <td><button class="btn btn-danger btn-sm" name="cancel"><i class="fa fa-trash-o"/>Delete</button><td>
    </tr>
  </tbody>
</table>
</div>

<!-- Add Appointment -->
<div class="receptionist-addAppoinment" id="app" style="display:none">

  <h3 style="margin:20px 0px; color:#818da1; font-weight:200;">
      <i class="entypo-right-circled"></i>
      Add Appointment                </h3>

<form class="form-default" role="form"
    action="../index.php/home/make_an_appointment"
        method="post"
            enctype="multipart/form-data">




        <div class="form-group">
            <label for="" class="text-uppercase  c-gray-light">
                Name                            </label>
            <input type="text" class="form-control input-lg" placeholder="Enter Name"
                   name="name">
        </div>


        <div class="form-group">
            <label for="" class="text-uppercase c-gray-light">
                Age                            </label>
            <input type="number" class="form-control input-lg" placeholder=""
                   name="age">
        </div>

<br>


    <button type="submit" class="btn btn-primary btn-lg"
            style="cursor: pointer;">
        <i class="fa fa-calendar mr-1"></i> Add Now                    </button>
</form>

</div>

<!-- receptionist-Channeling -->
<div class="receptionist-channeling" id="recep" style="display:none">

  <h3 style="margin:20px 0px; color:#818da1; font-weight:200;">
      <i class="entypo-right-circled"></i>
      Channeling                </h3>

      <table class="table table-striped">
    <thead>
      <tr>
        <th scope="col">Reference No.</th>
        <th scope="col">Name</th>
        <th scope="col">Number</th>
        <th scope="col">Doctor(Dept)</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <th scope="row">12527</th>
        <td>Thisara Gunathilaka</td>
        <td>01</td>
        <td>Dr.Thisara(ENT)</td>
      </tr>
      <tr>
        <th scope="row">12527</th>
        <td>Thisara Gunathilaka</td>
        <td>01</td>
        <td>Dr.Thisara(ENT)</td>
      </tr>
      <tr>
        <th scope="row">12527</th>
        <td>Thisara Gunathilaka</td>
        <td>01</td>
        <td>Dr.Thisara(ENT)</td>
      </tr>
    </tbody>
  </table>
</div>

<!-- Patient -->
<div class="receptionist-patient" id="patient" style="display:none">
  <ul class="list-inline links-list pull-left">
    <h3 style="margin:20px 0px; color:#818da1; font-weight:200;">
        <i class="entypo-right-circled"></i>
        Patient Information                </h3>
  </ul>
      <ul class="list-inline links-list pull-right">
          <li class="sep"></li>
            <li>
              <input type="text" class="input-sm" name="search" value="" placeholder="Search here.. ">
          </li>
      </ul>


      <table class="table table-striped">
    <thead>
      <tr>
        <th scope="col">ID</th>
        <th scope="col">Name</th>
        <th scope="col">Address</th>
        <th scope="col">E-mail</th>
        <th scope="col">Mobile</th>

      </tr>
    </thead>
    <tbody>
      <tr>
        <th scope="row">1</th>
        <td>Thisara Gunathilaka</td>
        <td>No:128,Isuru Mw,Yakkala</td>
        <td>thisara.gunathilaka@gmail.com</td>
        <td>078-1245789</td>

        <td><button class="btn btn-danger btn-sm" name="cancel"><i class="fa fa-trash-o"/>Delete</button><td>
      </tr>
      <tr>
        <th scope="row">2</th>
        <td>Thisara Gunathilaka</td>
        <td>No:128,Isuru Mw,Yakkala</td>
        <td>thisara.gunathilaka@gmail.com</td>
        <td>078-1245789</td>

        <td><button class="btn btn-danger btn-sm" name="cancel"><i class="fa fa-trash-o"/>Delete</button><td>
      </tr>
    </tbody>
  </table>
</div>

<!-- Active Doctors -->
<div class="receptionist-actDr" id="ad" style="display:none">
  <h3 style="margin:20px 0px; color:#818da1; font-weight:200;">
      <i class="entypo-right-circled"></i>
      Active Doctors                 </h3>
      <table class="table table-striped">
    <thead>
      <tr>
        <th scope="col">Name</th>
        <th scope="col">Department</th>
        <th scope="col">Status</th>
        </tr>
    </thead>
    <tbody>
      <tr>
        <th scope="row">Thisara Gunathilaka</th>
        <td>ENT</td>
        <td><input type="submit" class="btn btn-danger btn-sm" name="cancel" value="With a patient" style="cursor:default;"/><td>
          <td><input type="submit" class="btn btn-warning btn-sm" name="cancel" value="Waiting" style="cursor:default; display:none;"/><td>
            <td><input type="submit" class="btn btn-success btn-sm" name="cancel" value="Available" style="cursor:default; display:none;"/><td>
      </tr>

    </tbody>
  </table>
</div>



                <!-- Footer -->
<footer class="main">
	&copy; 2021 <strong> Hospital Management System</strong>
    Developed by DIGITAL WEB LANKAN

</footer>

            </div>

        </div>
        <script type="text/javascript">
function getApp()
{
  console.log("Shanthi");
}

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






<script type="text/javascript">
function confirm_modal(delete_url)
{
jQuery('#modal-4').modal('show', {backdrop: 'static'});
document.getElementById('delete_link').setAttribute('href' , delete_url);
}
</script>

<!-- (Normal Modal)-->
<div class="modal fade" id="modal-4">
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
