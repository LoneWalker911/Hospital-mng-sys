
<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<meta name="robots" content="index, follow">
<meta name="description" content="Bayanno Hospital Management System">
<meta name="keywords" content="bootstrap, responsive, template, website, html, theme, ux, ui, web, design, developer, support, business, corporate, real estate, education, medical, school, education, demo, css, framework">
<meta name="author" content="Creativeitem">
        <title>Home | Bayanno Diagnostic Center</title>
        <!--jquery-->

<!-- Page loader -->
<script
    src="assets/frontend/default/vendor/pace/js/pace.min.js"></script>
<link rel="stylesheet"
    href="assets/frontend/default/vendor/pace/css/pace-minimal.css" type="text/css">

<!-- Bootstrap -->
<link rel="stylesheet"
    href="assets/frontend/default/vendor/bootstrap/css/bootstrap.min.css" type="text/css">

<!-- Fonts -->
<link href="https://fonts.googleapis.com/css?family=Lato:300,300i,400,400i,700,700i,900,900i" rel="stylesheet">

<!-- Plugins -->
<link rel="stylesheet"
    href="assets/frontend/default/vendor/swiper/css/swiper.min.css">
<link rel="stylesheet"
    href="assets/frontend/default/vendor/hamburgers/hamburgers.min.css" type="text/css">
<link rel="stylesheet"
    href="assets/frontend/default/vendor/animate/animate.min.css" type="text/css">
<link rel="stylesheet"
      href="assets/common/izitoast/css/iziToast.min.css" type="text/css">
<!-- Icons -->
<link rel="stylesheet"
    href="assets/frontend/default/fonts/font-awesome/css/font-awesome.min.css" type="text/css">
<link rel="stylesheet"
    href="assets/frontend/default/fonts/ionicons/css/ionicons.min.css" type="text/css">
<link rel="stylesheet"
    href="assets/frontend/default/fonts/line-icons-pro/line-icons-pro.css" type="text/css">


<!-- Global style (main) -->
<link id="stylesheet" type="text/css"
    href="assets/frontend/default/css/global-style.css" rel="stylesheet" media="screen">

<!-- Custom style - Remove if not necessary -->
<link type="text/css"
    href="assets/frontend/default/css/custom-style.css" rel="stylesheet">

<!-- Favicon -->
<link href="uploads/favicon.png" rel="icon" type="image/png">

<!-- recaptcha -->
<script src='https://www.google.com/recaptcha/api.js'></script>    </head>

    <body>
        <!-- MAIN WRAPPER -->
        <div class="body-wrap">
            <div id="st-container" class="st-container">
                <div id="doctor_details"></div>
                <div class="st-pusher">
                    <div class="st-content">
                        <div class="st-content-inner">

