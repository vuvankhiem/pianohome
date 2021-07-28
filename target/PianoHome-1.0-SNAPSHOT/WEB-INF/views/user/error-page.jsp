<%-- 
    Document   : 403
    Created on : Jul 4, 2021, 11:48:40 PM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

    <!-- belle/404.html   11 Nov 2019 12:45:12 GMT -->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Trang lỗi &ndash; Piano Home</title>
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
    <body class="page-template lookbook-template error-page belle">
        <div class="pageWrapper">
            <jsp:include page="layout/header.jsp"></jsp:include>

            <!--Body Content-->
            <div id="page-content" style="padding-top: 70px;">        
                <!-- Lookbook Start -->
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">	
                            <div class="empty-page-content text-center">
                                <h1>${err1}</h1>
                                <p>${err2}</p>
                                <p><a href="${pageContext.request.contextPath}/shop" class="btn btn--has-icon-after">Tiếp tục mua hàng <i class="fa fa-caret-right" aria-hidden="true"></i></a></p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Lookbook Start -->
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
            <script src="${pageContext.request.contextPath}/us/assets/js/vendor/masonry.js" type="text/javascript"></script>
            <!-- Including Javascript -->
            <script src="${pageContext.request.contextPath}/us/assets/js/custom.js"></script>
            <script src="${pageContext.request.contextPath}/us/assets/js/bootstrap.min.js"></script>
            <script src="${pageContext.request.contextPath}/us/assets/js/plugins.js"></script>
            <script src="${pageContext.request.contextPath}/us/assets/js/popper.min.js"></script>
            <script src="${pageContext.request.contextPath}/us/assets/js/lazysizes.js"></script>
            <script src="${pageContext.request.contextPath}/us/assets/js/main.js"></script>
        </div>
    </body>

    <!-- belle/404.html   11 Nov 2019 12:45:12 GMT -->
</html>