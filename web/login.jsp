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
<html>
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
            <label for="inputusername" class="sr-only">Username / Mobile</label>
            <input class="form-control" placeholder="Enter Username / Mobile" type="text" name="username" value="<% if(username!=null) out.print(username);%>"/>
            <br>
            <label for="password" class="sr-only">Password</label>
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
        </form>
            <ul class="info">
                <% if(info!=null) out.print(info);%>
            </ul>
    </body>
</html>