<!-- Navbar -->
<nav class="navbar navbar-expand-lg  navbar-light bg-default navbar--link-arrow navbar--uppercase bayanno-nav">
    <div class="container navbar-container">
        <!-- Brand/Logo -->
        <a class="navbar-brand" href="index.php/home">
            <img src="uploads/logo.png" width="40"
                alt="">
                &nbsp; Bayanno Diagnostic Center        </a>

        <div class="d-inline-block">
            <!-- Navbar toggler  -->
            <button class="navbar-toggler hamburger hamburger-js hamburger--spring"
                type="button" data-toggle="collapse" data-target="#navbar_main"
                    aria-controls="navbarsExampleDefault" aria-expanded="false"
                        aria-label="Toggle navigation">
                <span class="hamburger-box">
                    <span class="hamburger-inner"></span>
                </span>
            </button>
        </div>

        <div class="collapse navbar-collapse align-items-center justify-content-end" id="navbar_main">

            <!-- Navbar links -->
            <ul class="navbar-nav" data-hover="dropdown">
                <li class="nav-item
                    active">
                    <a class="nav-link" aria-haspopup="true" aria-expanded="false"
                        href="index.php/home">
                        Home                    </a>
                </li>

                <li class="nav-item dropdown
                ">
                    <a href="#" class="nav-link"
                        data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                    Departments                    </a>

                    <ul class="dropdown-menu">
                                                <li>
                            <a class="dropdown-item"
                                href="index.php/home/department/1">
                                Anesthetics                            </a>
                        </li>
                                                <li>
                            <a class="dropdown-item"
                                href="index.php/home/department/2">
                                Cardiology                            </a>
                        </li>
                                                <li>
                            <a class="dropdown-item"
                                href="index.php/home/department/3">
                                Gastroenterology                            </a>
                        </li>
                                            </ul>
                </li>
                <li class="nav-item
                ">
                    <a class="nav-link" aria-haspopup="true" aria-expanded="false"
                        href="index.php/home/doctors">
                    Doctors                    </a>
                </li>
                <li class="nav-item
                ">
                    <a class="nav-link" aria-haspopup="true" aria-expanded="false"
                        href="index.php/home/about_us">
                    About                    </a>
                </li>
                <li class="nav-item
                ">
                    <a class="nav-link" aria-haspopup="true" aria-expanded="false"
                        href="index.php/home/appointment">
                    Appointment                    </a>
                </li>
                <li class="nav-item
                ">
                    <a class="nav-link" aria-haspopup="true" aria-expanded="false"
                        href="index.php/home/blog">
                    Blog                    </a>
                </li>
                <li class="nav-item
                ">
                    <a class="nav-link" aria-haspopup="true" aria-expanded="false"
                        href="index.php/home/contact_us">
                    Contact                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" aria-haspopup="true" aria-expanded="false"
                        href="index.php/login" target="_blank">
                    Login                    </a>
                </li>
            </ul>
        </div>
    </div>
</nav>
                            <section class="swiper-js-container background-image-holder" data-holder-type="fullscreen" data-holder-offset=".navbar">
    <div class="swiper-container" data-swiper-effect="fade" data-swiper-autoplay="true" data-swiper-items="1" data-swiper-space-between="0">
        <div class="swiper-wrapper">
                        <!-- Slide -->
                <div class="swiper-slide" data-swiper-autoplay="5000">
                    <div class="slice holder-item holder-item-light has-bg-cover bg-size-cover"
                    style="background-image: url(uploads/frontend/slider_images/slider2.jpg); background-position: bottom bottom;">
                        <span class="mask mask-dark--style-2"></span>
                        <div class="container d-flex align-items-center no-padding">
                            <div class="col">
                                <div class="row row-cols-xs-spaced align-items-center py-5 text-center text-md-left">
                                    <div class="col-md-7 col-lg-6">
                                        <h2 class="heading heading-1 animated" data-animation-in="bounceInDown" data-animation-delay="200">
                                            The skill to heal, the spirit to care                                        </h2>

                                        <p class="mt-4 animated"
                                            data-animation-in="fadeInDown"
                                                data-animation-delay="1000">
                                            Dedicated to providing multidisciplinary medical care and backed by state-of-the-art facilities                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                        <!-- Slide -->
                <div class="swiper-slide" data-swiper-autoplay="5000">
                    <div class="slice holder-item holder-item-light has-bg-cover bg-size-cover"
                    style="background-image: url(uploads/frontend/slider_images/slider1.jpg); background-position: bottom bottom;">
                        <span class="mask mask-dark--style-2"></span>
                        <div class="container d-flex align-items-center no-padding">
                            <div class="col">
                                <div class="row row-cols-xs-spaced align-items-center py-5 text-center text-md-left">
                                    <div class="col-md-7 col-lg-6">
                                        <h2 class="heading heading-1 animated" data-animation-in="bounceInDown" data-animation-delay="200">
                                            Giving children the care they deserve                                        </h2>

                                        <p class="mt-4 animated"
                                            data-animation-in="fadeInDown"
                                                data-animation-delay="1000">
                                            To keep the body in good health is a duty. Otherwise we shall not be able to keep our mind strong and clear                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                        <!-- Slide -->
                <div class="swiper-slide" data-swiper-autoplay="5000">
                    <div class="slice holder-item holder-item-light has-bg-cover bg-size-cover"
                    style="background-image: url(uploads/frontend/slider_images/slider3.jpg); background-position: bottom bottom;">
                        <span class="mask mask-dark--style-2"></span>
                        <div class="container d-flex align-items-center no-padding">
                            <div class="col">
                                <div class="row row-cols-xs-spaced align-items-center py-5 text-center text-md-left">
                                    <div class="col-md-7 col-lg-6">
                                        <h2 class="heading heading-1 animated" data-animation-in="bounceInDown" data-animation-delay="200">
                                            Where Compassion and Healing Come Together                                        </h2>

                                        <p class="mt-4 animated"
                                            data-animation-in="fadeInDown"
                                                data-animation-delay="1000">
                                            Dedicated to providing multidisciplinary medical care and backed by state-of-the-art facilities                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            <!-- Add Arrows -->
            <div class="swiper-button swiper-button-next"></div>
            <div class="swiper-button swiper-button-prev"></div>

        </div>
    </div>
