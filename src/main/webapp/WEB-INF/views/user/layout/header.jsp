<%-- 
    Document   : newjsp
    Created on : Jul 7, 2021, 6:22:41 AM
    Author     : Administrator
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--Search Form Drawer-->
<div class="search">
    <div class="search__form">
        <form class="search-bar__form" action="shop">
            <button class="go-btn search__button" type="submit"><i class="icon anm anm-search-l"></i></button>
            <input class="search__input" type="search" name="txt_search" value="" placeholder="Tìm kiếm ..." aria-label="Search" autocomplete="off">
        </form>
        <button type="button" class="search-trigger close-btn"><i class="anm anm-times-l"></i></button>
    </div>
</div>
<!--End Search Form Drawer-->
<!--Top Header-->
<div class="top-header">
    <div class="container-fluid">
        <div class="row" style="height: 38px;">
            <div class="col-10 col-sm-8 col-md-5 col-lg-4">
                <p class="phone-no">
                    <sec:authorize access="isAuthenticated()">
                        Chào mừng ${sessionScope.us.firstName} ${sessionScope.us.lastName}
                    </sec:authorize>
                </p>
            </div>
            <div class="col-sm-4 col-md-4 col-lg-4 d-none d-lg-none d-md-block d-lg-block">
                <div class="text-center">
                    <p class="top-header_middle-text">
                        <i class="anm anm-phone-s"></i> +84 0123456789
                    </p>
                </div>
            </div>
            <div class="col-2 col-sm-4 col-md-3 col-lg-4 text-right">
                <span class="user-menu d-block d-lg-none" style="color: black;"><i class="anm anm-user-al" aria-hidden="true"></i></span>
                <ul class="customer-links list-inline">

                    <sec:authorize access="isAuthenticated()">
                        <li>
                            <a href="log-out">Đăng xuất</a>
                        </li>

                    </sec:authorize>
                    <sec:authorize access="!isAuthenticated()">
                        <li>
                            <a href="login-page">Đăng nhập</a>
                        </li>
                        <li>
                            <a href="register">Đăng kí</a>
                        </li>
                    </sec:authorize>
                    <li>
                        <a href="wish-list" title="Wishlist">
                            Wish List
                            (<span style="color: #e95144;">${sessionScope.wishSize==null?"0":sessionScope.wishSize}</span>)
                        </a>
                    </li>
                </ul>
            </div>
        </div>
    </div>
