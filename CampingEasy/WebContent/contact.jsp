<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Dorne - Directory &amp; Listing Template | Contact</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="style.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="css/responsive/responsive.css" rel="stylesheet">

</head>

<body>
    <!-- Preloader -->
    <div id="preloader">
        <div class="dorne-load"></div>
    </div>

    <!-- ***** Search Form Area ***** -->
    <div class="dorne-search-form d-flex align-items-center">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="search-close-btn" id="closeBtn">
                        <i class="pe-7s-close-circle" aria-hidden="true"></i>
                    </div>
                    <form action="#" method="get">
                        <input type="search" name="caviarSearch" id="search" placeholder="Search Your Desire Destinations or Events">
                        <input type="submit" class="d-none" value="submit">
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- ***** Header Area Start ***** -->
    <jsp:include page="/common/top.jsp"></jsp:include>
    <!-- ***** Header Area End ***** -->

    <!-- ***** Breadcumb Area Start ***** -->
    <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero.jpg)">
    </div>
    <!-- ***** Breadcumb Area End ***** -->

    <!-- ***** Contact Area Start ***** -->
    <div class="dorne-contact-area d-md-flex" id="contact">
        <!-- Contact Form Area -->
        <div class="contact-form-area equal-height">
            <div class="contact-text">
                <h4>Hello, Get in touch with us</h4>
                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam ac nibh sed mi ullamcorper rhoncus. Curabitur pulvinar vel augue sit amet vestibulum. Proin tempus lacus porta lorem blandit aliquam eget quis ipsum. Vivamus accumsan consequat ligula non volutpat. Sed mollis orci non cursus vestibulum. Pellentesque vitae est a augue laoreet venenatis sed eu felis. Sed cursus magna nec turpis ullamcorper, eget rutrum felis egestas. Nunc odio ex, fermentum efficitur nunc vitae, efficitur hendrerit diam. Lorem ipsum dolor sit amet, consectetur.</p>
                <div class="contact-info d-lg-flex">
                    <div class="single-contact-info">
                        <h6><i class="fa fa-map-signs" aria-hidden="true"></i> Main Avenue Soho, NY</h6>
                        <h6><i class="fa fa-map-signs" aria-hidden="true"></i> No. 25-33</h6>
                    </div>
                    <div class="single-contact-info">
                        <h6><i class="fa fa-envelope-o" aria-hidden="true"></i> contact@yourbusiness.com</h6>
                        <h6><i class="fa fa-phone" aria-hidden="true"></i> +34 567 22478 49567</h6>
                    </div>
                </div>
            </div>
            <div class="contact-form">
                <div class="contact-form-title">
                    <h6>Contact Business</h6>
                </div>
                <form action="#">
                    <div class="row">
                        <div class="col-12 col-md-6">
                            <input type="text" name="name" class="form-control" placeholder="Your Name">
                        </div>
                        <div class="col-12 col-md-6">
                            <input type="email" name="email" class="form-control" placeholder="Email Address">
                        </div>
                        <div class="col-12">
                            <input type="text" name="subject" class="form-control" placeholder="Subject">
                        </div>
                        <div class="col-12">
                            <textarea name="message" class="form-control" id="Message" cols="30" rows="10" placeholder="Your Message"></textarea>
                        </div>
                        <div class="col-12">
                            <button type="submit" class="btn dorne-btn">Send</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- Map Area -->
        <div class="dorne-map-area equal-height">
            <div id="googleMap"></div>
        </div>
    </div>
    <!-- ***** Contact Area End ***** -->

    <!-- ****** Footer Area Start ****** -->
    <jsp:include page="/common/bottom.jsp"></jsp:include>
    <script src="js/google-map/map-active.js"></script>
    <!-- ****** Footer Area End ****** -->
</body>

</html>