</section>

<section class="home-top-widgets">
    <div class="container">
        <div class="row">
            <div class="col-lg-4">
                <div class="home-widget widget-1">
                    <i class="fa fa-phone"></i>
                    <h4>Emergency Contact</h4>
                    <h3>1-800-400-7400</h3>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="home-widget widget-2">
                    <i class="fa fa-calendar"></i>
                    <h4>Doctor Appointment</h4>
                    <a href="index.php/home/appointment"
                        class="btn">
                        Book An Appointment                    </a>
                </div>
            </div>
            <div class="col-lg-4">
                <div class="home-widget widget-3">
                    <i class="fa fa-clock-o"></i>
                    <h4>Opening Hours</h4>
                                        <ul>
                        <li class="clearfix">Monday - Friday
                            <span class="float-right">10.00-21.00</span></li>
                        <li class="clearfix">Saturday
                            <span class="float-right">10.00-18.00</span></li>
                        <li class="clearfix">Sunday
                            <span class="float-right">11.00-17.00</span></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
</section>


<section class="slice sct-color-2 pb-0">
    <div class="container">
        <div class="row align-items-md-center">

            <div class="col col-md-6 col-sm-12 col-12">
                <img src="uploads/frontend/welcome.png"
                    class="img-fluid img-center">
            </div>

            <div class="col col-md-6 col-sm-12 col-12">
                <div class="px-3 py-3 text-center text-lg-left">
                    <h3 class="heading heading-3 strong-500">
                        Welcome To Bayanno Diagnostic Center                    </h3>
                    <p class="mt-4">
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris quisque adipiscing lobortis aptent cras et justo. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris quisque adipiscing lobortis aptent cras et justo.                    </p>
                </div>
            </div>

        </div>
    </div>
</section>

<section class="slice slice--arrow bg-base-1">
    <div class="sct-inner container">
        <div class="section-title section-title-inverse section-title--style-1 text-center">
            <h3 class="section-title-inner">
                <span>Our World Class Services</span>
            </h3>
            <span class="section-title-delimiter clearfix d-none"></span>
        </div>

        <div class="fluid-paragraph fluid-paragraph-sm text-center">
        Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna. Ut enim ad minim veniam.        </div>
    </div>
</section>

<section class="slice-xl sct-color-1 b-xs-bottom">
    <div class="container">
        <div class="row-wrapper">
            <div class="row">
                                <div class="col-lg-6 col-md-12 col-sm-12 col-12"
                    style="margin-top: 10px;">
                    <div class="icon-block icon-block--style-1-v2 block-icon-right block-icon-sm">
                        <div class="block-icon">
                            <img src="uploads/frontend/service_images/1.png"
                                width="50">
                        </div>
                        <div class="block-content">
                            <h3 class="heading heading-5 strong-500">
                                High quality service                            </h3>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.                            </p>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-6 col-md-12 col-sm-12 col-12"
                    style="margin-top: 10px;">
                    <div class="icon-block icon-block--style-1-v2 block-icon-right block-icon-sm">
                        <div class="block-icon">
                            <img src="uploads/frontend/service_images/2.png"
                                width="50">
                        </div>
                        <div class="block-content">
                            <h3 class="heading heading-5 strong-500">
                                Modern hospital and technology                            </h3>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.                            </p>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-6 col-md-12 col-sm-12 col-12"
                    style="margin-top: 10px;">
                    <div class="icon-block icon-block--style-1-v2 block-icon-right block-icon-sm">
                        <div class="block-icon">
                            <img src="uploads/frontend/service_images/3.png"
                                width="50">
                        </div>
                        <div class="block-content">
                            <h3 class="heading heading-5 strong-500">
                                Ready for intervention                            </h3>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.                            </p>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-6 col-md-12 col-sm-12 col-12"
                    style="margin-top: 10px;">
                    <div class="icon-block icon-block--style-1-v2 block-icon-right block-icon-sm">
                        <div class="block-icon">
                            <img src="uploads/frontend/service_images/4.png"
                                width="50">
                        </div>
                        <div class="block-content">
                            <h3 class="heading heading-5 strong-500">
                                Specialist consulting for health problems                            </h3>
                            <p>
                                Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.                            </p>
                        </div>
                    </div>
                </div>
                            </div>
        </div>
    </div>
