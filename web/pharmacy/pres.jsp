<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%  String NextId =(String) request.getAttribute("NextId");
    String Name =(String) request.getAttribute("Name");
    String Mobile =(String) request.getAttribute("Mobile");
    HashMap<Integer, String> Deps = (HashMap<Integer, String>) request.getAttribute("Deps");
%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="robots" content="index, follow">
<meta name="description" content="Hospital Management System">
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


  </head>
  <body>
    <div class="receptionist-dashboard" style="">
      <table class="list-inline links-list pull-right">


      <tr>
        <td><select class="form-control  input-sm" name="" id=""
                onchange="">
                <option value="0">Select The Department</option>
                                                <option value="1"
                                                        >
                        Appoinment ID                                </option>
                                                <option value="2"
                                                        >
                        Mobile No                               </option>
                                        </select></td>



    <td>

              <input type="text" class="form-control input-sm" name="search" value="" placeholder="Search here.. ">

     </td>
          <td><button type="submit" class="btn btn-primary" >Search</button></td>
</tr>
  </table>

    <table class="table table-striped">
    <thead>
    <tr>
      <th scope="col">Date</th>
      <th scope="col">Patient Name</th>
      <th scope="col">Doctor Name</th>
      <th scope="col">Age</th>
      <th scope="col">Gender</th>

    </tr>
    </thead>
    <tbody>
    <tr data-toggle="modal" data-target="#myModalpres" href="#" style="cursor:pointer">
      <th scope="row">2020/04/21</th>
      <td>Thisara Gunathilaka</td>
      <td>Thisara Gunathilaka</td>
      <td>21 yrs</td>
      <td>Male</td>
    </tr>
    <tr data-toggle="modal" data-target="#myModalpres" href="#" style="cursor:pointer">
      <th scope="row">2020/04/21</th>
      <td>Thisara Gunathilaka</td>
      <td>Thisara Gunathilaka</td>
      <td>21 yrs</td>
      <td>Male</td>
    </tr>
    </tbody>
    </table>
    </div>


    <%-- <div id="test02" class="" >

    </div>
    <script type="text/javascript">
    $('#chkwnd').on('load', function() {
        $('#myModal').modal('show');
    });
    </script> --%>
  </body>
</html>
