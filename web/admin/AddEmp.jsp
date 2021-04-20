<%-- 
    Document   : AddEmp
    Created on : Apr 8, 2021, 10:04:48 PM
    Author     : thisa
--%>

<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
HashMap<Integer, String> Types = (HashMap<Integer, String>)request.getAttribute("types");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function Staff()
            {
              localid = document.getElementById("type").value;
              var xmlhttp = new XMLHttpRequest();
              xmlhttp.onreadystatechange = function() {
                if (this.readyState == 4 && this.status == 200) {
                    document.getElementById('staff_fields').innerHTML=this.responseText;
                }
              };
              xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/staff_register?id=" + id, true);
              xmlhttp.send();
            }
        </script>
    </head>
    <body>
        <form method="post" action="AddEmp">
            <label for="name">name:</label>
            <input type="text" id="name" name="name">
            <label for="mobile">mobile:</label>
            <input type="number" id="mobile" name="mobile">
            <label for="address">address:</label>
            <input type="text" id="address" name="address">
            <label for="email">email:</label>
            <input type="email" id="email" name="email">
            <select id="type" name="type" onchange="Staff()">
                <%
                    for (Integer id: Types.keySet()) {
                    out.print("<option value=\""+id.toString()+"\">"+Types.get(id).toString()+"</option>");
                    }
                %>
            </select>
            <div id="staff_fields"></div>
            <input type="submit" name="submit" value="Register">
        </form>
    </body>
</html>
