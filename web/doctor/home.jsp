<%--
    Document   : home
    Created on : Apr 2, 2021, 6:20:21 PM
    Author     : thisa
--%>
<%--
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html> --%>
<%--
    Document   : home
    Created on : Apr 2, 2021, 6:20:21 PM
    Author     : thisa
--%>

<%-- <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <button class="btn-danger btn btn-block rounded-pill" type="button" onclick="document.cookie = 'usr=; expires=Thu, 01 Jan 1970 00:00:00 UTC; path=/Hospital-mng-sys;'; location.reload();">LOG OUT</button>
        <a href="eApp">e-appointment</a>
        <a href="Channel">channel book</a>




    </body>
</html> --%>
<!DOCTYPE html>
<html lang="en" dir="">
    <head>

        <title>Patient - Hospital Management System</title>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <meta name="description" content=" Hospital Management System - Creativeitem" />
        <meta name="author" content="Creativeitem" />



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
// function info()
// {
//
//   var xmlhttp = new XMLHttpRequest();
//   xmlhttp.onreadystatechange = function() {
//     if (this.readyState === 4 && this.status === 200) {
//         document.getElementById('test02').innerHTML="<h3 style=\"margin:20px 0px; color:#818da1; font-weight:200;\"><i class=\"entypo-right-circled\"></i>Patient E - Channeling</h3>"+this.responseText;
//     }
//   };
//   xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/patient/information.jsp", true);
//   xmlhttp.send();
// }
    function test456()
    {
document.getElementById('test').innerHTML="<img src=\"https://cdn.dribbble.com/users/1186261/screenshots/3718681/_______.gif\" alt=\"Loading...\">";
      // var xmlhttp = new XMLHttpRequest();
      // xmlhttp.onreadystatechange = function() {
      //   if (this.readyState === 4 && this.status === 200) {
      //       document.getElementById('test').innerHTML="<h3 style=\"margin:20px 0px; color:#818da1; font-weight:200;\"><i class=\"entypo-right-circled\"></i>Patient E - Channeling</h3>"+this.responseText;
      //   }
      // };
      // xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/patient/eApp", true);
      // xmlhttp.send();
      document.getElementById('test').innerHTML="<iframe src=\"http://localhost:8080/Hospital-mng-sys/patient/eApp\" style=\"border:none\" width=\"100%\" height=\"1175px\"></iframe>";
    }


        function channel()
        {

          var xmlhttp = new XMLHttpRequest();
          document.getElementById('test').innerHTML="<center><img src=\"https://cdn.dribbble.com/users/1186261/screenshots/3718681/_______.gif\" alt=\"Loading...\"></center>";
          xmlhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {
                document.getElementById('test').innerHTML="<h3 style=\"margin:20px 0px; color:#818da1; font-weight:200;\"><i class=\"entypo-right-circled\"></i>E - Channeling</h3>"+this.responseText;
            }
          };
          xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/doctor/channeling.jsp", true);
          xmlhttp.send();
          // document.getElementById('test').innerHTML="<iframe src=\"http://localhost:8080/Hospital-mng-sys/patient/history.jsp\" style=\"border:none\" width=\"100%\" height=\"1100px\"></iframe>";

        }
        function eapp()
        {

          var xmlhttp = new XMLHttpRequest();
          document.getElementById('test').innerHTML="<center><img src=\"https://cdn.dribbble.com/users/1186261/screenshots/3718681/_______.gif\" alt=\"Loading...\"></center>";
          xmlhttp.onreadystatechange = function() {
            if (this.readyState === 4 && this.status === 200) {
                document.getElementById('test').innerHTML="<h3 style=\"margin:20px 0px; color:#818da1; font-weight:200;\"><i class=\"entypo-right-circled\"></i>E - Appointment</h3>"+this.responseText;
            }
          };
          xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/doctor/EAppoinment.jsp", true);
          xmlhttp.send();
          // document.getElementById('test').innerHTML="<iframe src=\"http://localhost:8080/Hospital-mng-sys/patient/history.jsp\" style=\"border:none\" width=\"100%\" height=\"1100px\"></iframe>";

        }
        function ChngPwd()
        {

          // var xmlhttp = new XMLHttpRequest();
          // xmlhttp.onreadystatechange = function() {
          //   if (this.readyState === 4 && this.status === 200) {
          //       document.getElementById('test').innerHTML="<h3 style=\"margin:20px 0px; color:#818da1; font-weight:200;\"><i class=\"entypo-right-circled\"></i>Update Profile</h3>"+this.responseText;
          //   }
          // };
          // xmlhttp.open("GET", "http://localhost:8080/Hospital-mng-sys/patient/UpdateProfile.jsp", true);
          // xmlhttp.send();
          document.getElementById('test').innerHTML="<iframe src=\"http://localhost:8080/Hospital-mng-sys/patient/UpdateProfile.jsp\" style=\"border:none\" width=\"100%\" height=\"1100px\"></iframe>";

        }
