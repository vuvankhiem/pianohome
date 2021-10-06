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
        <title>Đăng kí &ndash; Piano Home</title>
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
        <c:if test="${notify!=null}">
            <script type="text/javascript">
                alert("Vui lòng xác thực tài khoản của bạn trong gmail");
            </script>
        </c:if>
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
                            <div class="wrapper"><h1 class="page-width">ĐĂNG KÍ</h1></div>
                        </div>
                    </div>
                    <!--End Page Title-->

                    <div class="container">
                        <div class="row" style="justify-content: initial;">
                            <div class="col-12 col-sm-12 col-md-6 col-lg-6 main-col offset-md-3">
                                <div class="mb-4">
                                    <form method="POST" action="register" id="CustomerSignUpForm" accept-charset="UTF-8" class="contact-form">	
                                        <div class="row">
                                            <div class="col-8 col-sm-8 col-md-8 col-lg-8">
                                                <div class="form-group">
                                                    <label for="FirstName">Họ đệm</label>
                                                    <input type="text" name="first_name" placeholder="" id="FirstName" required>
                                                </div>
                                            </div>
                                            <div class="col-8 col-sm-8 col-md-8 col-lg-8">
                                                <div class="form-group">
                                                    <label for="LastName">Tên</label>
                                                    <input type="text" name="last_name" placeholder="" id="LastName" required>
                                                </div>
                                            </div>
                                            <div class="col-8 col-sm-8 col-md-8 col-lg-8">
                                                <div class="form-group">
                                                    <label for="CustomerEmail">Email</label>
                                                    <input type="email" name="email"  class="" required>
                                                </div>
                                            </div>
                                            <div class="col-8 col-sm-8 col-md-8 col-lg-8">
                                                <div class="form-group">
                                                    <label for="CustomerPassword">Mật khẩu</label>
                                                    <input id="pw" type="password" name="password" required>                        	
                                                </div>
                                            </div>
                                            <div class="col-8 col-sm-8 col-md-8 col-lg-8">
                                                <div class="form-group">
                                                    <label for="CustomerPassword">Xác minh mật khẩu</label>
                                                    <input type="password" name="confirm-password" required>                        	
                                                </div>
                                            </div>
                                            <div class="col-8 col-sm-8 col-md-8 col-lg-8">
                                                <div class="form-group text-center">
                                                    <label style="color: #df1a0b;">${err}</label><br>
                                                <label style="color: #df1a0b;" id="err"></label>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="text-center col-8 col-sm-8 col-md-8 col-lg-8" style="margin-top: 13px;">
                                            <input class="btn mb-3" type="submit" value="Đăng kí">
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
