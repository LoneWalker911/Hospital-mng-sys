<%--
    Document   : index
    Created on : Mar 30, 2021, 2:10:52 PM
    Author     : thisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Object error = (String)request.getAttribute("error");
   Object info = (String)request.getAttribute("info");
   Object username = (String)request.getAttribute("username");
%>
<%-- <html>
    <head>
        <title>Sign-in</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" type="text/css" href="CSS/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="CSS/forms.css">

    <title>Login</title>
</head>
    </head>
    <body>
        <form  class="form-signin" action="Login" method="post">
            <h1 class="h3 mb-3 font-weight-normal">Sign In</h1>
            <label>Username / Mobile</label>
            <input class="form-control" placeholder="Enter Username / Mobile" type="text" name="username" value="<% if(username!=null) out.print(username);%>"/>
            <br>
            <label for="password" >Password</label>
            <input class="form-control"  placeholder="Password" type="password" name="psw"/>
            <br>
            <div class="checkbox mb-3">
            <input type="checkbox" name="rem" value="remember"><label>Remember me</label>
            </div>
            <button class="btn btn-lg btn-warning " type="reset">Clear</button>
            <button type="submit"  class="btn btn-lg btn-primary " id="signbtn" name="submit" value="Sign-in">Submit</button>
                </ul>
                <small class="form-text"><a href="PatientRegister">Register</a></small>
            <ul   class="error">
                <small class="form-text"><% if(error!=null) out.print(error);%></small>
            </ul>
        </form>
            <ul class="info">
                <% if(info!=null) out.print(info);%>
            </ul>
    </body>
</html> --%>
<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>
        Login | Hospital Management System    </title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" type="text/css" href="CSS/bootstrap.css">
    <link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css">
    <%-- <link rel="stylesheet" type="text/css" href="CSS/forms.css"> --%>
    <link rel="shortcut icon" href="/uploads/favicon.png">
    <link rel="stylesheet" href="assets/css/bootstrap.css">
    <link rel="stylesheet" href="assets/login_page/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/login_page/css/normalize.css">
    <link rel="stylesheet" href="assets/login_page/css/main.css">
    <link rel="stylesheet" href="assets/login_page/css/style.css">
    <link rel="stylesheet" href="assets/common/izitoast/css/iziToast.min.css" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Poppins:400,500,600" rel="stylesheet">
</head>
<body>
<div class="main-content-wrapper">
    <div class="login-area">
        <div class="login-header">
            <a href="../index.php/login" class="logo">
                <img src="../uploads/logo.png" height="60" alt="">
            </a>
            <h2 class="title">Hospital Management System</h2>
        </div>
        <div class="login-content">
            <form method="post" role="form" id="form_login"
                  action="Login">
                <div class="form-group">
                    <input type="text" class="input-field" name="username" placeholder="Username"
                           id = "ewmail" value="<% if(username!=null) out.print(username);%>"/>
                </div>
                <div class="form-group">
                    <input type="password" class="input-field" name="psw" placeholder="Password"
                            id = "password">
                </div>
                <button type="submit" name="submit" value="Sign-in" class="btn btn-primary">Login<i class="fa fa-lock"></i></button>
            </form>

            <div class="login-bottom-links">
                <a href="PatientRegister" class="link">
                    Register
                </a>
            </div>
            <div   class="error">
                <small class="form-text"><% if(error!=null) out.print(error);%></small>
            </div>
            <div class="info">
                <% if(info!=null) out.print(info);%>
            </div>

            <!--demo login buttons-->
                <!-- <button type="button" class="btn btn-default" id="admin"
                    onclick="demo_login(this.id)">
                    Admin                </button>
                <button type="button" class="btn btn-default" id="doctor"
                        onclick="demo_login(this.id)">
                    Doctor                </button>
                <button type="button" class="btn btn-default" id="patient"
                        onclick="demo_login(this.id)">
                    Patient                </button>
                <button type="button" class="btn btn-default" id="nurse"
                        onclick="demo_login(this.id)">
                    Nurse                </button>
                <br><br>
                <button type="button" class="btn btn-default" id="receptionist"
                        onclick="demo_login(this.id)">
                    Receptionist                </button>
                <button type="button" class="btn btn-default" id="laboratorist"
                        onclick="demo_login(this.id)">
                    Laboratorist                </button>
                <button type="button" class="btn btn-default" id="pharmacist"
                        onclick="demo_login(this.id)">
                    Pharmacist                </button>
                <br><br>
                <button type="button" class="btn btn-default" id="accountant"
                        onclick="demo_login(this.id)">
                    Accountant                </button>
                <!--demo login buttons-->
        </div>
    </div>
    <div class="image-area"></div>
</div>

<script src="../assets/login_page/js/vendor/jquery-1.12.0.min.js"></script>
<script src="../assets/common/izitoast/js/iziToast.min.js"></script>



</body>
</html>