</div>
<!--End Top Header-->
<!--Header-->
<div class="header-wrap classicHeader animated d-flex">
    <div class="container-fluid">        
        <div class="row align-items-center">
            <!--Desktop Logo-->
            <div class="logo col-md-2 col-lg-2 d-none d-lg-block" style="padding-left: 0;">
                <a href="home">
                    <img src="${pageContext.request.contextPath}/us/assets/images/logo.png"/>
                </a>
            </div>
            <!--End Desktop Logo-->
            <div class="col-2 col-sm-3 col-md-3 col-lg-8">
                <div class="d-block d-lg-none">
                    <button type="button" class="btn--link site-header__menu js-mobile-nav-toggle mobile-nav--open">
                        <i class="icon anm anm-times-l"></i>
                        <i class="anm anm-bars-r"></i>
                    </button>
                </div>
                <!--Desktop Menu-->
                <nav class="grid__item" id="AccessibleNav"><!-- for mobile -->
                    <ul id="siteNav" class="site-nav medium center hidearrow">
                        <li class="lvl1 parent megamenu"><a href="home">Trang chủ<i class="anm anm-angle-down-l"></i></a>

                        </li>
                        <li class="lvl1 parent megamenu"><a href="shop">Cửa hàng<i class="anm anm-angle-down-l"></i></a>

                        </li>
                        <li class="lvl1 parent megamenu"><a href="about-us">Giới thiệu<i class="anm anm-angle-down-l"></i></a>

                        </li>
                        <li class="lvl1 parent megamenu"><a href="news">Tin tức<i class="anm anm-angle-down-l"></i></a>

                        </li>
                        <li class="lvl1 parent megamenu"><a href="contact-us">Liên hệ<i class="anm anm-angle-down-l"></i></a>

                        </li>
                    </ul>
                </nav>
                <!--End Desktop Menu-->
            </div>
            <!--Mobile Logo-->
            <div class="col-6 col-sm-6 col-md-6 col-lg-2 d-block d-lg-none mobile-logo">
                <div class="logo" style="padding-left: 0; margin-right: -55px; padding-top: 3px;">
                    <a href="home">
                        <img style="max-width: 111%;" src="${pageContext.request.contextPath}/us/assets/images/logo.png"/>
                    </a>
                </div>
            </div>
            <!--Mobile Logo-->

            <div class="col-4 col-sm-3 col-md-3 col-lg-2">

                <div class="site-cart">

                    <a class="site-header__cart" title="Cart" style="cursor: pointer;">
                        <i class="icon anm anm-bag-l"></i>
                        <span id="CartCount" class="site-header__cart-count" data-cart-render="item_count">
                            ${sessionScope.count==null?"0":sessionScope.count}
                        </span>

                    </a>

                    <!--Minicart Popup-->
                    <div id="header-cart" class="block block-cart">
                        <ul class="mini-products-list">
                            <c:forEach items="${sessionScope.listCart}" var="o">

                                <li class="item">
                                    <a class="product-image" href="product-detail?id=${o.productDTO.productID}">
                                        <img src="${o.productDTO.image1}" title="" />
                                    </a>
                                    <div class="product-details">
                                        <a style="cursor: pointer;" onclick="deleteCart(${o.productDTO.productID})" class="remove"><i class="anm anm-times-l" aria-hidden="true"></i></a>
                                        <a class="pName" href="product-detail?id=${o.productDTO.productID}">${o.productDTO.productName}</a>
                                        <div class="variant-cart">${o.productDTO.categoryName}</div>
                                        <div class="wrapQtyBtn">
                                            <div class="qtyField">
                                                <span class="label">Số lượng : ${o.quanty}</span>

                                            </div>
                                        </div>
                                        <div class="priceRow">
                                            <div class="product-price">
                                                <span class="money price">${o.totalPrice}</span>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </c:forEach>
                        </ul>
                        <div class="total">
                            <div class="total-in">
                                <span class="label">
                                    Tổng tiền
                                </span>
                                <span class="product-price">
                                    <span class="money price" style="color: #eb6459;">${sessionScope.totalPrice}</span>
                                </span>

                            </div>
                            <div class="buttonSet text-center">
                                <a href="cart" class="btn btn-secondary btn--small">Xem giỏ hàng</a>
                                <a href="check-out" class="btn btn-secondary btn--small">Thanh toán</a>
                            </div>
                        </div>
                    </div>
                    <!--EndMinicart Popup-->
                </div>

                <div class="site-header__search">
                    <button style="margin-right: -22px;" type="button" class="search-trigger"><i class="icon anm anm-search-l"></i></button>
                </div>
            </div>
        </div>
    </div>
</div>
<!--End Header-->
<!--Mobile Menu-->
<div class="mobile-nav-wrapper" role="navigation">
    <div class="closemobileMenu"><i class="icon anm anm-times-l pull-right"></i> Close Menu</div>
    <ul id="MobileNav" class="mobile-nav">
        <li class="lvl1 parent megamenu"><a href="${pageContext.request.contextPath}/home">Trang chủ</a>

        </li>
        <li class="lvl1 parent megamenu"><a href="${pageContext.request.contextPath}/shop">Cửa hàng</a>

        </li>
        <li class="lvl1 parent megamenu"><a href="${pageContext.request.contextPath}/about-us">Giới thiệu</a>

        </li>
        <li class="lvl1 parent megamenu"><a href="${pageContext.request.contextPath}/news">Tin tức</a>

        </li>
        <li class="lvl1 parent megamenu"><a href="${pageContext.request.contextPath}/contact-us">Liên hệ</a>

        </li>

    </ul>
</div>
<!--End Mobile Menu-->