</script>



<style>
    .tile-stats .icon
    {
        bottom: 30px;
    }
    .row > .column {
  padding: 0 8px;
}


.column {
  float: left;
  width: 25%;
}

</style>
    </head>
    <body class="page-body">
        <div class="page-container" >
            <div class="sidebar-menu">
    <header class="logo-env" >

        <!-- logo -->
        <div class="logo" style="">
            <a href="../index.php/login">
                <img src="../uploads/logo.png"  style="max-height:60px;"/>
            </a>
        </div>

    </header>
    <div class="sidebar-user-info">

        <div class="sui-normal">

                <span>Welcome,</span>
                <strong>Thisara Gunathilaka                </strong>
        </div>
    </div>

    <ul id="main-menu" class="">


        <li class="" style="">
            <a onclick="eapp();" href="#">
                <i class="fa fa-stethoscope"></i>
                <span>E - Appointments</span></a>

        </li>

          <li class="" style="display:none">
            <a onclick="channel();" href="#">
              <i class="fa fa-desktop"></i>
                <span>E - Channeling</span>
            </a>
        </li>


      <li class="">
        <a href="">
          <i class="fa fa-hospital-o"></i>
            <span>Patient Details</span>
        </a>
    </li>

    <li class="">
      <a onclick="ChngPwd();" href="#">
        <i class="fa fa-user"></i>
          <span>Change Password</span>
      </a>
  </li>

    </ul>

</div>            <div class="main-content">

                <div class="row">
    <div class="col-md-12 col-sm-12 clearfix" style="text-align:center;">
        <h2 style="font-weight:200; margin:0px;">Hospital Management System</h2>
    </div>

    <div class="col-md-12 col-sm-12 clearfix ">
        <ul class="list-inline links-list pull-left">
            <li class="dropdown language-selector">
                <a class="dropdown-toggle" data-toggle="dropdown" data-close-others="true">
                    <i class="entypo-user"></i> Doctor - Channeling               </a>
            </li>
        </ul>


        <ul class="list-inline links-list pull-right">
            <li class="sep"></li>
              <li>
                <a href="../index.php/login/logout">
                    Logout &nbsp;<i class="fa fa-sign-out"></i>
                </a>
            </li>
        </ul>
    </div>

</div>

<hr style="margin-top:0px;" />



    <!-- Form for E-Appointment-->
      <div id="test" >


    </div>

    <%-- Channeling --%>

    <div class="container">
  <!-- Channeling -->
  <div class="modal shade in" id="myModal2" role="dialog" style="">
    <div class="modal-dialog modal-lg">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h3 class="modal-title">Patient Information</h3>
        </div>
        <div class="modal-body">

          <table class="table table-striped">

          <tr>
            <th scope="col">ID</th>
            <td>01252</td>
          </tr>

          <tr>
            <th scope="row">No</th>
            <td>001</td>
          </tr>

          <tr>
            <th scope="row">Name</th>
            <td>Thisara Gunathilaka</td>
          </tr>

          <tr>
            <th scope="row">Age</th>
            <td>21 yrs</td>
          </tr>

          <tr>
            <th scope="row">Date</th>
            <td>20/04/2021</td>
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
          <tr>
            <td>cetirizine 20mg</td>
            <td>20</td>
          </tr>
          <tr>
            <td><input type="text" name="" value="" placeholder="Enter Drug Name:"></td>
            <td><input type="number" name="" value="" placeholder="Enter Quantity"></td>
          </tr>
          </table>
                      <hr>

          </div>
          <div class="modal-footer">
              <button type="submit" class="btn btn-primary" data-dismiss="modal">Submit</button>
          </div>
        </div>

      </div>
    </div>
  </div>


  <%-- E - Appointment --%>

  <div class="container">
