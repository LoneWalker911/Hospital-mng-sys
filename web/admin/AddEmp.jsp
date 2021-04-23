<%--
    Document   : AddEmp
    Created on : Apr 8, 2021, 10:04:48 PM
    Author     : thisa
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
HashMap<Integer, String> Types = (HashMap<Integer, String>)request.getAttribute("types");
ArrayList el=null;
if(request.getAttribute("error")!=null)
{el = (ArrayList)request.getAttribute("error");}
%>
<!DOCTYPE html>
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="robots" content="index, follow">
<meta name="description" content="Bayanno Hospital Management System">
<meta name="keywords" content="bootstrap, responsive, template, website, html, theme, ux, ui, web, design, developer, support, business, corporate, real estate, education, medical, school, education, demo, css, framework">
<meta name="author" content="Creativeitem">
        <title>Add Employee | Bayanno Diagnostic Center</title>
        <!--jquery-->


<!-- Page loader -->
<script
    src="../assets/frontend/default/vendor/pace/js/pace.min.js"></script>
<link rel="stylesheet"
    href="../assets/frontend/default/vendor/pace/css/pace-minimal.css" type="text/css">

<!-- Bootstrap -->
<link rel="stylesheet"
    href="../assets/frontend/default/vendor/bootstrap/css/bootstrap.min.css" type="text/css">

<!-- Fonts -->
<link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

<!-- Plugins -->
<link rel="stylesheet"
    href="../assets/frontend/default/vendor/swiper/css/swiper.min.css">
<link rel="stylesheet"
    href="../assets/frontend/default/vendor/hamburgers/hamburgers.min.css" type="text/css">
<link rel="stylesheet"
    href="../assets/frontend/default/vendor/animate/animate.min.css" type="text/css">
<link rel="stylesheet"
      href="../assets/common/izitoast/css/iziToast.min.css" type="text/css">
<!-- Icons -->
<link rel="stylesheet"
    href="../assets/frontend/default/fonts/font-awesome/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet"
    href="../assets/frontend/default/fonts/ionicons/css/ionicons.min.css" type="text/css">
<link rel="stylesheet"
    href="../assets/frontend/default/fonts/line-icons-pro/line-icons-pro.css" type="text/css">


<!-- Global style (main) -->
<link id="stylesheet" type="text/css"
    href="../assets/frontend/default/css/global-style.css" rel="stylesheet" media="screen">

<!-- Custom style - Remove if not necessary -->
<link type="text/css"
    href="../assets/frontend/default/css/custom-style.css" rel="stylesheet">

<!-- Favicon -->
<link href="../uploads/favicon.png" rel="icon" type="image/png">

<!-- recaptcha -->
<script src='https://www.google.com/recaptcha/api.js'></script>
<script src="../assets/frontend/default/vendor/jquery/jquery.min.js"></script>
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
                Add Employee            </h3>
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
                                Name                            </label>
                            <input type="text" class="form-control input-lg" placeholder=""
                              id="name"     name="name">
                        </div>

                        <div class="form-group">
                            <label for="" class="text-uppercase c-gray-light">
                                Phone                            </label>
                            <input type="number" class="form-control input-lg" placeholder=""
                              id="mobile"     name="mobile">
                        </div>
                        <div class="form-group">
                            <label for="" class="text-uppercase c-gray-light">
                                Address                            </label>
                            <input type="number" class="form-control input-lg" placeholder=""
                              id="address" name="address">
                        </div>
                        <div class="form-group">
                            <label for="" class="text-uppercase c-gray-light">
                                E-mail                            </label>
                            <input type="number" class="form-control input-lg" placeholder=""
                              id="email" name="email">
                        </div>


                    <div class="form-group">
                        <label for="" class="text-uppercase c-gray-light">
                            User type                        </label>
                        <select class="form-control" id="type" name="type"
                            onchange="Staff()">
                            <option value="" disabled selected>Select user type</option>
                            <%
                            for (Integer id: Types.keySet()) {
                              out.println("<option value=\""+id.toString()+"\">"+Types.get(id)+"</option>");
                            }
                            %>
                        </select>
                    </div>
                    <div id="staff_fields"></div><br><br>

                    <div class="form-group">
                        <label for="" class="text-uppercase  c-gray-light">
                            Username                            </label>
                        <input type="text"  class="form-control input-lg" placeholder=""
                          id="name"     name="name">
                    </div>
                    <button type="button" id="chkbtn" onclick="checkUsr();">Check</button><br>

                    <div class="form-group">
                          <label for="" class="text-uppercase c-gray-light">
                              Password                            </label>
                          <input type="password" class="form-control input-lg" placeholder=""
                            id="psw"     name="psw" readonly>
                      </div>





                    <button type="submit" class="btn btn-styled btn-base-1"
                            style="cursor: pointer;" id="sub" name="submit" value="Register" disabled>
                         Submit                  </button>
                         <div class="info">
                         <ul id="error">
                <%
                    if(el!=null){
                    for(Object str : el)
                    {
                        out.println("<li>"+str+"</li>");
                    }
                    }
                %>
              </div>
            </ul>
                </form>
            </div>
        </div>
    </div>
