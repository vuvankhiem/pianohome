<%-- 
    Document   : login
    Created on : Jul 4, 2021, 5:08:07 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

    <!-- belle/login.html   11 Nov 2019 12:22:27 GMT -->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Đăng nhập &ndash; Piano Home</title>
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
    <body class="page-template belle">
        <div class="pageWrapper">
            <!--Header-->
            <jsp:include page="layout/header.jsp"></jsp:include>
                <!--End Header-->

                <!--Body Content-->
                <div id="page-content" style="padding-top: 70px;">
                    <!--Page Title-->
                    <div class="page section-header text-center">
                        <div class="page-title">
                            <div class="wrapper"><h1 class="page-width">ĐĂNG NHẬP</h1></div>
                        </div>
                    </div>
                    <!--End Page Title-->

                    <div class="container">
                        <div class="row" style="justify-content: initial;">
                            <div class="col-12 col-sm-12 col-md-6 col-lg-6 main-col offset-md-3">
                                <div class="mb-4">
                                    <form method="post" action="login" id="CustomerLoginForm" accept-charset="UTF-8" class="contact-form">	
                                        <div class="row">
                                            <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                                <div class="form-group">
                                                    <label for="CustomerEmail">Email</label>
                                                    <input type="email" name="email"  class="" required>
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                                <div class="form-group">
                                                    <label for="CustomerPassword">Mật khẩu</label>
                                                    <input type="password" name="password" required>                        	
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                                <div class="form-group" style="display: flex;justify-content: center;align-items: center;height: 100%;">
                                                    <label for="CustomerRememberme" style="margin: 0 5px 0 0;">Remember me : </label>
                                                    <input type="checkbox" name="remember-me">                        	
                                                </div>
                                            </div>
                                            <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                                <div class="form-group" style="display: flex;justify-content: center;align-items: center;height: 100%;">
                                                    <label style="color: #df1a0b;">${err}</label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="text-center col-12 col-sm-12 col-md-12 col-lg-12" style="margin-top: 13px;">
                                            <input type="submit" class="btn mb-3" value="Đăng nhập">
                                            <p class="mb-4">
                                                <a href="forgot-password" id="RecoverPassword">Quên mật khẩu ?</a> &nbsp; | &nbsp;
                                                <a href="register" id="customer_register_link">Tạo tài khoản</a>
                                            </p>
                                        </div>
                                    </div>
                                </form>
                            </div>
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

    <!-- belle/login.html   11 Nov 2019 12:22:27 GMT -->
</html>
