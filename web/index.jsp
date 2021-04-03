<%-- 
    Document   : index
    Created on : Mar 30, 2021, 2:10:52 PM
    Author     : thisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% Object error = (String)request.getAttribute("error"); %>
<html>
    <head>
        <title>Sign-in</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="Login" method="post">
            <input type="text" name="username"/>
            <br/>
            <input type="password" name="psw"/>
            <input type="checkbox" name="rem" value="remember"><br/>
            <input type="submit" name="submit" value="Sign-in"/>
            <ul class="error">
                <% if(error!=null) out.print(error);%>
            </ul>
        </form>
    </body>
</html>
