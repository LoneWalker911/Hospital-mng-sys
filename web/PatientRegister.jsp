<%--
    Document   : index
    Created on : Mar 30, 2021, 2:10:52 PM
    Author     : thisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Object error = (String)request.getAttribute("error"); %>
<html>
    <head>
        <title>Register</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="CSS/bootstrap.css">
        <link rel="stylesheet" type="text/css" href="CSS/bootstrap.min.css">
        <link rel="stylesheet" type="text/css" href="CSS/forms.css">


    </head>
    <body>
        <form class="form-signin" action="PatientRegister" method="post">
            <h1 class="h3 mb-3 font-weight-normal">Patient Register</h1>
            Name<input class="form-control" placeholder="Enter Name" type="text" name="name"/><br/>
            Address<input class="form-control" placeholder="Enter Address" type="text" name="address"><br/>
            Email<input class="form-control" placeholder="Enter E-mail" type="text" name="email"><br/>
            Mobile<input class="form-control" placeholder="Enter Mobile" type="text" name="mobile"/><br/>
            Password<input class="form-control" placeholder="Enter Password" type="password" name="psw"><br/>
            <button class="btn btn-lg btn-warning " type="reset">Clear</button>
            <button type="submit"  class="btn btn-lg btn-primary " id="signbtn" name="register" value="Register">Register</button>
            <ul class="error">
                <% if(error!=null) out.print(error);%>
            </ul>
        </form>
      </div>
      <div class="image-bg"></div>
  </div>

  <%-- <style>
  body {
    background-image: url('img_girl.jpg');
  }
  </style> --%>
    </body>
</html>
