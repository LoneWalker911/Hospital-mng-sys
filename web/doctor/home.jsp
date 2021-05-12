<%--
    Document   : home
    Created on : Apr 2, 2021, 6:20:21 PM
    Author     : thisa
--%>
<%--
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html> --%>
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
<%@page import="java.util.HashMap"%>

<%  HashMap<Integer, String> drugs = (HashMap<Integer, String>) request.getAttribute("drugs"); %>
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
<link href="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/css/select2.min.css" rel="stylesheet" />
<script src="https://cdn.jsdelivr.net/npm/select2@4.1.0-rc.0/dist/js/select2.min.js"></script>

<script>
    function getApp(id)
        {
          
          var xmlhttp = new XMLHttpRequest();
          xmlhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {
                var json = JSON.parse(this.responseText);
                document.getElementById('id1').innerHTML=json['id'];
                document.getElementById('name1').innerHTML=json['name'];
                document.getElementById('age1').innerHTML=json['age'];
                document.getElementById('date1').innerHTML=json['app_date'];
                document.getElementById('time').innerHTML=json['app_time'];
                document.getElementById('msg').innerHTML=json['msg'];
                if(json['img_1']!=="")
                    document.getElementById('img_1').innerHTML="<img  src=\"" + json['img_1']  + "\" style=\"width:100%\" onclick=\"openModal();currentSlide(1)\">";
                if(json['img_2']!=="")
                    document.getElementById('img_2').innerHTML="<img  src=\"" + json['img_2']  + "\" style=\"width:100%\" onclick=\"openModal();currentSlide(2)\">";
                if(json['img_3']!=="")
                    document.getElementById('img_3').innerHTML="<img  src=\"" + json['img_3']  + "\" style=\"width:100%\" onclick=\"openModal();currentSlide(3)\">";
                if(json['img_4']!=="")
                    document.getElementById('img_4').innerHTML="<img  src=\"" + json['img_4']  + "\" style=\"width:100%\" onclick=\"openModal();currentSlide(4)\">";



                document.getElementById('myModal3').style.display = "block";
            }
          };
          xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/doctor/EAppoinment?getinfo=" + id, true);
          xmlhttp.send();
        }
        
        function send()
        {
            var id = document.getElementById('id1').innerHTML;
            var drug_1 = document.getElementById('1drug_1').value;
            var drug_2 = document.getElementById('1drug_2').value;
            var drug_3 = document.getElementById('1drug_3').value;
            var qty_1 = document.getElementById('1qty_1').value;
            var qty_2 = document.getElementById('1qty_2').value;
            var qty_3 = document.getElementById('1qty_3').value;
            var msg = document.getElementById('sendmsg').value;

          var xmlhttp = new XMLHttpRequest();
          xmlhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {
                if(this.responseText==="1"){
                setStatus(3);
                document.getElementById('myModal3').style.display = "none";
                document.getElementById('1drug_1').value=0;
                document.getElementById('1drug_2').value=0;
                document.getElementById('1drug_3').value=0;
                document.getElementById('1qty_1').value=0;
                document.getElementById('1qty_2').value=0;
                document.getElementById('1qty_3').value=0;
                document.getElementById('sendmsg').value="";
                eapp(0);
            }}
          };
          xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/doctor/prescription?send=1&app_id=" + id +"&drug_1=" + drug_1 + "&qty_1=" + qty_1 +"&drug_2=" + drug_2 + "&qty_2=" + qty_2 +"&drug_3=" + drug_3 + "&qty_3=" + qty_3 +"&msg=" + msg, true);
          xmlhttp.send();
          
        }
        
        function setStatus(status)
        {
          var id = document.getElementById('id1').innerHTML;
          eapp(0);
          var xmlhttp = new XMLHttpRequest();
          xmlhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {
                if(this.responseText==="1"){
                console.out("App: "+id+" Status changed to "+status);
            }}
          };
          xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/doctor/EAppoinment?setStatus=" + status +"&id=" + id, true);
          xmlhttp.send();
        }
        
    $(document).ready(function() {
$('.js-example-basic-single').select2();
});
    function order(){
    var myModal = document.getElementById('myModal3');
    myModal.style.display="block";
    //document.getElementById('test02').style.display = "block";
}
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


        function channel()
        {

          var xmlhttp = new XMLHttpRequest();
          document.getElementById('test').innerHTML="<center><img src=\"https://cdn.dribbble.com/users/1186261/screenshots/3718681/_______.gif\" alt=\"Loading...\"></center>";
          xmlhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {
                document.getElementById('test').innerHTML="<h3 style=\"margin:20px 0px; color:#818da1; font-weight:200;\"><i class=\"entypo-right-circled\"></i>Channeling</h3>"+this.responseText;
            }
          };
          xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/doctor/channeling.jsp", true);
          xmlhttp.send();
          // document.getElementById('test').innerHTML="<iframe src=\"http://localhost:8080/Hospital-mng-sys/patient/history.jsp\" style=\"border:none\" width=\"100%\" height=\"1100px\"></iframe>";

        }
        function eapp(loading)
        {

          var xmlhttp = new XMLHttpRequest();
          if(loading===1)
            document.getElementById('test').innerHTML="<center><img src=\"https://cdn.dribbble.com/users/1186261/screenshots/3718681/_______.gif\" alt=\"Loading...\"></center>";
          xmlhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {
                document.getElementById('test').innerHTML="<h3 style=\"margin:20px 0px; color:#818da1; font-weight:200;\"><i class=\"entypo-right-circled\"></i>E - Appointment</h3>"+this.responseText;
            }
          };
          xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/doctor/EAppoinment", true);
          xmlhttp.send();
          // document.getElementById('test').innerHTML="<iframe src=\"http://localhost:8080/Hospital-mng-sys/patient/history.jsp\" style=\"border:none\" width=\"100%\" height=\"1100px\"></iframe>";

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
</script>



