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
    </head>
    <body>
        <form action="PatientRegister" method="post">
            Name<input type="text" name="name"/><br/>
            Address<input type="text" name="address"><br/>
            Email<input type="text" name="email"><br/><br/>
            Mobile<input type="text" name="mobile"/><br/>
            Password<input type="password" name="psw"><br/>
            <input type="submit" name="register" value="Register"/>
            <ul class="error">
                <% if(error!=null) out.print(error);%>
            </ul>
        </form>
            <a href="Login">sign-in</a>
    </body>
</html>
