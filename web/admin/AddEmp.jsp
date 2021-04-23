<%-- 
    Document   : AddEmp
    Created on : Apr 8, 2021, 10:04:48 PM
    Author     : thisa
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% 
HashMap<Integer, String> Types = (HashMap<Integer, String>)request.getAttribute("types");
ArrayList el=null;
if(request.getAttribute("error")!=null)
{el = (ArrayList)request.getAttribute("error");}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form method="post" action="AddEmp">
            <label for="name">name:</label> 
            <input type="text" id="name" name="name"> <br>
            <label for="mobile">mobile:</label>
            <input type="number" id="mobile" name="mobile"><br>
            <label for="address">address:</label>
            <input type="text" id="address" name="address"><br>
            <label for="email">email:</label>
            <input type="email" id="email" name="email"><br>
            <label for="type">User type:</label>
            <select id="type" name="type" onchange="Staff()">
                <option value="" disabled selected>Select user type</option>
            <%
                for (Integer id: Types.keySet()) {
                out.println("<option value=\""+id.toString()+"\">"+Types.get(id)+"</option>");
                }
            %>
            </select><br>
            <div id="staff_fields"></div><br><br>
            
            <label for="uname">username:</label>
            <input type="text" id="uname" name="uname">
            <button type="button" id="chkbtn" onclick="checkUsr();">Check</button><br>
            <label for="psw">password:</label>
            <input type="password" id="psw" name="psw" readonly><br>
            
            <input type="submit" id="sub" name="submit" value="Register" disabled>
            <ul id="error">
                <%
                    if(el!=null){
                    for(Object str : el)
                    {
                        out.println("<li>"+str+"</li>");
                    }
                    }
                %>
            </ul>
        </form>
            <script>
            function Staff()
            {
              var id = document.getElementById("type").value;
              var xmlhttp = new XMLHttpRequest();
              xmlhttp.onreadystatechange = function() {
                if (this.readyState === 4 && this.status === 200) {
                    document.getElementById('staff_fields').innerHTML=this.responseText;
                }
              };
              xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/staff_register?id=" + id, true);
              xmlhttp.send();
            }
            
            function checkUsr()
            {
              var user = document.getElementById("uname").value;
             
              
              if(user!=="" && document.getElementById('chkbtn').innerHTML==="Check"){
              var xmlhttp = new XMLHttpRequest();
              xmlhttp.onreadystatechange = function() {
                if (this.readyState === 4 && this.status === 200) {
                    if(this.responseText==="1")
                    {
                        document.getElementById('error').innerHTML="This username already exsits. Please use a different one and try again.";
                        document.getElementById("uname").value="";
                        document.getElementById("psw").readOnly=true;
                        document.getElementById("sub").disabled=true;
                    }
                    else
                    {
                        document.getElementById('error').innerHTML="";
                        document.getElementById("uname").readOnly=true;
                        document.getElementById("psw").readOnly=false;
                        document.getElementById("sub").disabled=false;
                        document.getElementById('chkbtn').innerHTML="Reset";
                    }
                }
              };
              xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/staff_register?user=" + user, true);
              xmlhttp.send();
          }
          
             if(document.getElementById('chkbtn').innerHTML==="Reset"){
                  document.getElementById("uname").value="";
                  document.getElementById("uname").readOnly=false;
                  document.getElementById("psw").readOnly=true;
                  document.getElementById("sub").disabled=true;
                  document.getElementById('error').innerHTML="";
                  document.getElementById('chkbtn').innerHTML="Check";
              }
            }
        </script>
    </body>
</html>