<!-- E - Appointment -->
<div class="modal shade in" id="myModal3" role="dialog" style="">
  <div class="modal-dialog modal-lg">
    <div class="modal-content">
      <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal">&times;</button>
        <h3 class="modal-title">E - Appointment</h3>
      </div>
      <div class="modal-body">

        <table class="table table-striped">

        <tr>
          <th scope="col">ID</th>
          <td>01252</td>
        </tr>

        <tr>
          <th scope="row">Name</th>
          <td>Thisara Gunathilaka</td>
        </tr>

        <tr>
          <th scope="row">Age</th>
          <td>21 yrs</td>
        </tr>

        <tr>
          <th scope="row">Gender</th>
          <td>Male</td>
        </tr>

        <tr>
          <th scope="row">Date</th>
          <td>20/04/2021</td>
        </tr>

        <tr>
          <th scope="row">Time</th>
          <td>10:05:02</td>
        </tr>

        <tr>
          <th scope="row">Message</th>
          <td><p>Test<p></td>
        </tr>
      </table>

      <div class="row">
  <div class="column">
    <img src="data:image/jpeg;base64,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" style="width:100%" onclick="openModal();currentSlide(1)">
  </div>
  <div class="column">
    <img src="data:image/jpeg;base64,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" style="width:100%" onclick="openModal();currentSlide(2)" class="hover-shadow cursor">
  </div>
  <div class="column">
    <img src="data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAkGBxMTEhUTExMWFRUXGBcaFxcXFxoXFRUaFRcXFxgXFxUYHSggGBolHRUVITEhJSkrLi4uFx8zODMtNygtLisBCgoKDg0OFxAQFy0dFx0tKy0tLS0tKy0tLSstLS0tLS0tLS0tLS0tLS0tLS0tLS0tLS0tLSs3LS0tLS0tKystLv/AABEIANwA5QMBIgACEQEDEQH/xAAbAAADAQEBAQEAAAAAAAAAAAACAwQBAAUGB//EADgQAAIBAgMFBgUCBgIDAAAAAAABAgMRIUFRBBIxYZFxgaGx0fAFEyJywTLhBhQVI7LxM2IHQlL/xAAZAQADAQEBAAAAAAAAAAAAAAAAAQIDBAX/xAAbEQEBAQEBAQEBAAAAAAAAAAAAARECEiExA//aAAwDAQACEQMRAD8A+iq1HvSxf6nnzOVR6vqLrfql2vzMucNr0JDnUer6mOq9X1FxmY5EqkG6ktX1DVV6vqKucpCVhnzXq+pyqPV9RbVwkIGOq9X1OjVer6ijkI8OlVb4N9TfmPV9RUeQRIw6NR6vqa6j1fUQGgGGqbWb6nfOd+L6sTKdgt4DxTGthxfU2Nbm+pHvm74DytVR6vqFGq9X1IY1O0aqgheVHzHq+pjqvVinMFSEJFSqvV9TJ1Xk/EQpGuVwHk1Veb6hfMer6k9woyEXkca93xeAfzXqJisWGIrIZSm9X1OBhmcGoeNVf1S7X5sVvjK/6pdr8xcldHVTjpVAIV8mKmgYIG3MiunK4cgIRsbImpv62LYUagDeAt6iOTVW8mjIu4mnawcamQjw46WF8xXzGEqmAsIxVTXMTfHkC+IHhspWxAcnkb2gXYjN3sExVepZXMjICctPVgqMhW0du8bSrSvl77TzKmDv5YdLhqrd+/fgDXy9qMw5SJdnlgsRvzCWNhu+A61uNiWvtFhUp6PevbjlyuPFThfCumNjI8q/QbstXGwWC8PTjIPfEQZrkQysUUpcTRNHM4qRnZ9eRXqfVLtfmZCYG0P65fc/MC+h01UhqRrihcJYjIsmqwyFS5qjqAapokYxwsLkNk2IqSsBxnzUh2+sjza08bD6c+Fhtc+Kt43G2AqNTkbvEs6YquGIE61gXhl77BTaEqH0NpvxKd5PM8lVN13RbRq7wqrrk2ovdjEsPU1sCzWokMlC/IH+XV+A10wXJISpTqWHAY2R/wAyr2bfvxGxqe/UeCwjbF3CKUrrl49CqrTuQThKN9BxpysjJ+i9TlVe9fDAijKytfAbTqK6vgxnj3ISCE0eA9EOemU48Tg6GZwRlb9fOV39cvul5sFSM2qX1y+6XmyedQ6a05UqYcaiPNVa+F/UOnVdxWNfD1aVQ2pC7J4SGqRNZ2GRnYXUxOuDBiKJ6tO4VPAY0LmgtXK2U7O/MYJUAmrEjD8RdQzeO3mB4xU7hwVsgccH78DlV7BU1DnzGb5L85X4Pux/0NUsLPxwDBY6pMTVlk+tuHcbVm7cX6epHNq2PXPw/ISHzD95cHLst7wD+ar4O/dw9SKLtzXn3MZGtph2DXj1KFRSys1kZXpXXMjo1Xw8S6jWUkSizPx51GkndfgoobKlZ6FSoriFbD3YNF7MpyGuQg2MtUJnVmzzOFbO+Jg4zs+vntpX1y+6XmxEkVbRbfn90vNinE6dPmo/kY3HUYNO47cuEqYrWnsynIdFiYoKJFT+mNnNipnb1iTwU5sGM9RbmZvAqQy90dv3ESq2A+bjqGLnKpIOUffEn3na64dWMhO9l7668QFg3K2ompXtlhz/ANh7za/f18iXaG8xCQ6nXXHDyHqceCVn7yuecpf/AFbstinzzKYLTo7Wfe/eA14rjUVrfusOYr+W46+8he8tOj9ENhLDir6e+Ak5gJ2Ss0+5W66mS3VjbjgHUq8U27vgtewVBvS+t+K7wMxTb4Plhh3YYWHQlZ44EscHmn328w/mXt7YqMepTqXSDbI6FTApTzJrLqCTuFcVvmxYJOpStc4GlmcVE1420r65fdLzYKYe0r65/c/Nikjephkjt4XfELeEqRsps6MxblYROukxY05mrrgqQmlUwCVRaq5Nh4LACfaG2KqSARNKq7h72mJNWaTxZsKiWY8aqYVGuQxVLcPMSqqeXebZe8V0EFEZXXG2qth4e8AJwcvbt76CIVmnjjrbMOGPBu+mT/cQwtO+FkmunUdG1s79b9guU2rtPhlwfcv9ZcQI123gnf3mmBq4VVbDDu/OoUKry8OPfqiWLbePr45jITdvw7q9vAQMcGlfJ68Me8HFPX3kDfO9npe2XLuBnNrlywAlLqPnzxwb6hqo1+69onp1sLYW5jG8MHgAV0ag+o21geaq1rFkWTUdRRiFHhYRGXaNuJnT9nbxOM2dcTiozrx9ql/cl90vMVvBbV+uf3S82LR0FBSZikA0amS0ga0sCCc8S6SIq1KwNeKpp1EkMp1cTzXTaK9mixVSueGJJKu73w98ihvIjqUnkKJ5FUalwJ7OI+lBrAyVF34+n7DVrKVdWs/AdTeJNKLjwNjN3y7RYpdFJ59xqjo+uXmTJ42bx1yYyE7fq7uQgY7p38Uwp1I4PPnbz4i97K4vdV8/fvgIGX42w7fI2MtW7e8maopYrB6cU+YDm9O/3wAHOqnz5/ixqjhfeXZmIg0sffeZOV8UwGDVTK9uTeIUa2QiFnwDUXmANpSvY9GmyLZqfiUylYms+qepBp6E9GXUpyJZ02jLj3HA7PmcVIyv68na19cvul5sXEdtf65fdLzYg3HP4NsGxykcpCXGTENB1EDFA0g4xCSOgjU7k0hxigJwtiazE8BCFOIMmPSuDOmC9IvcXOmUJWMkm8g09Q1E0MpyGVqJO7jXKq7H77B1NaW7P94EVPt6jqVZxwy694gdf2/LmDdLL3yOu2r5e/eICSvjgtcxANX2jKcg2ly/PiNpU8+gDRUY9pSkBTiHe3ATO0SlY6cyecne6N3lmgxKqkyiLJaRRTJqaq2fM4HZ3xOKjC/rydrl9cvul5sVcDbH/cn90v8AJiHU1NmnM+KJvmDvHnVNpyFxqNcAxrOXqNhI8+FZt53LaTFTsw/dsdYzeNUsCajRSWhkjIvHHA25Jhi3fgdUqLg8wkzmtQPXRirWMmg09TGAAuYt0bjYwC3R6evPrUmgIc2WVo4EVSD/AHBcp8ZW59vqdvX4cOnHz6iIyN3/AHkCj7Xfu3UpjBrgyGCbKtmTzEVWRRjRtw7iZEbhPvvex4FPzsQa0b42HBfh9KWA5Mkox5lCaJrO1Vs2dzAdlfHu/Jw4xt+vD2z/AJJ/dLzZNUZVtq+uf3S82SSOhpzUcliPizZxFuDBrKbGWPAtpzI6cCmmTTtVKQSYqCDRFQK5lSGIKWIxiNgLeTwNbscI46EbLAMxw0t2GuWoASZ03dGY5BYviIEzjzJqsNS2crE9eOg4qVFTpLPL33DYU+9Aqi74FNOFlzKtXTKcEN3L5i4MY3bElLJVMvfUU6txNeSYmExqkehBXxHyRFs8scC2LEz7CmHHExIITn6puz5935OBoS4935OHKzteVtv/ACT+6XmyZoft3654f+0v8mTpm7SVjiZYJGtAvWoOnIBM2PImnp6kGpCUwnIQOZykS1K6jiJjXcuHQWLkem5HJk2z1booTVicK/BXM+YgJzI5V8QxXM16UXpY1tnmxqWz/HkWU6ugWHecMcrr8CpBb1+Amo+OQijHI6nJ3JHP3mNjV7Csa4tixdV4A0qvaxzhclF+IFU5Gwo3xKJURijYei9BoQsVoXT4DYqxLLqiR0pGiqjBjaOhPj3fk4lozxfd+Ti5PjK36Rt365/dLzZJIr21J1J/dLzZNM1aSgjI1pHNHWA/QooKDAQSErTmwXIAyQlQqurkkZNOxa6bvxMdMGk6FsrfEriJpRYxIkrdZN3PPqrE9BsVOkCuekzfaXbLJiflWxKIcOAqd6+KPITUiM3zN7VCidefWpi12HoyimBGkr8B6qdAoxfFlkJioxGImlbpvEGEdTqbsM3gRoVHuN3cLmI3eyBNolLAVVkchW0SwCMuiqMsX3fk4kjWs33fk43nPxjevqzbV/cn90v8mIcSrbF/cn98v8mIZOtIXYEZYFoNMDOi2c0YM4JyCi0xe9yO3hKlMNUtUKUw1IS5TVY6UZLFYryFpjoSENcwUbJg3sBymJXNXIHeNU1exJ6KIW7qdc53uBa6N0EnyBcTYt3EYnHOxzkc7nSVwJrmkMUuAvEJpgWjlJGWExpu9ygSeqU8CTaZYDqszztuq2i3yL5m1n1UEK15z7vyaSfDW5Odlfh+Tjqk+OW36/Qv43+FS2fa5u30VW5weT3neS7VJvutqeAfvPxT4ZS2iDp1oKUeOjT1i1inzR+YfxJ/DdLZ6m7CVRr/ALOL8ooj+n87Ls/F/wA/6yzL+vkmY2z1f5CLzfh6Ar4fHWXh6GeVtsea2KZ66+Hx1fh6GPYI6vw9Aweo8VnKR6s/h0NX4egH9OjrLw9B5T9R5xqVj0v6fHWXh6Gr4fHWXVegZT9x5mYadj0H8Ohq/D0Nh8Pjq/D0F5qvcQ35h3Lf6bDWXVeh1PYI6y8PQXmj3EcWMvcs/p0dX4ehq+HQ1fh6C80e4itoHv6lkNhjq/D0Cewxtxfh6C80vcQybMii/wDkY24y8PQKGwx1fh6B5p+4iizU+RfPYY6vw9DlsMdX4egeaXtFdBxK47BHV+HoMWwx1fh6C80vUSIXUL3scdX4egE9jjq/D0DzU3qPHrs+f+N18Lan11bYI6vw9D7D+Gf/AB5sU1GvVjOs8oVJJ0lb/pFLe7JXXI2/nxbWX9O5I8f/AMOfwipbPU2naIO1Zw+Ung3CG9/c7JObtqop8GjD9bStgjjrkxyW7X//2Q==" style="width:100%" onclick="openModal();currentSlide(3)" class="hover-shadow cursor">
  </div>
  <div class="column">
    <img src="data:image/jpeg;base64,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" style="width:100%" onclick="openModal();currentSlide(4)" class="hover-shadow cursor">
  </div>
