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
