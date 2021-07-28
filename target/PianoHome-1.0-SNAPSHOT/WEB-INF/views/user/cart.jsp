<%-- 
    Document   : cart
    Created on : Jul 7, 2021, 5:28:36 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <!-- belle/cart-variant2.html   11 Nov 2019 12:44:32 GMT -->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Giỏ hàng &ndash; Piano Home</title>
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
        <style type="text/css">
            .clear-cart{
                color: white;
                background-color: #409da0;
                cursor: pointer;
                width: 137px;
                float: right;
                transition: 0.3s;
                border: none;
                text-align: center;
            }
            .clear-cart:hover{
                background-color: #b33737;
                transition: 0.3s;
            }
        </style>
    </head>
    <body class="page-template belle">
        <div class="pageWrapper">

            <jsp:include page="layout/header.jsp"></jsp:include>

                <!--Body Content-->
                <div id="page-content" style="padding-top: 70px;">
                    <!--Page Title-->
                    <div class="page section-header text-center">
                        <div class="page-title">
                            <div class="wrapper"><h1 class="page-width">Your cart</h1></div>
                        </div>
                    </div>
                    <!--End Page Title-->

                    <div class="container">
                        <div class="row" style="align-items: initial;">
                            <div class="col-12 col-sm-12 col-md-9 col-lg-9 main-col">
                                <form action="#" method="post" class="cart style2">
                                    <div class="wishlist-table table-content table-responsive">
                                        <table>
                                            <thead class="cart__row cart__header custom-th">
                                                <tr>

                                                    <th colspan="2" class="text-center">Sản phẩm</th>
                                                    <th class="text-center">Đơn giá</th>
                                                    <th class="text-center">Số lượng</th>
                                                    <th class="text-right">Tổng giá</th>
                                                    <th class="action">&nbsp;</th>
                                                    <th class="action">&nbsp;</th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                            <c:if test="${sessionScope.listCart!=null&&sessionScope.listCart.size()!=0}">    
                                                <c:forEach begin="0" end="${sessionScope.listCart.size()-1}" var="i">
                                                    <tr class="cart__row border-bottom line1 cart-flex border-top">
                                                        <td class="cart__image-wrapper cart-flex-item">
                                                            <a href="product-detail?id=${sessionScope.listCart.get(i).productDTO.productID}">
                                                                <img class="cart__image" src="${sessionScope.listCart.get(i).productDTO.image1}">
                                                            </a>
                                                        </td>
                                                        <td class="cart__meta small--text-left cart-flex-item">
                                                            <div class="list-view-item__title">
                                                                <a href="product-detail?id=${sessionScope.listCart.get(i).productDTO.productID}">${sessionScope.listCart.get(i).productDTO.productName}</a>
                                                            </div>
                                                        </td>
                                                        <td class="cart__price-wrapper cart-flex-item">
                                                            <span class="money price">${sessionScope.listCart.get(i).productDTO.price}</span>
                                                            <c:if test="${sessionScope.listCart.get(i).productDTO.sale!=0}">
                                                                (-${sessionScope.listCart.get(i).productDTO.sale}%)
                                                            </c:if>
                                                        </td>
                                                        <td class="cart__update-wrapper cart-flex-item text-right">
                                                            <div class="cart__qty text-center">
                                                                <div class="qtyField">
                                                                    <input type="hidden" value="${sessionScope.listCart.get(i).productDTO.productID}" class="qv_id">
                                                                    <a class="qtyBtn minus" href="javascript:void(0);"><i class="icon icon-minus"></i></a>
                                                                    <input class="cart__qty-input qty qv_quanty" type="text"value="${sessionScope.listCart.get(i).quanty}" pattern="[0-9]*">
                                                                    <a class="qtyBtn plus" href="javascript:void(0);"><i class="icon icon-plus"></i></a>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td class="text-right  cart-price">
                                                            <div><span class="money price">${sessionScope.listCart.get(i).totalPrice}</span></div>
                                                        </td>
                                                        <td class="text-center ">
                                                            <a onclick="deleteCart(${sessionScope.listCart.get(i).productDTO.productID})" class="btn btn--secondary cart__remove" title="Remove tem">
                                                                <i class="icon icon anm anm-times-l"></i>
                                                            </a>
                                                        </td>
                                                        <td class="text-center ">
                                                            <span class="btn--link cart-update" style="cursor: pointer;" onclick="updateCart(${i})">
                                                                <i class="fa fa-refresh"></i> Update
                                                            </span>
                                                        </td>
                                                    </tr>
                                                </c:forEach>
                                            </c:if>
                                            <c:if test="${sessionScope.listCart==null||sessionScope.listCart.size()==0}">
                                                <tr>
                                                    <th colspan="7" style="text-align: center;background:none;">No Product</th>
                                                </tr>
                                            </c:if>    
                                        </tbody>
                                        <tfoot>
                                            <tr>
                                                <td colspan="3" class="text-left ">

                                                    <a href="shop" class=""><i style="margin-right: 7px;" class="icon icon-arrow-circle-left"></i>Tiếp tục mua hàng</a></td>
                                                <td colspan="4" class="text-right">
                                                    <p style="cursor: pointer;" class="btn--secondary btn--small clear-cart " onclick="deleteAllCart()">XÓA GIỎ HÀNG</p>
                                                </td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                </div>

                            </form>                   
                        </div>
                        <div class="col-12 col-sm-12 col-md-3 col-lg-3 cart__footer">

                            <div class="solid-border">
                                <div class="row">
                                    <span class="col-12 col-sm-6 cart__subtotal-title"><strong>Tổng tiền</strong></span>
                                    <span class="col-12 col-sm-6 cart__subtotal-title cart__subtotal text-right"><span class="money price" style="color: #eb6459;">${sessionScope.totalPrice}</span></span>
                                </div>
                                <div class="cart__shipping">Shipping &amp; taxes calculated at checkout</div>
                                <p class="cart_tearm">
                                    <label>
                                        <input type="checkbox" name="tearm" id="cartTearm" class="checkbox" value="tearm" required="">
                                        I agree with the terms and conditions</label>
                                </p>
                                <a href="check-out" id="cartCheckout" class="btn btn--small-wide checkout">THANH TOÁN</a>
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

    <!-- belle/cart-variant2.html   11 Nov 2019 12:44:32 GMT -->
</html>