</div>

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
        <tr>
          <td>cetirizine 20mg</td>
          <td>20</td>
        </tr>
        <tr>
          <td><input type="text" name="" value="" class="" placeholder="Enter Drug Name:"></td>
          <td><input type="number" name="" value="" class="" placeholder="Enter Quantity"></td>
        </tr>
        </table>
        <br>
        <hr>
          <table class="table table-striped">
        <tr>
          <th scope="row">Message To Patient</th>
          <td><input type="textarea" name="" value="" class="" placeholder="Enter Message To Patient :"></td>
        </tr>
        <br>
          <tr>
            <th scope="row">Select The Department :</th>
            <td><select class="form-control  input-sm" name="" id=""
                    onchange="">
                    <option value="0">Select The Department</option>
                                                    <option value="1"
                                                            >
                            ENT                                </option>
                                                    <option value="2"
                                                            >
                            Dermatology                               </option>
                                            </select></td>
                                            <td><button type="submit" class="btn btn-primary" >Send</button></td>
          </tr>
      </table>
                  <hr>

        </div>
        <div class="modal-footer">
            <button type="submit" class="btn btn-primary" >Submit</button>
        </div>
      </div>

    </div>
  </div>
</div>


                <!-- Footer -->
<footer class="main">
	&copy; 2017 <strong> Hospital Management System</strong>
    Developed by

