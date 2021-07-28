<%-- 
    Document   : wishlist
    Created on : Jul 9, 2021, 2:00:03 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

    <!-- belle/wishlist.html   11 Nov 2019 12:22:27 GMT -->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Danh sách yêu thích &ndash; Piano Home</title>
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
                            <div class="wrapper"><h1 class="page-width">DANH SÁCH YÊU THÍCH</h1></div>
                        </div>
                    </div>
                    <!--End Page Title-->

                    <div class="container">
                        <div class="row">
                            <div class="col-12 col-sm-12 col-md-12 col-lg-12 main-col">
                                <form action="#">
                                    <div class="wishlist-table table-content table-responsive">
                                        <table class="table table-bordered">
                                            <thead>
                                                <tr>
                                                    <th class="product-name text-center alt-font">Xóa</th>
                                                    <th class="product-price text-center alt-font">Hình ảnh</th>
                                                    <th class="product-name alt-font">Tên sản phẩm</th>
                                                    <th class="product-price text-center alt-font">Giá bán</th>
                                                    <th class="stock-status text-center alt-font">Danh mục</th>
                                                    <th class="product-subtotal text-center alt-font">Thêm giỏ hàng</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:forEach items="${sessionScope.listW}" var="o">
                                                <tr>
                                                    <td class="product-remove text-center" valign="middle"><a onclick="deleteWish(${o.productID})"><i class="icon icon anm anm-times-l"></i></a></td>
                                                    <td class="product-thumbnail text-center">
                                                        <a href="product-detail?id=${o.productID}"><img src="${o.image1}" alt="" title="" /></a>
                                                    </td>
                                                    <td class="product-name"><h4 class="no-margin"><a href="product-detail?id=${o.productID}">${o.productName}</a></h4></td>
                                                    <td class="product-price text-center"><span class="amount price">${o.price}</span></td>
                                                    <td class="stock text-center">
                                                        <span class="in-stock"><a href="shop?cateid=${o.categoryID}">${o.categoryName}</a></span>
                                                    </td>
                                                    <td class="product-subtotal text-center"><span onclick="addCart(${o.productID}, 1)" class="btn btn-small" style="cursor: pointer;">Thêm giỏ hàng</span></td>
                                                </tr>
                                            </c:forEach> 
                                            <tr>
                                                <td colspan="6" class="product-subtotal text-center"><span onclick="deleteAllWish()" class="btn btn-small" style="cursor: pointer;">XÓA TẤT CẢ</span></td>

                                            </tr>
                                        </tbody>
                                    </table>
                                </div>
                            </form>                   
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

    <!-- belle/wishlist.html   11 Nov 2019 12:22:27 GMT -->
</html>
