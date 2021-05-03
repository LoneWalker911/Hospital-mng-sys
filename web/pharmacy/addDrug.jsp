<%-- 
    Document   : addDrug
    Created on : May 2, 2021, 2:18:49 PM
    Author     : thisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <input class="form-control" type="text" placeholder="drug name" id="dname"><br>
        <input class="form-control" type="number" step="0.01" placeholder="200.00" id="dprice"><br>
        <button onclick="addDrug();" class="btn btn-outline-success rounded-pill">Add</button> <img width="20px" id="dload" style="display:none" src="https://i.gifer.com/ZZ5H.gif"><p id="dstatus"></p>
    </body>
</html>
