<%--
    Document   : eApp
    Created on : Apr 24, 2021, 5:55:01 PM
    Author     : thisa
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  String NextId =(String) request.getAttribute("NextId");
    String Name =(String) request.getAttribute("Name");
    String Mobile =(String) request.getAttribute("Mobile");
    HashMap<Integer, String> Deps = (HashMap<Integer, String>) request.getAttribute("Deps");
    ArrayList el=null;
    if(request.getAttribute("error")!=null)
    {el = (ArrayList)request.getAttribute("error");}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="robots" content="index, follow">
<meta name="description" content=" Hospital Management System">
<meta name="keywords" content="bootstrap, responsive, template, website, html, theme, ux, ui, web, design, developer, support, business, corporate, real estate, education, medical, school, education, demo, css, framework">
<meta name="author" content="Creativeitem">
        <title>Appointment | Diagnostic Center</title>
        <!--jquery-->


<!-- Page loader -->
<script
    src="/Hospital-mng-sys/assets/frontend/default/vendor/pace/js/pace.min.js"></script>
<link rel="stylesheet"
    href="/Hospital-mng-sys/assets/frontend/default/vendor/pace/css/pace-minimal.css" type="text/css">

<!-- Bootstrap -->
<%-- <link rel="stylesheet"
    href="/Hospital-mng-sys/assets/frontend/default/vendor/bootstrap/css/bootstrap.min.css" type="text/css"> --%>
    <link rel="stylesheet" href="../assets/js/jquery-ui/css/no-theme/jquery-ui-1.10.3.custom.min.css">
    <link rel="stylesheet" href="../assets/css/font-icons/entypo/css/entypo.css">
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
<!-- Fonts -->
<link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

<!-- Plugins -->
<link rel="stylesheet"
    href="/Hospital-mng-sys/assets/frontend/default/vendor/swiper/css/swiper.min.css">
<link rel="stylesheet"
    href="/Hospital-mng-sys/assets/frontend/default/vendor/hamburgers/hamburgers.min.css" type="text/css">
<link rel="stylesheet"
    href="/Hospital-mng-sys/assets/frontend/default/vendor/animate/animate.min.css" type="text/css">
<link rel="stylesheet"
      href="/Hospital-mng-sys/assets/common/izitoast/css/iziToast.min.css" type="text/css">
<!-- Icons -->
<link rel="stylesheet"
    href="/Hospital-mng-sys/assets/frontend/default/fonts/font-awesome/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet"
    href="/Hospital-mng-sys/assets/frontend/default/fonts/ionicons/css/ionicons.min.css" type="text/css">
<link rel="stylesheet"
    href="/Hospital-mng-sys/assets/frontend/default/fonts/line-icons-pro/line-icons-pro.css" type="text/css">


<!-- Global style (main) -->
<link id="stylesheet" type="text/css"
    href="/Hospital-mng-sys/assets/frontend/default/css/global-style.css" rel="stylesheet" media="screen">



<!-- Favicon -->
<link href="/Hospital-mng-sys/uploads/favicon.png" rel="icon" type="image/png">

<!-- recaptcha -->
<script src='https://www.google.com/recaptcha/api.js'></script>
<script src="/Hospital-mng-sys/assets/frontend/default/vendor/jquery/jquery.min.js"></script>


</script>
</head>

    <body>
        <!-- MAIN WRAPPER -->
        <div class="body-wrap">
            <div id="st-container" class="st-container" style="overflow: visible;">
                <div id="doctor_details"></div>
                <div class="st-pusher">
                    <div class="st-content">
                        <div class="st-content-inner">

