<%-- 
    Document   : checkout
    Created on : Jul 8, 2021, 9:50:57 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

    <!-- belle/checkout.html   11 Nov 2019 12:44:33 GMT -->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Thanh toán &ndash; Piano Home</title>
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
            <jsp:include page="layout/header.jsp"></jsp:include>
                <!--Body Content-->
                <div id="page-content" style="padding-top: 70px;">
                    <!--Page Title-->
                    <div class="page section-header text-center">
                        <div class="page-title">
                            <div class="wrapper"><h1 class="page-width">THANH TOÁN</h1></div>
                        </div>
                    </div>
                    <!--End Page Title-->

                    <div class="container">
                        <div class="row" style="align-items: initial;">


                            <div class="row billing-fields" style="align-items: initial;">
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 sm-margin-30px-bottom">
                                    <div class="create-ac-content bg-light-gray padding-20px-all">
                                        <form method="POST" action="check-out">
                                            <fieldset>
                                                <h2 class="login-title mb-3">Chi tiết hóa đơn</h2>
                                                <div class="row">
                                                    <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                                        <label for="input-firstname">Họ đệm <span class="required-f">*</span></label>
                                                        <input name="firstName" value="${sessionScope.us.firstName}" id="input-firstname" type="text" required>
                                                </div>
                                                <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                                    <label for="input-lastname">Tên <span class="required-f">*</span></label>
                                                    <input name="lastName" value="${sessionScope.us.lastName}" id="input-lastname" type="text" required>
                                                </div>
                                            </div>
                                            <div class="row">
                                                <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                                    <label for="input-email">E-Mail <span class="required-f">*</span></label>
                                                    <input name="email" value="${sessionScope.us.email}" id="input-email" type="email" required>
                                                </div>
                                                <div class="form-group col-md-6 col-lg-6 col-xl-6 required">
                                                    <label for="input-telephone">Số điện thoại <span class="required-f">*</span></label>
                                                    <input name="phone" id="input-telephone" type="tel" required>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <fieldset>
                                            <div class="row">

                                                <div class="form-group col-md-12 col-lg-12 col-xl-12 required">
                                                    <label for="input-address-1">Địa chỉ <span class="required-f">*</span></label>
                                                    <input name="address" value="" id="input-address-1" type="text">
                                                </div>
                                            </div>

                                        </fieldset>
                                        <fieldset>
                                            <div class="row">
                                                <div class="form-group col-md-12 col-lg-12 col-xl-12">
                                                    <label for="input-company">Ghi chú</label>
                                                    <textarea name="orderNote"  class="form-control resize-both" rows="3" ></textarea>
                                                </div>
                                            </div>
                                        </fieldset>
                                        <fieldset style="display: flex;align-items: center;">
                                            <div style="width: 68%;color: red;text-align: center;">${err}</div>

                                            <div class="order-button-payment" style="display: flex;justify-content: flex-end; width: 32%;">
                                                <button class="btn" type="submit">ĐẶT HÀNG</button>
                                            </div>
                                        </fieldset>
                                    </form>
                                </div>
                            </div>

                            <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12">
                                <div class="your-order-payment">
                                    <div class="your-order">
                                        <h2 class="order-title mb-4">Đơn hàng của bạn</h2>

                                        <div class="table-responsive-sm order-table"> 
                                            <table class="bg-white table table-bordered table-hover text-center">
                                                <thead>
                                                    <tr>
                                                        <th class="text-left">Tên sản phẩm</th>
                                                        <th>Đơn giá</th>
                                                        <th>Số lượng</th>
                                                        <th>Tổng giá</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <c:forEach items="${sessionScope.listCart}" var="o">
                                                        <tr>
                                                            <td class="text-left">${o.productDTO.productName}</td>
                                                            <td class="price">${o.totalPrice/o.quanty}</td>
                                                            <td>${o.quanty}</td>
                                                            <td class="price">${o.totalPrice}</td>
                                                        </tr>
                                                    </c:forEach>
                                                </tbody>
                                                <tfoot class="font-weight-600">

                                                    <tr>
                                                        <td colspan="3" class="text-right">Tổng giá</td>
                                                        <td class="price" style="color: #ea5144;">${sessionScope.totalPrice}</td>
                                                    </tr>
                                                </tfoot>
                                            </table>
                                        </div>
                                    </div>





                                </div>
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

    <!-- belle/checkout.html   11 Nov 2019 12:44:33 GMT -->
</html>
