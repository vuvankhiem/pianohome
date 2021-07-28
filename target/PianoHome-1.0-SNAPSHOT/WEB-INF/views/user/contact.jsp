<%-- 
    Document   : contact
    Created on : Jul 9, 2021, 3:31:09 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

    <!-- belle/contact-us.html   11 Nov 2019 12:44:39 GMT -->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Liên hệ &ndash; Piano Home</title>
        <meta name="description" content="description">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/us/assets/images/favicon/favicon.png" />
        <!-- Plugins CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/us/assets/css/plugins.css">
        <!-- Bootstap CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/us/assets/css/bootstrap.min.css">
        <!-- Main Style CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/us/assets/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/us/assets/css/responsive.css">
    </head>
    <body class="contact-template page-template belle">
        <div class="pageWrapper">
            <jsp:include page="layout/header.jsp"></jsp:include>

                <!--Body Content-->
                <div id="page-content"style="padding-top: 70px;">
                    <!--Page Title-->
                    <div class="page section-header text-center">
                        <div class="page-title">
                            <div class="wrapper"><h1 class="page-width">Liên hệ</h1></div>
                        </div>
                    </div>
                    <!--End Page Title-->
                    <div class="map-section map">
                        <iframe src="https://www.google.com/maps/embed/v1/place?key=AIzaSyAyT0VoymXl1dE6r51Hhvcbd49KOKKgiEU&q=Giáo+Xứ+Hà+Thao,+Thao+Nội,+Sơn+Hà,+Phú+Xuyên,+Hà+Nội,+Việt+Nam" height="350" allowfullscreen></iframe>
                        <div class="container">
                            <div class="row">
                                <div class="map-section__overlay-wrapper">
                                    <div class="map-section__overlay">
                                        <h3 class="h4">Giờ mở của</h3>
                                        <div class="rte-setting">
                                            <p>Thứ hai - Thứ bảy : 9:00 - 23:00<br>Chủ nhật: 11:00 - 17:00</p>
                                        </div>
                                        <p><a href="https://www.google.com/maps/dir//Gi%C3%A1o+X%E1%BB%A9+H%C3%A0+Thao,+Thao+N%E1%BB%99i,+S%C6%A1n+H%C3%A0,+Ph%C3%BA+Xuy%C3%AAn,+H%C3%A0+N%E1%BB%99i,+Vi%E1%BB%87t+Nam/@20.7479923,105.8889931,14z/data=!4m16!1m6!3m5!1s0x3135b63faee9ad3d:0x5d2d25052c7cdcfb!2zR2nDoW8gWOG7qSBIw6AgVGhhbw!8m2!3d20.7452533!4d105.9019643!4m8!1m0!1m5!1m1!1s0x3135b63faee9ad3d:0x5d2d25052c7cdcfb!2m2!1d105.9019643!2d20.7452533!3e3" class="btn btn--secondary btn--small" target="_blank">Chỉ đường</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="bredcrumbWrap">
                        <div class="container breadcrumbs">
                            <a href="home" title="Trở về trang chủ">Trang chủ</a><span aria-hidden="true">›</span><span>Liên hệ</span>
                        </div>
                    </div>

                    <div class="container">
                        <div class="row">
                            <div class="col-12 col-sm-12 col-md-8 col-lg-8 mb-4">
                                <div class="formFeilds contact-form form-vertical">
                                    <form action="contact-us" method="post"  id="contact_form" class="contact-form">	
                                    <div class="row">
                                        <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                                            <div class="form-group">
                                                <input type="text" id="ContactFormName" name="name" placeholder="Name" value="${sessionScope.us.lastName}" required>
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                                            <div class="form-group">
                                                <input type="email" id="ContactFormEmail" name="email" placeholder="Email" value="${sessionScope.us.email}" required>                        	
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                                            <div class="form-group">
                                                <input required="" type="tel" id="ContactFormPhone" name="phone" pattern="[0-9\-]*" placeholder="Phone Number" value="">
                                            </div>
                                        </div>
                                        <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                                            <div class="form-group">
                                                <input required="" type="text" id="ContactSubject" name="subject" placeholder="Subject" value="">
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                            <div class="form-group">
                                                <textarea required="" rows="10" id="ContactFormMessage" name="message" placeholder="Your Message"></textarea>
                                            </div>
                                        </div>  
                                    </div>
                                    <div class="row">
                                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                            <input type="submit" class="btn" value="Send Message">
                                        </div>
                                    </div>
                                </form>
                            </div>
                        </div>
                        <div class="col-12 col-sm-12 col-md-4 col-lg-4">
                            <div class="open-hours">
                                <strong>Giờ mở cửa</strong><br>
                                Thứ hai - Thứ bảy : 9:00 - 23:00<br>
                                Chủ nhật: 11:00 - 17:00
                            </div>
                            <hr />
                            <ul class="addressFooter">
                                <li><i class="icon anm anm-map-marker-al"></i><p>Thôn Thao Ngoại, xã Sơn Hà, huyện Phú Xuyên, Hà Nội</p></li>
                                <li class="phone"><i class="icon anm anm-phone-s"></i><p>0123456789</p></li>
                                <li class="email"><i class="icon anm anm-envelope-l"></i><p>pianohome9999@gmail.com</p></li>
                            </ul>
                            <hr />
                            <ul class="list--inline site-footer__social-icons social-icons">
                                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Facebook"><i class="icon icon-facebook"></i></a></li>
                                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Twitter"><i class="icon icon-twitter"></i> <span class="icon__fallback-text">Twitter</span></a></li>
                                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Pinterest"><i class="icon icon-pinterest"></i> <span class="icon__fallback-text">Pinterest</span></a></li>
                                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Instagram"><i class="icon icon-instagram"></i> <span class="icon__fallback-text">Instagram</span></a></li>
                                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Tumblr"><i class="icon icon-tumblr-alt"></i> <span class="icon__fallback-text">Tumblr</span></a></li>
                                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on YouTube"><i class="icon icon-youtube"></i> <span class="icon__fallback-text">YouTube</span></a></li>
                                <li><a class="social-icons__link" href="#" target="_blank" title="Belle Multipurpose Bootstrap 4 Template on Vimeo"><i class="icon icon-vimeo-alt"></i> <span class="icon__fallback-text">Vimeo</span></a></li>
                            </ul>
                        </div>
                    </div>
                </div>

            </div>
            <!--End Body Content-->

            <!--Footer-->
            <jsp:include page="layout/footer.jsp"></jsp:include>
                <!--End Footer-->
                <!--Scoll Top-->
                <span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
                <!--End Scoll Top-->

                <!-- Including Jquery -->
                <script src="${pageContext.request.contextPath}/us/assets/js/vendor/jquery-3.3.1.min.js"></script>
            <script src="${pageContext.request.contextPath}/us/assets/js/vendor/jquery.cookie.js"></script>
            <script src="${pageContext.request.contextPath}/us/assets/js/vendor/modernizr-3.6.0.min.js"></script>
            <script src="${pageContext.request.contextPath}/us/assets/js/vendor/wow.min.js"></script>
            <!-- Including Javascript -->
            <script src="${pageContext.request.contextPath}/us/assets/js/custom.js"></script>
            <script src="${pageContext.request.contextPath}/us/assets/js/bootstrap.min.js"></script>
            <script src="${pageContext.request.contextPath}/us/assets/js/plugins.js"></script>
            <script src="${pageContext.request.contextPath}/us/assets/js/popper.min.js"></script>
            <script src="${pageContext.request.contextPath}/us/assets/js/lazysizes.js"></script>
            <script src="${pageContext.request.contextPath}/us/assets/js/main.js"></script>
        </div>
    </body>

    <!-- belle/contact-us.html   11 Nov 2019 12:44:39 GMT -->
</html>
