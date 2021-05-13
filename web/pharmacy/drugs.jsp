<%@page import="java.util.HashMap"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <form class="form-default" role="form">




            

            <div class="form-group">
                <label for="" class="text-uppercase  c-gray-light">
                    Name                            </label>
                <input type="text" class="form-control input-lg" type="text" placeholder="Drug name" id="dname">
            </div>

          
            <div class="form-group">
                <label for="" class="text-uppercase c-gray-light">
                    Price                            </label>
                <input type="number" class="form-control input-lg" type="number" step="0.01" placeholder="200.00" id="dprice">
            </div>

        <br>


        <button type="submit" onclick="addDrug();" class="btn btn-primary btn-lg"
                style="cursor: pointer;">
            </i> Add Now                    </button><img width="20px" id="dload" style="display:none" src="https://i.gifer.com/ZZ5H.gif"><p id="dstatus"></p>
    </form>

  
    <script type="text/javascript">
        function addDrug(id)
        {
          document.getElementById("dload").style.display="block";
          var name = document.getElementById('dname').value;
          var price = document.getElementById('dprice').value;
          var xmlhttp = new XMLHttpRequest();
          xmlhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {
                if(this.responseText=="1"){
                document.getElementById('dstatus').innerHTML="Drug added to the system";
                document.getElementById("dload").style.display="none";}
            }
          };
          xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/pharmacy/drug?name=" + name + "&price=" + price, true);
          xmlhttp.send();
        }
    </script> 
  </body>
</html>
