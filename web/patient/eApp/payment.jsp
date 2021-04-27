<%-- 
    Document   : payment
    Created on : Apr 27, 2021, 12:56:57 AM
    Author     : thisa
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String order_id =String.valueOf(request.getAttribute("order_id"));
%>
<!DOCTYPE html>

<html>
    <head>
        <script>
            
        </script>
    </head>
    <body onload="">
        <p id="rep"></p>
    <p id="status"></p>

</body>
<script>
    var countDownDate = new Date().getTime()+15*60000;
function sleep(ms) {
                return new Promise(resolve => setTimeout(resolve, ms));
            }

// Update the count down every 1 second
var x = setInterval(function() {

  // Get today's date and time
  var now = new Date().getTime();

  // Find the distance between now and the count down date
  var distance = countDownDate - now;

  // Time calculations for days, hours, minutes and seconds
  
  var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
  var seconds = Math.floor((distance % (1000 * 60)) / 1000);

  // Display the result in the element with id="demo"
  document.getElementById("rep").innerHTML = minutes + "m " + seconds + "s ";

  // If the count down is finished, write some text
  if (distance < 0) {
    clearInterval(x);
    document.getElementById('status').innerHTML="Unsuccsesful Payment. Re-try or contact helpdesk..";
    setInterval(function() {window.location.replace("http://localhost:8080/Hospital-mng-sys/patient/home.jsp");}, 2000);

  }
}, 1000);

    var id = <%out.print(order_id);%>;
    var sucess = 0;
    
    async function checkPayment() {
    if(id!==""&&sucess!=1){
    var xmlhttp = new XMLHttpRequest();
    document.getElementById('status').innerHTML="Checking Payment Status...";
    xmlhttp.onreadystatechange = function() {
      if (this.readyState === 4 && this.status === 200) {
          if(this.responseText==="1")
          {
              document.getElementById('status').innerHTML="Payment is sucessful. Redirecting you now..";
              setInterval(function() {window.location.replace("http://localhost:8080/Hospital-mng-sys/patient/home.jsp");}, 2000);
          }
      }
    };
    xmlhttp.open("GET", "//localhost:8080/Hospital-mng-sys/patient/eApp?isPaid=" + id, true);
    xmlhttp.send();
}}

setInterval(function() {checkPayment();}, 3000);
</script>
</html>
