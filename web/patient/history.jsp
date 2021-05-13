<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%   
    HashMap<Integer, String[]> info = (HashMap<Integer, String[]>) request.getAttribute("info");
%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="robots" content="index, follow">
<meta name="description" content=" Hospital Management System">
<meta name="keywords" content="bootstrap, responsive, template, website, html, theme, ux, ui, web, design, developer, support, business, corporate, real estate, education, medical, school, education, demo, css, framework">
<meta name="author" content="Creativeitem">

  <link rel="stylesheet" href="../assets/js/jquery-ui/css/no-theme/jquery-ui-1.10.3.custom.min.css">
  <link rel="stylesheet" href="../assets/css/font-icons/entypo/css/entypo.css">
  <link href="Test001/fonts.googleapis.com/css?family=Poppins:400,500,600" rel="stylesheet">
  <link rel="stylesheet" href="../assets/css/bootstrap.css">
  <link rel="stylesheet" href="../assets/css/neon-core.css">
  <link rel="stylesheet" href="../assets/css/neon-theme.css">
  <link rel="stylesheet" href="../assets/css/neon-forms.css">
  <link rel="stylesheet" href="../assets/css/custom.css">
  <link rel="shortcut icon" href="../uploads/favicon.png">
  <link rel="stylesheet" href="../assets/css/font-icons/font-awesome/css/font-awesome.min.css">
  <link rel="stylesheet" href="../assets/js/vertical-timeline/css/component.css">
  <link rel="stylesheet" href="../assets/js/datatables/responsive/css/datatables.responsive.css">
  <script src="../assets/frontend/default/vendor/jquery/jquery.min.js"></script>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <%-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css"> --%>
  <%-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script> --%>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

  <script>


  </script>
  <style>
      .gg{
    z-index: 9999;
   display:none;
    bottom: 0;
    left: 0;
    position: absolute;
    right: 0;
    top: 0;
      }
  </style>

  </head>
  <body>
      <img id="loader" class="gg" src="https://ajsupport.com/wp-content/uploads/2020/05/Line-Preloader.gif">
    <div class="receptionist-dashboard" style="">


    <table class="table table-striped">
    <thead>
    <tr>
      <th scope="col">Date</th>
      <th scope="col">Doctor Name</th>
      <th scope="col">Department</th>
      <th scope="col">Current Status</th>
    </tr>
    </thead>
    <tbody>
    <%
        if(!info.isEmpty()){
            
               for (Integer id: info.keySet()) {
                   out.print("<tr  onclick=\"getHistory(");
                   out.print(info.get(id)[4]);
                   out.print(");\" href=\"#\" style=\"cursor:pointer\"><th scope=\"row\">");
                   out.print(info.get(id)[0]);
                   out.print("</th><td>");
                   out.print(info.get(id)[1]);
                   out.print("</th><td>");
                   out.print(info.get(id)[2]);
                   out.print("</th><td>");
                   if(Integer.parseInt(info.get(id)[3])>2)
                   {
                       out.print("<button class=\"btn btn-success btn-sm\" name=\"went\" style=\"cursor:default\">Went</button><td>");
                   }
                   if(info.get(id)[3].equals("1"))
                   {
                       out.print("<button class=\"btn btn-danger btn-sm\" name=\"missed\" style=\"cursor:default\">Missed</button><td>");                       
                   }
                    }
                       }
    %>
    </tbody>
    </table>
  </div>
    <div id="test02" class="" >

    </div>

    <%-- Modal for patient history --%>

  <div class="modal shade in" id="myModal" style="overflow:inherit" role="dialog" style="">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" onclick="document.getElementById('myModal').style.display='none';clear1();">&times;</button>
          <h3 class="modal-title">Patient Information</h3>
        </div>
        <div class="modal-body">

          <table class="table table-striped">

          <tr>
              <th scope="col">ID</th>
            <td id="Pid">01252</td>
          </tr>

          <tr>
            <th scope="row">Name</th>
            <td id='Pname'>Thisara Gunathilaka</td>
          </tr>

          <tr>
            <th scope="row">Date</th>
            <td id="Pdate">12/01/2021</td>
          </tr>