<style>
    .tile-stats .icon
    {
        bottom: 30px;
    }
    .row > .column {
  padding: 0 8px;
}


.column {
  float: left;
  width: 25%;
}
#myUL1 {
  list-style-type: none;
  padding: 0;
  margin: 0;
  position:absolute;
  width: 46%;
}

#myUL1 li a {
  border: 1px solid #ddd;
  /* margin-top: -1px; /* Prevent double borders */
  /* background-color: #f6f6f6; */
  /* padding: 12px; */
  /* text-decoration: none; */
  /* font-size: 18px; */
  /* color: black; */
  display: block;
  #myUL3 {
  list-style-type: none;
  padding: 0;
  margin: 0;
  position:absolute;
  width: 46%;
}

#myUL3 li a {
  border: 1px solid #ddd;
  /* margin-top: -1px; /* Prevent double borders */
  /* background-color: #f6f6f6; */
  /* padding: 12px; */
  /* text-decoration: none; */
  /* font-size: 18px; */
  /* color: black; */
  display: block;
  #myUL2 {
  list-style-type: none;
  padding: 0;
  margin: 0;
  position:absolute;
  width: 46%;
}

#myUL2 li a {
  border: 1px solid #ddd;
  /* margin-top: -1px; /* Prevent double borders */
  /* background-color: #f6f6f6; */
  /* padding: 12px; */
  /* text-decoration: none; */
  /* font-size: 18px; */
  /* color: black; */
  display: block;



}