</footer>

            </div>

        </div>
        <script type="text/javascript">



function showAjaxModal(url)
{
$('.customized-modal').css('margin-top', window.scrollY);
// SHOWING AJAX PRELOADER IMAGE
jQuery('#modal_ajax .modal-body').html('<div style="text-align:center;margin-top:200px;"><img src="assets/images/preloader.gif" style="height:25px;" /></div>');

// LOADING THE AJAX MODAL
jQuery('#modal_ajax').modal('show', {backdrop: 'true'});

// SHOW AJAX RESPONSE ON REQUEST SUCCESS
$.ajax({
  url: url,
  success: function(response)
  {
    jQuery('#modal_ajax .modal-body').html(response);
  }
});
}
</script>

<!-- (Ajax Modal)-->
<div class="modal fade customized-modal" id="modal_ajax">
    <div class="modal-dialog" >
        <div class="modal-content" style="">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"> Hospital Management System</h4>
            </div>

            <div class="modal-body" style="height:500px; overflow:auto;">


            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>




<script type="text/javascript">
function confirm_modal(delete_url)
{
jQuery('#modal-4').modal('show', {backdrop: 'static'});
document.getElementById('delete_link').setAttribute('href' , delete_url);
}
</script>

<!-- (Normal Modal)-->
<div class="modal fade" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content" style="margin-top:100px;">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title" style="text-align:center;">Are you sure to delete this information ?</h4>
            </div>


            <div class="modal-footer" style="margin:0px; border-top:0px; text-align:center;">
                <a href="#" class="btn btn-danger" id="delete_link">Delete</a>
                <button type="button" class="btn btn-info" data-dismiss="modal">Cancel</button>
            </div>
        </div>
    </div>
