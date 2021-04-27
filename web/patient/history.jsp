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
<meta name="description" content="Bayanno Hospital Management System">
<meta name="keywords" content="bootstrap, responsive, template, website, html, theme, ux, ui, web, design, developer, support, business, corporate, real estate, education, medical, school, education, demo, css, framework">
<meta name="author" content="Creativeitem">

  <script>


  </script>


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
    <tr data-toggle="modal" data-target="#myModal" href="#" style="cursor:pointer">
      <th scope="row">2019/12/05</th>
      <td>Thisara Gunathilaka</td>
      <td>ENT</td>
      <td><button class="btn btn-danger btn-sm" name="missed" style="cursor:default">Missed</button><td>

    </tr>
    </tbody>
    </table>
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