</section>


<section class="slice sct-color-1 relative b-xs-bottom department-section">
    <div class="container">
        <div class="section-title section-title--style-1 text-center mb-4">
            <h3 class="section-title-inner text-normal">
                <span>Departments</span>
            </h3>
            <span class="section-title-delimiter clearfix d-none"></span>
        </div>

        <span class="clearfix"></span>

        <span class="space-xs-xl"></span>

        <div class="row-wrapper">
            <div class="row">
                            <div class="col-lg-3">
                    <a href="index.php/home/department/1">
                        <div class="department-small-view">
                            <div class="block-icon text-center">
                                <img src="uploads/frontend/department_images/1.png" alt=""
                                    width="60">
                                <h5>Anesthetics</h5>
                            </div>
                        </div>
                    </a>
                </div>
                            <div class="col-lg-3">
                    <a href="index.php/home/department/2">
                        <div class="department-small-view">
                            <div class="block-icon text-center">
                                <img src="uploads/frontend/department_images/2.png" alt=""
                                    width="60">
                                <h5>Cardiology</h5>
                            </div>
                        </div>
                    </a>
                </div>
                            <div class="col-lg-3">
                    <a href="index.php/home/department/3">
                        <div class="department-small-view">
                            <div class="block-icon text-center">
                                <img src="uploads/frontend/department_images/3.png" alt=""
                                    width="60">
                                <h5>Gastroenterology</h5>
                            </div>
                        </div>
                    </a>
                </div>
                        </div>
        </div>

    </div>
</section>