</div>

<!--    custom width modal -->

<script type="text/javascript">



    function showCustomWidthModal(url)
    {
        // SHOWING AJAX PRELOADER IMAGE
        jQuery('#modal-2 .modal-body').html('<div style="text-align:center;margin-top:200px;"><img src="assets/images/preloader.gif" style="height:25px;" /></div>');

        // LOADING THE AJAX MODAL
        jQuery('#modal-2').modal('show', {backdrop: 'true'});

        // SHOW AJAX RESPONSE ON REQUEST SUCCESS
        $.ajax({
            url: url,
            success: function(response)
            {
                jQuery('#modal-2 .modal-body').html(response);
            }
        });
    }
</script>

<div class="modal fade custom-width" id="modal-2">
    <div class="modal-dialog" style="width: 75%;">
        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title"> Hospital Management System</h4>
            </div>

            <div class="modal-body">

            </div>

            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
        </div>
    </div>
</div>
        <link rel="stylesheet" href="../assets/js/daterangepicker/daterangepicker-bs3.css">
<link rel="stylesheet" href="../assets/js/selectboxit/jquery.selectBoxIt.css">
<link rel="stylesheet" href="../assets/js/wysihtml5/bootstrap-wysihtml5.css">
<link rel="stylesheet" href="../assets/js/selectboxit/jquery.selectBoxIt.css">
<link rel="stylesheet" href="../assets/js/datatables/responsive/css/datatables.responsive.css">
<link rel="stylesheet" href="../assets/js/select2/select2-bootstrap.css">
<link rel="stylesheet" href="../assets/js/select2/select2.css">

