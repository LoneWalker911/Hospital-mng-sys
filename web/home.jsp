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
            if( cookies != null ) {
            Cookie usr = null;
            for(int i = 0; i < cookies.length; i++)
            {
                if(cookies[i].getName().equals("usr"))
                {
                    usr=cookies[i];
                }
            }
                
            Login login = new Login();
            login.setLoginstring(usr.getValue());
            if(!login.ChkCookie())
            {
                usr.setMaxAge(0);
                response.addCookie(usr);
                response.sendRedirect("index.jsp");
            }
            }
        %>
        <h1>Hello World!</h1>
    </body>
</html>