<!--          <tr>
            <th scope="row">Time</th>
            <td>20:12:02</td>
          </tr>

          <tr>
            <th scope="row">No</th>
            <td>001</td>
          </tr>-->

          <tr>
            <th scope="row">Doctor Name</th>
            <td id="Pdocname">Dr. Thisra Gunathialaka</td>
          </tr>

          <tr>
            <th scope="row">Department</th>
            <td id="Pdept">ENT</td>
          </tr>


        </table>
                      <hr>
        <table class="table table-striped" id="press">
          <h3>Prescription</h3>
          <tr>
            <th scope="row">Name</th>
            <th scope="row">Qty</th>
          </tr>
<!--          <tr>
            <td>Paracetamol 500mg</td>
            <td>30</td>
          </tr>-->
          </table>
                      <hr>
          <table class="table table-striped">
            <h3>Payment Information</h3>
            <tr>
              <th scope="row">Doctor Charges</th>
              <td id="Pdoccharge"></td>
            </tr>

            <tr>
              <th scope="row">Prescription</th>
              <td id="PresCharge"></td>
            </tr>

            <tr>
              <th scope="row">Total</th>
              <td scope="col" id="tot"></td>
            </tr>
            </table>
          </div>
          <div class="modal-footer">
              <button style="display:none" type="button" id="orderbtn" class="btn btn-primary" onclick="order();">Order Prescription</button>
          </div>
        </div>

      </div>
    </div>



    <script type="text/javascript">
        function clear1()
        {
            document.getElementById('press').innerHTML="<h3>Prescription</h3><tr><th scope=\"row\">Name</th><th scope=\"row\">Qty</th></tr>";
        }
        function getHistory(id)
        {
          document.getElementById("loader").style.display="block";
          var xmlhttp = new XMLHttpRequest();
          xmlhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {
                var json = JSON.parse(this.responseText);
                getPres(json['id']);
                document.getElementById('Pid').innerHTML=json['id'];
                document.getElementById('Pname').innerHTML=json['name'];
                document.getElementById('Pdate').innerHTML=json['app_time'];
                document.getElementById('Pdocname').innerHTML=json['docname'];
                document.getElementById('Pdept').innerHTML=json['dept'];
                document.getElementById('Pdoccharge').innerHTML=json['amount'];
                document.getElementById("myModal").style.display="block";
            }
          };
          xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/patient/history?getHistory=" + id, true);
          xmlhttp.send();
        }
        var presid=0;
        function getPres(id)
        {
          
          var xmlhttp = new XMLHttpRequest();
          xmlhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {
                var json = JSON.parse(this.responseText);
                var out = document.getElementById('press').innerHTML;
                var price = 0.00;
                if(json['drug_1']!==null)
                {out+= "<tr><td>"+ json['drug_1'] +"</td><td>" + json['qty_1'] + "</td></tr>";
                    price+=parseFloat(json['price_1']);
            }
            else return;
                if(json['drug_2']!==null)
                {out+= "<tr><td>"+ json['drug_2'] +"</td><td>" + json['qty_2'] + "</td></tr>";
                    price+=parseFloat(json['price_2']);
                }
                if(json['drug_3']!==null)
                {out+= "<tr><td>"+ json['drug_3'] +"</td><td>" + json['qty_3'] + "</td></tr>";
                price+=parseFloat(json['price_3']);
            }
                if(json['status']==0)
                    document.getElementById("orderbtn").style.display="block";
                    
                document.getElementById('press').innerHTML=out;
                document.getElementById('PresCharge').innerHTML=price;
                document.getElementById('tot').innerHTML=price+parseFloat(document.getElementById('Pdoccharge').innerHTML);
                presid=json['id'];
                document.getElementById("loader").style.display="none";
            }
          };
          xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/patient/history?getPres=" + id, true);
          xmlhttp.send();
        }
        
        
        
    function order(){
    window.location.replace("https://carparknsbm.000webhostapp.com?order_id="+ presid +"&amount="+ document.getElementById('PresCharge').innerHTML+"&type=3");
}

    </script>

  </body>
</html>