</style>
    </head>
    <body class="page-body">
        <div class="page-container" >
            <div class="sidebar-menu">
    <header class="logo-env" >

        <!-- logo -->
        <div class="logo" style="">
            <a href="/Hospital-mng-sys/Login">
                <img src="../uploads/logo.png"  style="max-height:60px;"/>
            </a>
        </div>

    </header>
    <div class="sidebar-user-info">

        <div class="sui-normal">

                <span>Welcome,</span>
                <strong>Thisara Gunathilaka                </strong>
        </div>
    </div>

    <ul id="main-menu" class="">


        <li class="" style="">
            <a onclick="eapp(1);" href="#">
                <i class="fa fa-stethoscope"></i>
                <span>E - Appointments</span></a>

        </li>

          <li class="" style="">
            <a onclick="channel();" href="#">
              <i class="fa fa-desktop"></i>
                <span>Channeling</span>
            </a>
        </li>


      <li class="">
        <a href="">
          <i class="fa fa-hospital-o"></i>
            <span>Patient Details</span>
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
                    <i class="entypo-user"></i> Doctor - Channeling               </a>
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
    <div id="test"></div>

    <%-- Channeling --%>

    <div class="container">
  <!-- Channeling -->
  <div class="modal shade in" id="myModal2" role="dialog" style="">
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
            <th scope="row">No</th>
            <td>001</td>
          </tr>

          <tr>
            <th scope="row">Name</th>
            <td>Thisara Gunathilaka</td>
          </tr>

          <tr>
            <th scope="row">Age</th>
            <td>21 yrs</td>
          </tr>

          <tr>
            <th scope="row">Date</th>
            <td>20/04/2021</td>
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

            <td><select class="js-example-basic-single" id="">
            <%
        if(!drugs.isEmpty()){
            
               for (Integer id: drugs.keySet()) {
                   out.print("<option value=\""+ id +"\">"+ drugs.get(id) +"</option>");
                    }
                       }
            %>
                          </select>
            </td>
            <td><input type="number" id="qty_1" value="" placeholder="Enter Quantity"></td>

          </tr>
          <tr>

            <td><select class="js-example-basic-single" id="">
            <%
        if(!drugs.isEmpty()){
            
               for (Integer id: drugs.keySet()) {
                   out.print("<option value=\""+ id +"\">"+ drugs.get(id) +"</option>");
                    }
                       }
            %>
                          </select></td>
            <td><input type="number" name="" value="" placeholder="Enter Quantity"></td>

          </tr>
          </table>
                      <hr>

          </div>
          <div class="modal-footer">
              <button type="submit"  class="btn btn-primary" data-dismiss="modal">Submit</button>
          </div>
        </div>

      </div>
    </div>
  </div>


  <%-- E - Appointment --%>

  <div class="container">
<!-- E - Appointment -->
<div class="modal shade in" id="myModal3" role="dialog" style="">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" onclick="document.getElementById('myModal3').style.display = 'none'; setStatus(1);">&times;</button>
        <h3 class="modal-title">E - Appointment</h3>
      </div>
      <div class="modal-body">

        <table class="table table-striped">

        <tr>
          <th scope="col">ID</th>
          <td id="id1">01252</td>
        </tr>

        <tr>
          <th scope="row">Name</th>
          <td id="name1">Thisara Gunathilaka</td>
        </tr>

        <tr>
          <th scope="row">Age</th>
          <td id="age1">21 yrs</td>
        </tr>


        <tr>
          <th scope="row">Date</th>
          <td id="date1">20/04/2021</td>
        </tr>

        <tr>
          <th scope="row">Time</th>
          <td id="time">10:05:02</td>
        </tr>

        <tr>
          <th scope="row">Message</th>
          <td><p id="msg">Test<p></td>
        </tr>
      </table>

      <div class="row">
  <div class="column" id="img_1">
  </div>
  <div class="column" id="img_2">
  </div>
  <div class="column" id="img_3">
  </div>
  <div class="column" id="img_4">
  </div>