<!-- Bottom Scripts -->

<script src="../assets/js/gsap/main-gsap.js"></script>
<script src="../assets/js/jquery-ui/js/jquery-ui-1.10.3.minimal.min.js"></script>
<script src="../assets/js/bootstrap.js"></script>
<script src="../assets/js/joinable.js"></script>
<script src="../assets/js/resizeable.js"></script>
<script src="../assets/js/neon-api.js"></script>
<script src="../assets/js/bootstrap-switch.min.js"></script>
<script src="../assets/js/toastr.js"></script>
<script src="../assets/js/jquery.validate.min.js"></script>
<script src="../assets/js/fullcalendar/fullcalendar.min.js"></script>
<script src="../assets/js/bootstrap-datepicker.js"></script>
<script src="../assets/js/bootstrap-timepicker.min.js"></script>
<script src="../assets/js/fileinput.js"></script>
<script src="../assets/js/wysihtml5/wysihtml5-0.4.0pre.min.js"></script>
<script src="../assets/js/wysihtml5/bootstrap-wysihtml5.js"></script>
<script src="../assets/js/jquery.multi-select.js"></script>
<script src="../assets/js/jquery.knob.js"></script>
<script src="../assets/js/selectboxit/jquery.selectBoxIt.min.js"></script>
<script src="../assets/js/jquery.inputmask.bundle.min.js"></script>
<script src="../assets/js/daterangepicker/moment.min.js"></script>
<script src="../assets/js/daterangepicker/daterangepicker.js"></script>
<script src="/Hospital-mng-sys/assets/frontend/default/vendor/flatpickr/flatpickr.min.js"></script>
<script src="/Hospital-mng-sys/assets/frontend/default/vendor/swiper/js/swiper.min.js"></script>
<script src="/Hospital-mng-sys/assets/common/izitoast/js/iziToast.min.js"></script>

<link rel="stylesheet" href="../assets/js/dropzone/dropzone.css">
<script src="../assets/js/dropzone/dropzone.js"></script>

<script src="../assets/js/jquery.dataTables.min.js"></script>
<script src="../assets/js/datatables/TableTools.min.js"></script>
<script src="../assets/js/dataTables.bootstrap.js"></script>
<script src="../assets/js/datatables/jquery.dataTables.columnFilter.js"></script>
<script src="../assets/js/datatables/lodash.min.js"></script>
<script src="../assets/js/datatables/responsive/js/datatables.responsive.js"></script>
<script src="../assets/js/select2/select2.min.js"></script>

<script src="../assets/js/neon-calendar.js"></script>
<script src="../assets/js/neon-chat.js"></script>
<script src="../assets/js/neon-custom.js"></script>
<script src="../assets/js/neon-demo.js"></script>
<script src="../assets/js/neon-notes.js"></script>
<script src="../assets/js/jquery.form.js"></script>

<script src="../assets/js/ajax-form-submission.js"></script>


<script>
    $(".html5editor").wysihtml5();
</script>



    </body>
</html>