</section>

<script>

function Staff()
            {
              var id = document.getElementById("type").value;
              var xmlhttp = new XMLHttpRequest();
              xmlhttp.onreadystatechange = function() {
                if (this.readyState === 4 && this.status === 200) {
                    document.getElementById('staff_fields').innerHTML=this.responseText;
                }
              };
              xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/staff_register?id=" + id, true);
              xmlhttp.send();
            }

            function checkUsr()
            {
              var user = document.getElementById("uname").value;


              if(user!=="" && document.getElementById('chkbtn').innerHTML==="Check"){
              var xmlhttp = new XMLHttpRequest();
              xmlhttp.onreadystatechange = function() {
                if (this.readyState === 4 && this.status === 200) {
                    if(this.responseText==="1")
                    {
                        document.getElementById('error').innerHTML="This username already exsits. Please use a different one and try again.";
                        document.getElementById("uname").value="";
                        document.getElementById("psw").readOnly=true;
                        document.getElementById("sub").disabled=true;
                    }
                    else
                    {
                        document.getElementById('error').innerHTML="";
                        document.getElementById("uname").readOnly=true;
                        document.getElementById("psw").readOnly=false;
                        document.getElementById("sub").disabled=false;
                        document.getElementById('chkbtn').innerHTML="Reset";
                    }
                }
              };
              xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/staff_register?user=" + user, true);
              xmlhttp.send();
          }

             if(document.getElementById('chkbtn').innerHTML==="Reset"){
                  document.getElementById("uname").value="";
                  document.getElementById("uname").readOnly=false;
                  document.getElementById("psw").readOnly=true;
                  document.getElementById("sub").disabled=true;
                  document.getElementById('error').innerHTML="";
                  document.getElementById('chkbtn').innerHTML="Check";
              }
            }

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

<%-- <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="AddEmp">
            <label for="name">name:</label>
            <input type="text" id="name" name="name"> <br>
            <label for="mobile">mobile:</label>
            <input type="number" id="mobile" name="mobile"><br>
            <label for="address">address:</label>
            <input type="text" id="address" name="address"><br>
            <label for="email">email:</label>
            <input type="email" id="email" name="email"><br>
            <label for="type">User type:</label>
            <select id="type" name="type" onchange="Staff()">
                <option value="" disabled selected>Select user type</option>
            <%
                for (Integer id: Types.keySet()) {
                out.println("<option value=\""+id.toString()+"\">"+Types.get(id)+"</option>");
                }
            %>
            </select><br>
            <div id="staff_fields"></div><br><br>

            <label for="uname">username:</label>
            <input type="text" id="uname" name="uname">
            <button type="button" id="chkbtn" onclick="checkUsr();">Check</button><br>
            <label for="psw">password:</label>
            <input type="password" id="psw" name="psw" readonly><br>

            <input type="submit" id="sub" name="submit" value="Register" disabled>
            <ul id="error">
                <%
                    if(el!=null){
                    for(Object str : el)
                    {
                        out.println("<li>"+str+"</li>");
                    }
                    }
                %>
            </ul>
        </form>
            <script>
            function Staff()
            {
              var id = document.getElementById("type").value;
              var xmlhttp = new XMLHttpRequest();
              xmlhttp.onreadystatechange = function() {
                if (this.readyState === 4 && this.status === 200) {
                    document.getElementById('staff_fields').innerHTML=this.responseText;
                }
              };
              xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/staff_register?id=" + id, true);
              xmlhttp.send();
            }

            function checkUsr()
            {
              var user = document.getElementById("uname").value;


              if(user!=="" && document.getElementById('chkbtn').innerHTML==="Check"){
              var xmlhttp = new XMLHttpRequest();
              xmlhttp.onreadystatechange = function() {
                if (this.readyState === 4 && this.status === 200) {
                    if(this.responseText==="1")
                    {
                        document.getElementById('error').innerHTML="This username already exsits. Please use a different one and try again.";
                        document.getElementById("uname").value="";
                        document.getElementById("psw").readOnly=true;
                        document.getElementById("sub").disabled=true;
                    }
                    else
                    {
                        document.getElementById('error').innerHTML="";
                        document.getElementById("uname").readOnly=true;
                        document.getElementById("psw").readOnly=false;
                        document.getElementById("sub").disabled=false;
                        document.getElementById('chkbtn').innerHTML="Reset";
                    }
                }
              };
              xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/staff_register?user=" + user, true);
              xmlhttp.send();
          }

             if(document.getElementById('chkbtn').innerHTML==="Reset"){
                  document.getElementById("uname").value="";
                  document.getElementById("uname").readOnly=false;
                  document.getElementById("psw").readOnly=true;
                  document.getElementById("sub").disabled=true;
                  document.getElementById('error').innerHTML="";
                  document.getElementById('chkbtn').innerHTML="Check";
              }
            }
        </script>
    </body>
</html> --%>