<section class="slice sct-color-2">
    <div class="container container-xs">
        <div class="row">
            <div class="col">
                <form class="form-default" role="form"
                      onsubmit="return validate()"
                    action="eApp"
                        method="post"
                            enctype="multipart/form-data">

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
                                    </ul>
                                    </div>


                        <div class="form-group">
                            <label for="" class="text-uppercase  c-gray-light">
                                Appointment ID                            </label>
                            <input type="text" class="form-control input-lg" value="<%out.print(NextId);%>" placeholder=""
                                   name="name" disabled>
                        </div>

                        <div class="form-group">
                            <label for="" class="text-uppercase  c-gray-light">
                                Name                            </label>
                            <input type="text" class="form-control input-lg" value="<%out.print(Name);%>" placeholder=""
                                   name="name" disabled>
                        </div>

                        <div class="form-group">
                            <label for="" class="text-uppercase c-gray-light">
                                Phone                            </label>
                            <input type="text" class="form-control input-lg" value="<%out.print(Mobile);%>" placeholder=""
                                   name="phone" disabled>
                        </div>
                               
                        <div class="form-group">
                            <label for="" class="text-uppercase c-gray-light">
                                Choose your appointment type</label><br>
                            <label>eAppointment</label>
                            <input onclick="appointment();" id="app" class="input-mini" type="radio" name="type" value="2">
                            <label>e-Channeling</label>
                            <input onclick="channel();" id="chan" class="input-mini" type="radio" name="type" value="3">
                        </div>
                                   

                    <div class="form-group eChannel eApp">
                        <label for="" class="text-uppercase c-gray-light">
                            Date                        </label>
                        <input type="text" id="date" class="form-control input-lg datepicker" placeholder=""
                               onchange="Date1(Date.parse(this.value));" name="timestamp" required readonly="readonly">
                    </div>

                    <div class="form-group eChannel">
                        <label for="" class="text-uppercase c-gray-light">
                            Department                        </label>
                        <select class="form-control" name="department_id" id="dept_select"
                            onchange="get_doctors(this.value)" required>
                            <option value="0">Select A Department</option>
                            <%
               for (Integer id: Deps.keySet()) {
                    out.print("<option value=\""+id.toString()+"\">"+Deps.get(id)+"</option>");
                    }
                            %>
                                                    </select>
                    </div>

                    <div class="form-group eChannel" >
                        <label for="" class="text-uppercase c-gray-light">
                            Doctor                        </label>
                        <div id="doctor_list">
                                                            <input type="text" class="form-control input-lg"
                                value="Select A Department First" disabled>
                                                    </div>
                    </div>

                    <div id="img_upload" class="eApp">
                        <label for="" class="text-uppercase c-gray-light">Upload Image files (optional)</label>
                        <input class="form-control form-control-file" type = "file" name = "img_1" size = "5000000" /><br/>
                        <input class="form-control form-control-file" type = "file" name = "img_2" size = "5000000" /><br/>
                        <input class="form-control form-control-file" type = "file" name = "img_3" size = "5000000" /><br/>
                        <input class="form-control form-control-file" type = "file" name = "img_4" size = "5000000" /><br/>
                        <input class="form-control form-control-file" type = "file" name = "img_5" size = "5000000" /><br/>
                    </div>

                    <div class="form-group eApp">
                        <label for="" class="text-uppercase c-gray-light">
                            Message                        </label>
                        <textarea id="msg" class="form-control no-resize" rows="5" name="message"
                                  placeholder="Your Message To The Doctor"></textarea>
                    </div>

                <button type="submit"  class="btn btn-styled btn-base-1"
                            style="cursor: pointer;">
                        <i class="fa fa-calendar mr-1"></i> Book Now </button>
                </form>
            </div>
        </div>
    </div>
</section>



                        </div>
                    </div>
                </div><!-- END: st-pusher -->
            </div><!-- END: st-container -->
        </div><!-- END: body-wrap -->

<!-- SCRIPTS -->
<a href="#" class="back-to-top btn-back-to-top"></a>