</div>

                    <hr>
      <table class="table table-striped">
        <h3>Prescription</h3>
        <tr>
          <th scope="row">Name</th>
          <th scope="row">Qty</th>

                    <tr>

                      <td><select class="js-example-basic-single" id="1drug_1">
                           <option value="0">Select</option>
                              <%
        if(!drugs.isEmpty()){
            
               for (Integer id: drugs.keySet()) {
                   out.print("<option value=\""+ id +"\">"+ drugs.get(id) +"</option>");
                    }
                       }
    %>
                          </select>
                      </td>
                      <td><input type="number" id="1qty_1" value="" placeholder="Enter Quantity"></td>

                    </tr>
        <tr>

                      <td><select class="js-example-basic-single" id="1drug_2">
                              <option value="0">Select</option>
                              <%
        if(!drugs.isEmpty()){
            
               for (Integer id: drugs.keySet()) {
                   out.print("<option value=\""+ id +"\">"+ drugs.get(id) +"</option>");
                    }
                       }
    %>
                          </select>
                      </td>
                      <td><input type="number" id="1qty_2" value="" placeholder="Enter Quantity"></td>

                    </tr>
                    <tr>

                      <td><select class="js-example-basic-single" id="1drug_3">
                              <option value="0">Select</option>
                              <%
        if(!drugs.isEmpty()){
            
               for (Integer id: drugs.keySet()) {
                   out.print("<option value=\""+ id +"\">"+ drugs.get(id) +"</option>");
                    }
                       }
    %>
                          </select>
                      </td>
                      <td><input type="number" id="1qty_3" value="" placeholder="Enter Quantity"></td>

                    </tr>
        </table>
        <br>
        <hr>
          <table class="table table-striped">
        <tr>
          <th scope="row">Message To Patient</th>
          <td><input type="textarea" id="sendmsg" value="" class="" placeholder="Enter Message To Patient :"></td>
        </tr>
        <br>
          <tr>
            <th scope="row">Select The Department :</th>
            <td><select class="form-control  input-sm" name="" id=""
                    onchange="">
                    <option value="0">Select The Department</option>
                                                    <option value="1"
                                                            >
                            ENT                                </option>
                                                    <option value="2"
                                                            >
                            Dermatology                               </option>
             </select></td>
              <td><button type="submit" class="btn btn-primary" >Send</button></td>
          </tr>
      </table>
                  <hr>

        </div>
        <div class="modal-footer">
            <button type="submit" class="btn btn-primary" onclick="send();">Submit</button>
        </div>
      </div>

    </div>
  </div>
</div>


                <!-- Footer -->
<footer class="main">
	&copy; 2021 <strong> Hospital Management System</strong>
    Developed by

</footer>

            </div>

        </div>
<script type="text/javascript">
    function myFunction1() {
        var input, filter, ul, li, a, i, txtValue;
        input = document.getElementById("myInput1");
        filter = input.value.toUpperCase();
        ul = document.getElementById("myUL1");
        li = ul.getElementsByTagName("li");
        for (i = 0; i < li.length; i++) {
            a = li[i].getElementsByTagName("a")[0];
            txtValue = a.textContent || a.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                li[i].style.display = "";
            } else {
                li[i].style.display = "none";
            }
        }
    }
    
    function myFunction2() {
        var input, filter, ul, li, a, i, txtValue;
        input = document.getElementById("myInput2");
        filter = input.value.toUpperCase();
        ul = document.getElementById("myUL2");
        li = ul.getElementsByTagName("li");
        for (i = 0; i < li.length; i++) {
            a = li[i].getElementsByTagName("a")[0];
            txtValue = a.textContent || a.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                li[i].style.display = "";
            } else {
                li[i].style.display = "none";
            }
        }
    }
    
    function myFunction3() {
        var input, filter, ul, li, a, i, txtValue;
        input = document.getElementById("myInput3");
        filter = input.value.toUpperCase();
        ul = document.getElementById("myUL3");
        li = ul.getElementsByTagName("li");
        for (i = 0; i < li.length; i++) {
            a = li[i].getElementsByTagName("a")[0];
            txtValue = a.textContent || a.innerText;
            if (txtValue.toUpperCase().indexOf(filter) > -1) {
                li[i].style.display = "";
            } else {
                li[i].style.display = "none";
            }
        }

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
                <button type="button" class="btn btn-default" onclick="send();">Close</button>
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
    //$(".html5editor").wysihtml5();
</script>



    </body>
</html>