<section class="slice sct-color-1 relative">
    <div class="container">
        <div class="section-title section-title--style-1 text-center mb-4">
            <h3 class="section-title-inner text-normal">
                <span>Our Awesome Doctors</span>
            </h3>
            <span class="section-title-delimiter clearfix d-none"></span>
        </div>

        <span class="clearfix"></span>

        <span class="space-xs-xl"></span>

        <div class="row-wrapper">
            <div class="row department-doctor-list">
                                <div class="col-lg-3 col-md-6 col-sm-12 col-12">
                    <div class="block block--style-4 list doctor-list">
                        <div class="block-image">
                            <div class="view view-fifth">
                                <img src="uploads/user.jpg">
                                <div class="mask">
                                    <div class="view-buttons">
                                        <span class="view-buttons-inner text-center appointment-btn">
                                            <a href="" class="btn btn-styled btn-base-1 btn-outline btn-icon-left btn-st-trigger"
                                                data-effect="st-effect-1"
                                                    id="index.php/home/get_doctor_details/1">
                                                View Details                                            </a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="block-content w-100">
                            <div class="block-body py-2 px-0">
                                <small>
                                    Cardiology                                </small>
                                <h3 class="heading heading-5 strong-500">
                                    <a href="" class="btn-st-trigger" data-effect="st-effect-1"
                                    id="index.php/home/get_doctor_details/1">
                                        Micheal Pewd                                    </a>
                                </h3>

                            </div>

                                                        <div class="block-footer block-footer-fixed-bottom b-xs-top">
                                <div class="row">
                                    <div class="col-12">
                                        <ul class="social-media social-media--style-1-v4">
                                                                                            <li>
                                                    <a href="http://facebook.com"
                                                     target="_blank">
                                                        <i class="ion ion-social-facebook"></i>
                                                    </a>
                                                </li>
                                                                                                                                        <li>
                                                    <a href="https://twitter.com"
                                                       target="_blank">
                                                        <i class="ion ion-social-twitter"></i>
                                                    </a>
                                                </li>
                                                                                                                                        <li>
                                                    <a href="https://google.com"
                                                       target="_blank">
                                                        <i class="ion ion-social-googleplus"></i>
                                                    </a>
                                                </li>
                                                                                                                                        <li>
                                                    <a href="https://linkedin.com/user"
                                                       target="_blank">
                                                        <i class="ion ion-social-linkedin"></i>
                                                    </a>
                                                </li>
                                                                                    </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                                <div class="col-lg-3 col-md-6 col-sm-12 col-12">
                    <div class="block block--style-4 list doctor-list">
                        <div class="block-image">
                            <div class="view view-fifth">
                                <img src="uploads/user.jpg">
                                <div class="mask">
                                    <div class="view-buttons">
                                        <span class="view-buttons-inner text-center appointment-btn">
                                            <a href="" class="btn btn-styled btn-base-1 btn-outline btn-icon-left btn-st-trigger"
                                                data-effect="st-effect-1"
                                                    id="index.php/home/get_doctor_details/2">
                                                View Details                                            </a>
                                        </span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="block-content w-100">
                            <div class="block-body py-2 px-0">
                                <small>
                                    Anesthetics                                </small>
                                <h3 class="heading heading-5 strong-500">
                                    <a href="" class="btn-st-trigger" data-effect="st-effect-1"
                                    id="index.php/home/get_doctor_details/2">
                                        Erich Mcbride                                    </a>
                                </h3>

                            </div>

                                                        <div class="block-footer block-footer-fixed-bottom b-xs-top">
                                <div class="row">
                                    <div class="col-12">
                                        <ul class="social-media social-media--style-1-v4">
                                                                                            <li>
                                                    <a href="http://facebook.com"
                                                     target="_blank">
                                                        <i class="ion ion-social-facebook"></i>
                                                    </a>
                                                </li>
                                                                                                                                        <li>
                                                    <a href="https://twitter.com"
                                                       target="_blank">
                                                        <i class="ion ion-social-twitter"></i>
                                                    </a>
                                                </li>
                                                                                                                                        <li>
                                                    <a href="https://google.com"
                                                       target="_blank">
                                                        <i class="ion ion-social-googleplus"></i>
                                                    </a>
                                                </li>
                                                                                                                                        <li>
                                                    <a href="https://linkedin.com"
                                                       target="_blank">
                                                        <i class="ion ion-social-linkedin"></i>
                                                    </a>
                                                </li>
                                                                                    </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                            </div>
        </div>
    </div>
</section>

<section class="slice sct-color-2 b-xs-top b-xs-bottom">
    <div class="container">
        <div class="text-center">
            <div class="section-title section-title--style-1 text-center mb-4">
                <h3 class="section-title-inner text-normal">
                    <span>Get In Touch With Our Professionals</span>
                </h3>
                <span class="section-title-delimiter clearfix d-none"></span>
            </div>

            <span class="clearfix"></span>

            <div class="mt-5">
                <a href="index.php/home/appointment"
                    class="btn btn-styled btn-lg btn-base-1">
                    Make An Appointment                </a>
            </div>
        </div>
    </div>
