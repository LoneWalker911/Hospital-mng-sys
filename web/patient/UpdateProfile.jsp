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

    <div class="receptionist-addAppoinment" style="">


    <form class="form-default" role="form"
        action=""
            method="post"
                enctype="multipart/form-data">




            <div class="form-group">
                <label for="" class="text-uppercase  c-gray-light">
                    Current Password                            </label>
                <input type="password" class="form-control input-lg" placeholder=""
                       name="currentpwd">
            </div>

            <div class="form-group">
                <label for="" class="text-uppercase  c-gray-light">
                    New Password                            </label>
                <input type="password" class="form-control input-lg" placeholder=""
                       name="newpwd">
            </div>

            <div class="form-group">
                <label for="" class="text-uppercase c-gray-light">
                    Confirm Password                            </label>
                <input type="password" class="form-control input-lg" placeholder=""
                       name="confirmpwd">
            </div>


        <button type="submit" class="btn btn-primary btn-lg"
                style="cursor: pointer;">
            Update Password                 </button>
    </form>

    </div>

  </body>
</html>