<!-- Core -->
<script>
    function Date1(timestamp)
    {
       if(document.getElementById("app").checked===true)
        { 
        var a = new Date(timestamp);
        var months = ['01','02','03','04','05','06','07','08','09','10','11','12'];
        var year = a.getFullYear();
        var month = months[a.getMonth()];
        var date = a.getDate();
        if(a.getHours()>9)
            var hour = a.getHours();
        else
            var hour = '0'+a.getHours();
            
        if(a.getMinutes()>9)
            var min = a.getMinutes();
        else
            var min = '0'+a.getMinutes();
        var sec = a.getSeconds();
        var time = year + '-' + month + '-' + date + ' ' + hour + ':' + min ;
        document.getElementById("date").value=time;
        }
    
        if(document.getElementById("chan").checked===true)
        {
        var a = new Date(timestamp);
        var months = ['01','02','03','04','05','06','07','08','09','10','11','12'];
        var year = a.getFullYear();
        var month = months[a.getMonth()];
        var date = a.getDate();
        var time = year + '-' + month + '-' + date ;
        document.getElementById("date").value=time;
        }
    
    }
    
    function validate()
    {
        var have=false;
        if(document.getElementById("error").innerHTML!=="")
            have = true;
        if(document.getElementById("app").checked===true)
        {
            if(document.getElementById("date").value==="")
            {
                if(have)
                    document.getElementById("error").innerHTML="<li>Please enter a valid date and time.</li>";
                else
                    document.getElementById("error").innerHTML+="<li>Please enter a valid date and time.</li>";
                document.documentElement.scrollTop = 0;
                return false;
            }
            if(document.getElementById("msg").value==="")
            {
                if(have)
                    document.getElementById("error").innerHTML="<li>Please enter a valid date and time.</li>";
                else
                    document.getElementById("error").innerHTML+="<li>Please enter a valid date and time.</li>";
                window.scrollTo(0, 0);
                return false;
            }
            
            return true;
        }
        
        if(document.getElementById("chan").checked===true)
        {
            if(document.getElementById("date").value==="")
            {
                if(have)
                    document.getElementById("error").innerHTML="<li>Please enter a valid date and time.</li>";
                else
                    document.getElementById("error").innerHTML+="<li>Please enter a valid date and time.</li>";
                document.documentElement.scrollTop = 0;
                return false;
            }
            
            if(document.getElementById("dept_select").value<1)
            {
                if(have)
                    document.getElementById("error").innerHTML="<li>Please select a department.</li>";
                else
                    document.getElementById("error").innerHTML+="<li>Please select a department.</li>";
                window.scrollTo(0, 0);
                return false;
            }
            
            if(document.getElementById("doc").value<1)
            {
                if(have)
                    document.getElementById("error").innerHTML="<li>Please select a doctor.</li>";
                else
                    document.getElementById("error").innerHTML+="<li>Please select a doctor.</li>";
                window.scrollTo(0, 0);
                return false;
            }
            
            return true;
        }
        document.getElementById("error").innerHTML="<li>Please select a type first.</li>";       
        return false;
    }
    
    var elems = document.getElementsByClassName("eApp");
    var i;
    for (i = 0; i < elems.length; i++) {
  elems[i].style.display = "none";}
  elems = document.getElementsByClassName("eChannel");
    for (i = 0; i < elems.length; i++) {
    elems[i].style.display = "none";
    }


function get_doctors(department_id)
{
  if(department_id!=="0"){
  var xmlhttp = new XMLHttpRequest();
  xmlhttp.onreadystatechange = function() {
    if (this.readyState === 4 && this.status === 200) {
        document.getElementById('doctor_list').innerHTML=this.responseText;
    }
  };
  xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/patient/eApp?dep=" + department_id, true);
  xmlhttp.send();
}
else
    document.getElementById('doctor_list').innerHTML="<input type=\"text\" class=\"form-control input-lg\"value=\"Select A Department First\" disabled>"
}

function channel()
{
    document.getElementById("msg").required=false;
    document.getElementById("date").value="";
    var elems = document.getElementsByClassName("eApp");
    var i;
    for (i = 0; i < elems.length; i++) {
    elems[i].style.display = "none";
    }
    
    var elems = document.getElementsByClassName("flatpickr-time");
    var i;
    for (i = 0; i < elems.length; i++) {
    elems[i].style.display = "none";
    }
    
    var elems = document.getElementsByClassName("eChannel");
    var i;
    for (i = 0; i < elems.length; i++) {
    elems[i].style.display = "block";
    }
}

function appointment()
{
    document.getElementById("msg").required=true;
    document.getElementById("date").value="";
    elems = document.getElementsByClassName("eChannel");
    for (i = 0; i < elems.length; i++) {
    elems[i].style.display = "none";
    }
    
    var elems = document.getElementsByClassName("flatpickr-time");
    var i;
    for (i = 0; i < elems.length; i++) {
    elems[i].style.display = "block";
    }
    
    var elems = document.getElementsByClassName("eApp");
    var i;
    for (i = 0; i < elems.length; i++) {
    elems[i].style.display = "block";
    }
}


</script>
</script>
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
<script src="/Hospital-mng-sys/assets/frontend/default/vendor/swiper/js/swiper.min.js"></script>
<script src="/Hospital-mng-sys/assets/common/izitoast/js/iziToast.min.js"></script>

<!-- App JS -->
<script src="/Hospital-mng-sys/assets/frontend/default/js/wpx.app.js"></script>


    </body>

</html>
