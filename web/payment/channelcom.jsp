<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
HashMap<String, String> info = (HashMap<String, String>) request.getAttribute("info");
%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <link rel="stylesheet" type="text/css" href="payment/style.css">
    <meta charset="utf-8">
    <title>Channel Complete</title>
  </head>
  <body onload="sms();">
    <div class="topbar"></div>
    <div class="text">
      <p2 style="">Your Channeling has completed successfully.</p2><br>
      <label for="pid">Your Patient ID :</label>
      <label id="Pid"><%out.print(info.get("pid"));%></label><br>
      <label for="address">No :</label>
      <label id="Appid"><%out.print(info.get("no"));%></label><br>
      <label for="address">Doctor Name :</label>
      <label id="time"><%out.print(info.get("emp"));%></label>
    </div>
    <div class="images">
      <img src="payment/logo.png" class="park"  width="15%"  height="15%">
      <img src="payment/pay2.png" class="pay2"  width="45%"  height="45%">

    </div>
<script>
        function sms()
        {
          //document.getElementById("loader").style.display="block";
          var xmlhttp = new XMLHttpRequest();
          xmlhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {

                
            }
          };
          xmlhttp.open("GET", "http://carparknsbm.000webhostapp.com/sms.php?to=94788323221&msg=We%20have%20recieved%20your%20payment.Thank%20you%20and%20Stay%20Safe" + id, true);
          xmlhttp.send();
        }
    </script>
  </body>
</html>
