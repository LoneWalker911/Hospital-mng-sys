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




  </head>
  <body>
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
                   if(info.get(id)[3].equals("1"))
                   {
                       out.print("<button class=\"btn btn-success btn-sm\" name=\"went\" style=\"cursor:default\">Went</button><td>");
                   }
                   if(info.get(id)[3].equals("0"))
                   {
                       out.print("<button class=\"btn btn-danger btn-sm\" name=\"missed\" style=\"cursor:default\">Missed</button><td>");                       
                   }
                    }
                       }
    %>
    </tbody>
    </table>
    </div>
    <%-- Modal for patient history --%>

    <div class="container">
  <!-- Trigger the modal with a button -->
  <div class="modal shade in" id="myModal" role="dialog" style="">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" onclick="document.getElementById('myModal').style.display='none';">&times;</button>
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
        <table class="table table-striped">
          <h3>Prescription</h3>
          <tr>
            <th scope="row">Name</th>
            <th scope="row">Qty</th>
          </tr>
          <tr>
            <td>Paracetamol 500mg</td>
            <td>30</td>
          </tr>
          </table>
                      <hr>
          <table class="table table-striped">
            <h3>Payment Information</h3>
            <tr>
              <th scope="row">Doctor Charges</th>
              <td id="Pdoccharge">LKR 1200</td>
            </tr>

            <tr>
              <th scope="row">Prescription</th>
              <td>LKR 2000</td>
            </tr>

            <tr>
              <th scope="row">Total</th>
              <td scope="col">LKR 3200</td>
            </tr>
            </table>
          </div>
          <div class="modal-footer">
              <button type="button" class="btn btn-default" onclick="document.getElementById('myModal').style.display='none';">Close</button>
          </div>
        </div>

      </div>
    </div>
  </div>



    <div id="test02" class="" >

    </div>
    <script type="text/javascript">
 
    $('#chkwnd').on('load', function() {
        $('#myModal').modal('show');
    });
    </script>
  </body>
</html>