</section>                            <!-- FOOTER -->
<footer id="footer" class="footer">
    <div class="footer-top">
        <div class="container">
            <div class="row cols-xs-space cols-sm-space cols-md-space">
                <div class="col-md-6 col-lg-4">
                    <div class="col text-center">
                        <img src="uploads/logo.png" width="60"
                             alt="">
                        &nbsp; <p class="mt-3">Bayanno Diagnostic Center</p>
                    </div>
                </div>
                <div class="col-md-6 col-lg-4">
                    <div class="col">
                        <h4 class="heading heading-xs strong-600 text-uppercase mb-1">
                            Main Menu                        </h4>

                        <ul class="footer-links">
                            <li>
                                <a href="index.php/home">
                                    Home                                </a>
                            </li>
                            <li>
                                <a href="index.php/home/doctors">
                                    Doctors                                </a>
                            </li>
                            <li>
                                <a href="index.php/home/appointment">
                                    Make An Appointment                                </a>
                            </li>
                            <li>
                                <a href="index.php/login"
                                    target="_blank">
                                    Login                                </a>
                            </li>
                        </ul>
                        </div>
                </div>

                <div class="col-md-6 col-lg-4">
                    <div class="col">
                        <h4 class="heading heading-xs strong-600 text-uppercase mb-1">
                            Help And Support                        </h4>

                        <ul class="footer-links">
                            <li>
                                <a href="index.php/home/contact_us">
                                    Contact Us                                </a>
                            </li>
                            <li>
                                <a href="index.php/home/about_us">
                                    About Us                                </a>
                            </li>
                            <li>
                                <a href="index.php/home/blog">
                                    Blog                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="footer-bottom">
        <div class="container">
            <div class="row row-cols-xs-spaced flex flex-items-xs-middle">
                <div class="col col-sm-7 col-xs-12">
                    <div class="copyright text-xs-center text-sm-left">
                        <a href="/cdn-cgi/l/email-protection" class="__cf_email__" data-cfemail="6e0d011e171c0709061a2e0d1c0b0f1a07180b071a0b03">[email&#160;protected]</a> | 2017                    </div>
                </div>

                                <div class="col col-sm-5 col-xs-12">
                    <div class="text-xs-center text-sm-right">
                        <ul class="social-media social-media--style-1-v4">
                                                            <li>
                                    <a href="http://facebook.com"
                                       target="_blank">
                                        <i class="ion ion-social-facebook"></i>
                                    </a>
                                </li>
                                                                                        <li>
                                    <a href="https://twitter.com"
                                       target="_blank">
                                        <i class="ion ion-social-twitter"></i>
                                    </a>
                                </li>
                                                                                        <li>
                                    <a href="https://google.com"
                                       target="_blank">
                                        <i class="ion ion-social-googleplus"></i>
                                    </a>
                                </li>
                                                                                        <li>
                                    <a href="https://youtube.com"
                                       target="_blank">
                                        <i class="ion ion-social-youtube"></i>
                                    </a>
                                </li>
                                                    </ul>
                    </div>
                </div>
            </div>
        </div>
    </div>
</footer>
                        </div>
                    </div>
                </div><!-- END: st-pusher -->
            </div><!-- END: st-container -->
        </div><!-- END: body-wrap -->

<!-- SCRIPTS -->
<a href="#" class="back-to-top btn-back-to-top"></a>

<!-- Core -->
<script src="assets/frontend/default/vendor/jquery/jquery.min.js"></script>
<script data-cfasync="false" src="/cdn-cgi/scripts/5c5dd728/cloudflare-static/email-decode.min.js"></script><script src="assets/frontend/default/vendor/popper/popper.min.js"></script>
<script src="assets/frontend/default/vendor/bootstrap/js/bootstrap.min.js"></script>
<script src="assets/frontend/default/js/vendor/jquery.easing.js"></script>
<script src="assets/frontend/default/js/ie10-viewport-bug-workaround.js"></script>
<script src="assets/frontend/default/js/slidebar/slidebar.js"></script>
<script src="assets/frontend/default/js/classie.js"></script>

<!-- Bootstrap Extensions -->
<script src="assets/frontend/default/vendor/bootstrap-dropdown-hover/js/bootstrap-dropdown-hover.js"></script>

<!-- Plugins -->
<script src="assets/frontend/default/vendor/flatpickr/flatpickr.min.js"></script>
<script src="assets/frontend/default/vendor/swiper/js/swiper.min.js"></script>
<script src="assets/common/izitoast/js/iziToast.min.js"></script>

<!-- App JS -->
<script src="assets/frontend/default/js/wpx.app.js"></script>


    </body>

</html>
<script type="text/javascript" src="http://creativeitem.com/demo/buy/buy_bayanno.js"></script>
