<%-- 
    Document   : home
    Created on : Apr 2, 2021, 6:20:21 PM
    Author     : thisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ page import="Backend.Login" %>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Cookie[] cookies = request.getCookies();
            
            Login login = new Login();
            login.setLoginstring(cookies[1].getValue());
            System.out.println(cookies[1].getValue());
        %>
        <h1>Hello World!</h1>
    </body>
</html>
