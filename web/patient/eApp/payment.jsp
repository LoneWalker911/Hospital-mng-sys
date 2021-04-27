<%--
    Document   : payment
    Created on : Apr 27, 2021, 12:56:57 AM
    Author     : thisa
--%>

<%-- <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    String order_id =String.valueOf(request.getAttribute("order_id"));
%>
<!DOCTYPE html>

<html>
<body>
    <form id="form" target="_blank" style="display:none" method="get" action="https://carparknsbm.000webhostapp.com/">

    <input type="text" name="order_id" value="<%out.print(order_id); %>">
    <input type="text" name="amount" value="<%out.print(amount); %>">
    <input type="submit" value="Buy Now">
</form>
    <form id="form1"  style="display:none" method="get" action="/Hospital-mng-sys/patient/home.jsp">


    <input type="submit" value="Buy Now">
</form>
<script type="text/javascript">
    document.getElementById('form').submit(); // SUBMIT FORM
    document.getElementById('form1').submit();
</script>
</body>
</html> --%>
