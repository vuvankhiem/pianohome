<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html class="no-js" lang="en">

<!-- belle/index.html 11 Nov 2019 12:16:10 GMT -->
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Trang chủ - Piano Home</title>
    <meta name="description" content="description">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Favicon -->
    <link rel="shortcut icon" href="${pageContext.request.contextPath}/us/assets/images/favicon/favicon.png"/>
    <!-- Plugins CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/us/assets/css/plugins.css">
    <!-- Bootstap CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/us/assets/css/bootstrap.min.css">
    <!-- Main Style CSS -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/us/assets/css/style.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/us/assets/css/responsive.css">
    <style type="text/css">
        .qv-label:hover {
            border: 1px solid red;
        }
    </style>
</head>
<body class="template-index belle template-index-belle">
<div class="pageWrapper">


    <!--Header-->
    <jsp:include page="layout/header.jsp"></jsp:include>
    <!--End Header -->


    <!--Body Content-->
    <div id="page-content">
        <!--Home slider-->
        <div class="slideshow slideshow-wrapper pb-section sliderFull">

            <div class="home-slideshow">

                <div class="slide">
                    <div class="blur-up lazyload bg-size">
                        <img class="blur-up lazyload bg-img"
                             src="${pageContext.request.contextPath}/us/assets/images/slide/slide1.jpg"/>
                        <div class="slideshow__text-wrap slideshow__overlay classic bottom">
                            <div class="slideshow__text-content bottom">
                                <div class="wrap-caption center">
                                    <h2 class="mega-title slideshow__title">Piano Home</h2>
                                    <span class="mega-subtitle slideshow__subtitle">Đơn vị chuyên phân phối Piano chính hãng từ các thương hiệu lớn</span>
                                    <span class="btn">
                                                <a href="shop" style="color: white;">Mua sắm ngay</a>
                                            </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="slide">
                    <div class="blur-up lazyload bg-size">
                        <img class="blur-up lazyload bg-img"
                             src="${pageContext.request.contextPath}/us/assets/images/slide/slide2.jpg"/>
                        <div class="slideshow__text-wrap slideshow__overlay classic bottom">
                            <div class="slideshow__text-content bottom">
                                <div class="wrap-caption center">
                                    <h2 class="h1 mega-title slideshow__title">Piano Home</h2>
                                    <span class="mega-subtitle slideshow__subtitle">Đảm bảo chất lượng trên từng sản phẩm</span>
                                    <span class="btn">
                                                <a href="shop" style="color: white;">Mua sắm ngay</a>
                                            </span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End Home slider-->
        <!-- HotSale -->
        <c:if test="${listSale.size()!=0}">
            <div class="product-rows section">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="section-header text-center">
                                <h2 class="h2">Hot Sale</h2>
                                <p>Những sản phẩm được khuyến mãi với giá tốt nhất</p>
                            </div>
                        </div>
                    </div>
                    <div class="grid-products">
                        <div class="row">
                            <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                                <div class="productSlider">
                                    <c:forEach items="${listSale}" var="o">
                                        <div class="col-12 item">
                                            <!-- start product image -->
                                            <div class="product-image">
                                                <!-- start product image -->
                                                <a href="product-detail?id=${o.productID}">
                                                    <!-- image -->
                                                    <img class="primary blur-up lazyload" src="${o.image1}" alt="image"
                                                         title="${o.productName}">
                                                    <!-- End image -->
                                                    <!-- Hover image -->
                                                    <img class="hover blur-up lazyload" src="${o.image2}" alt="image"
                                                         title="${o.productName}">
                                                    <!-- End hover image -->
                                                    <!-- product label -->
                                                    <div class="product-labels rectangular">
                                                        <c:if test="${o.sale!=0}">
                                                            <span class="lbl on-sale">-${o.sale}%</span>
                                                        </c:if>
                                                        <c:choose>
                                                            <c:when test="${o.status==0}">
                                                                <span class="lbl"
                                                                      style="left: 5px; background-color: #01bad4;">New</span>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <span class="lbl"
                                                                      style="left: 5px; background-color: #d4ba01;">2nd</span>

                                                            </c:otherwise>
                                                        </c:choose>
                                                    </div>
                                                    <!-- End product label -->
                                                </a>
                                                <!-- end product image -->

                                                <!-- countdown start -->
                                                <c:if test="${o.saleTime!=null}">
                                                    <input type="hidden" class="date" value="${o.saleTime}">
                                                    <input type="hidden" class="prod_id" value="${o.productID}">
                                                    <div class="saleTime desktop" data-countdown="${o.saleTime}"></div>
                                                </c:if>
                                                <!-- countdown end -->

                                                <!-- Start product button -->
                                                <div class="variants add">
                                                    <p class="btn btn-addto-cart" tabindex="0"
                                                       onclick="addCart(${o.productID}, 1)">Add To Cart</p>
                                                </div>

                                                <div class="button-set">
                                                    <a href="javascript:void(0)" onclick="quickView(${o.productID})"
                                                       title="Quick View" class="quick-view-popup quick-view"
                                                       data-toggle="modal" data-target="#content_quickview">
                                                        <i class="icon anm anm-search-plus-r"></i>
                                                    </a>
                                                    <div class="wishlist-btn">
                                                        <a class="wishlist add-to-wishlist"
                                                           onclick="addWish(${o.productID})">
                                                            <i class="icon anm anm-heart-l"></i>
                                                        </a>
                                                    </div>

                                                </div>
                                                <!-- end product button -->
                                            </div>
                                            <!-- end product image -->
                                            <!--start product details -->
                                            <div class="product-details text-center">
                                                <!-- product name -->
                                                <div class="product-name">
                                                    <a href="product-detail?id=${o.productID}">${o.productName}</a>
                                                </div>
                                                <!-- End product name -->
                                                <!-- product price -->
                                                <div class="product-price">
                                                    <c:choose>
                                                        <c:when test="${o.sale==0}">
                                                            <span class="price">${o.price}</span>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <input type="hidden" value="${o.sale}" class="sale">
                                                            <input type="hidden" value="${o.price}" class="oldPrice">
                                                            <span class="price"
                                                                  style="font-size: 12px;text-decoration: line-through;">${o.price}</span>
                                                            <span class="new-price"
                                                                  style="padding-left: 5px; color: #e95144;"></span>
                                                        </c:otherwise>
                                                    </c:choose>
                                                </div>
                                                <!-- End product price -->

                                                <div class="product-review">
                                                    <c:forEach begin="1" end="5" var="x">

                                                        <c:choose>
                                                            <c:when test="${o.rateAVG>=x}">
                                                                <i class="font-13 fa fa-star"></i>
                                                            </c:when>
                                                            <c:when test="${x-o.rateAVG==0.5}">
                                                                <i class="font-13 fa fa-star-half-full"></i>
                                                            </c:when>
                                                            <c:otherwise>
                                                                <i class="font-13 fa fa-star-o"></i>
                                                            </c:otherwise>
                                                        </c:choose>

                                                    </c:forEach>

                                                </div>

                                            </div>
                                            <!-- End product details -->
                                        </div>

                                    </c:forEach>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </c:if>
        <!-- End Hot Sale -->
        <!--Collection Tab slider-->
        <div class="tab-slider-product section">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="section-header text-center">
                            <h2 class="h2">Sản phẩm mới</h2>
                            <p>Chúng tôi luôn cập nhật những sản phẩm trên thị trường</p>
                        </div>
                        <div class="tabs-listing">
                            <ul class="tabs tabtext">
                                <c:forEach items="${sessionScope.listC}" var="o">
                                    <li class="${o.categoryID==1?"active":""}" rel="tab${o.categoryID}">
                                            ${o.categoryName}
                                    </li>
                                </c:forEach>
                            </ul>
                            <div class="tab_container">
                                <c:forEach var="i" begin="1" end="${listC.size()}">
                                    <div id="tab${i}" class="tab_content grid-products">

                                        <div class="productSlider">
                                            <c:forEach items="${listNewProduct}" var="o">
                                                <c:if test="${i==o.category.categoryID}">
                                                    <div class="col-12 item">
                                                        <!-- start product image -->
                                                        <div class="product-image">
                                                            <!-- start product image -->
                                                            <a href="product-detail?id=${o.productID}">
                                                                <!-- image -->
                                                                <img class="primary blur-up lazyload" src="${o.image1}"
                                                                     alt="image" title="${o.productName}">
                                                                <!-- End image -->
                                                                <!-- Hover image -->
                                                                <img class="hover blur-up lazyload" src="${o.image2}"
                                                                     alt="image" title="${o.productName}">
                                                                <!-- End hover image -->
                                                                <!-- product label -->
                                                                <div class="product-labels rectangular">
                                                                    <c:if test="${o.sale!=0}">
                                                                        <span class="lbl on-sale">-${o.sale}%</span>
                                                                    </c:if>
                                                                    <c:choose>
                                                                        <c:when test="${o.status==0}">
                                                                            <span class="lbl"
                                                                                  style="left: 5px; background-color: #01bad4;">New</span>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <span class="lbl"
                                                                                  style="left: 5px; background-color: #d4ba01;">2nd</span>
                                                                        </c:otherwise>
                                                                    </c:choose>
                                                                </div>
                                                                <!-- End product label -->
                                                            </a>
                                                            <!-- end product image -->

                                                            <!-- countdown start -->
                                                            <c:if test="${o.saleTime!=null}">
                                                                <input type="hidden" class="date" value="${o.saleTime}">
                                                                <input type="hidden" class="prod_id"
                                                                       value="${o.productID}">
                                                                <div class="saleTime desktop" id="test"
                                                                     data-countdown="${o.saleTime}"></div>
                                                            </c:if>
                                                            <!-- countdown end -->

                                                            <!-- Start product button -->
                                                            <div class="variants add">
                                                                <p class="btn btn-addto-cart" tabindex="0"
                                                                   onclick="addCart(${o.productID}, 1)">Add To Cart</p>
                                                            </div>
                                                            <div class="button-set">
                                                                <a href="javascript:void(0)"
                                                                   onclick="quickView(${o.productID})"
                                                                   title="Quick View"
                                                                   class="quick-view-popup quick-view"
                                                                   data-toggle="modal" data-target="#content_quickview">
                                                                    <i class="icon anm anm-search-plus-r"></i>
                                                                </a>
                                                                <div class="wishlist-btn">
                                                                    <a class="wishlist add-to-wishlist"
                                                                       onclick="addWish(${o.productID})">
                                                                        <i class="icon anm anm-heart-l"></i>
                                                                    </a>
                                                                </div>

                                                            </div>
                                                            <!-- end product button -->
                                                        </div>
                                                        <!-- end product image -->
                                                        <!--start product details -->
                                                        <div class="product-details text-center">
                                                            <!-- product name -->
                                                            <div class="product-name">
                                                                <a href="product-detail?id=${o.productID}">${o.productName}</a>
                                                            </div>
                                                            <!-- End product name -->
                                                            <!-- product price -->
                                                            <div class="product-price">
                                                                <c:choose>
                                                                    <c:when test="${o.sale==0}">
                                                                        <span class="price">${o.price}</span>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <input type="hidden" value="${o.sale}"
                                                                               class="sale">
                                                                        <input type="hidden" value="${o.price}"
                                                                               class="oldPrice">
                                                                        <span class="price"
                                                                              style="font-size: 12px;text-decoration: line-through;">${o.price}</span>
                                                                        <span class="new-price"
                                                                              style="padding-left: 5px; color: #e95144;"></span>
                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </div>
                                                            <!-- End product price -->

                                                            <div class="product-review">
                                                                <c:forEach begin="1" end="5" var="x">

                                                                    <c:choose>
                                                                        <c:when test="${o.rateAVG>=x}">
                                                                            <i class="font-13 fa fa-star"></i>
                                                                        </c:when>
                                                                        <c:when test="${x-o.rateAVG==0.5}">
                                                                            <i class="font-13 fa fa-star-half-full"></i>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <i class="font-13 fa fa-star-o"></i>
                                                                        </c:otherwise>
                                                                    </c:choose>

                                                                </c:forEach>
                                                            </div>

                                                        </div>
                                                        <!-- End product details -->
                                                    </div>
                                                </c:if>
                                            </c:forEach>
                                        </div>

                                    </div>
                                </c:forEach>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

        </div>
        <!--Collection Tab slider-->


        <!--Featured Product-->
        <div class="product-rows section">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="section-header text-center">
                            <h2 class="h2">Sản phẩm bán chạy</h2>
                            <p>Những cây Piano bán chạy nhất tại Piano Home</p>
                        </div>
                    </div>
                </div>
                <div class="grid-products">
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="productSlider">
                                <c:forEach items="${listTopSeller}" var="o">
                                    <div class="col-12 item">
                                        <!-- start product image -->
                                        <div class="product-image">
                                            <!-- start product image -->
                                            <a href="product-detail?id=${o.productID}">
                                                <!-- image -->
                                                <img class="primary blur-up lazyload" src="${o.image1}" alt="image"
                                                     title="${o.productName}">
                                                <!-- End image -->
                                                <!-- Hover image -->
                                                <img class="hover blur-up lazyload" src="${o.image2}" alt="image"
                                                     title="${o.productName}">
                                                <!-- End hover image -->
                                                <!-- product label -->
                                                <div class="product-labels rectangular">
                                                    <c:if test="${o.sale!=0}">
                                                        <span class="lbl on-sale">- ${o.sale} %</span>
                                                    </c:if>
                                                    <c:choose>
                                                        <c:when test="${o.status==0}">
                                                            <span class="lbl"
                                                                  style="left: 5px; background-color: #01bad4;">New</span>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <span class="lbl"
                                                                  style="left: 5px; background-color: #d4ba01;">2nd</span>

                                                        </c:otherwise>
                                                    </c:choose>
                                                </div>
                                                <!-- End product label -->
                                            </a>
                                            <!-- end product image -->

                                            <!-- countdown start -->
                                            <c:if test="${o.saleTime!=null}">
                                                <input type="hidden" class="date" value="${o.saleTime}">
                                                <input type="hidden" class="prod_id" value="${o.productID}">
                                                <div class="saleTime desktop" id="test"
                                                     data-countdown="${o.saleTime}"></div>
                                            </c:if>
                                            <!-- countdown end -->

                                            <!-- Start product button -->
                                            <div class="variants add">
                                                <p class="btn btn-addto-cart" tabindex="0"
                                                   onclick="addCart(${o.productID}, 1)">Add To Cart</p>
                                            </div>
                                            <div class="button-set">
                                                <a href="javascript:void(0)" onclick="quickView(${o.productID})"
                                                   title="Quick View" class="quick-view-popup quick-view"
                                                   data-toggle="modal" data-target="#content_quickview">
                                                    <i class="icon anm anm-search-plus-r"></i>
                                                </a>
                                                <div class="wishlist-btn">
                                                    <a class="wishlist add-to-wishlist"
                                                       onclick="addWish(${o.productID})">
                                                        <i class="icon anm anm-heart-l"></i>
                                                    </a>
                                                </div>

                                            </div>
                                            <!-- end product button -->
                                        </div>
                                        <!-- end product image -->
                                        <!--start product details -->
                                        <div class="product-details text-center">
                                            <!-- product name -->
                                            <div class="product-name">
                                                <a href="product-detail?id=${o.productID}">${o.productName}</a>
                                            </div>
                                            <!-- End product name -->
                                            <!-- product price -->
                                            <div class="product-price">
                                                <c:choose>
                                                    <c:when test="${o.sale==0}">
                                                        <span class="price">${o.price}</span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <input type="hidden" value="${o.sale}" class="sale">
                                                        <input type="hidden" value="${o.price}" class="oldPrice">
                                                        <span class="price"
                                                              style="font-size: 12px;text-decoration: line-through;">${o.price}</span>
                                                        <span class="new-price"
                                                              style="padding-left: 5px; color: #e95144;"></span>
                                                    </c:otherwise>
                                                </c:choose>

                                            </div>
                                            <!-- End product price -->

                                            <div class="product-review">
                                                <c:forEach begin="1" end="5" var="x">

                                                    <c:choose>
                                                        <c:when test="${o.rateAVG>=x}">
                                                            <i class="font-13 fa fa-star"></i>
                                                        </c:when>
                                                        <c:when test="${x-o.rateAVG==0.5}">
                                                            <i class="font-13 fa fa-star-half-full"></i>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <i class="font-13 fa fa-star-o"></i>
                                                        </c:otherwise>
                                                    </c:choose>

                                                </c:forEach>
                                            </div>

                                        </div>
                                        <!-- End product details -->
                                    </div>

                                </c:forEach>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row" style="margin-top: 30px;">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-12 text-center">
                        <a href="shop" class="btn">Xem thêm</a>
                    </div>
                </div>
            </div>
        </div>
        <!--End Featured Product-->

        <!--Latest Blog-->
        <c:if test="${listN.size()!=0&&listN.size()>=2}">
            <div class="latest-blog section pt-0" style="margin-top: 30px;">
                <div class="container">
                    <div class="row">
                        <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                            <div class="section-header text-center">
                                <h2 class="h2">Tin tức mới nhất</h2>
                            </div>
                        </div>
                    </div>
                    <div class="row">

                        <c:forEach var="i" begin="0" end="1">
                            <div class="col-12 col-sm-12 col-md-6 col-lg-6">
                                <div class="wrap-blog">
                                    <a href="${pageContext.request.contextPath}/news?id=${listN.get(i).newsID}"
                                       class="article__grid-image">
                                        <img src="${listN.get(i).image}" title="${listN.get(i).title}"
                                             class="blur-up lazyloaded"/>
                                    </a>
                                    <div class="article__grid-meta article__grid-meta--has-image">
                                        <div class="wrap-blog-inner">
                                            <h2 class="h3 article__title">
                                                <a href="${pageContext.request.contextPath}/news?id=${listN.get(i).newsID}">${listN.get(i).title}</a>
                                            </h2>
                                            <span class="article__date">${listN.get(i).datePost}</span>
                                            <div class="rte article__grid-excerpt">
                                                    ${listN.get(i).shortContent}
                                            </div>
                                            <ul class="list--inline article__meta-buttons">
                                                <li>
                                                    <a href="${pageContext.request.contextPath}/news?id=${listN.get(i).newsID}">Read
                                                        more</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
                </div>
            </div>
        </c:if>
        <!--End Latest Blog-->

        <!--Logo Slider-->
        <div class="section logo-section">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="section-header text-center">
                            <h2 class="h2">Thương hiệu</h2>
                        </div>
                    </div>
                    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                        <div class="logo-bar">
                            <div class="logo-bar__item">
                                <a href="shop?txt_search=yamaha"><img
                                        src="https://theme.hstatic.net/1000342432/1000436258/14/brand_img1.png?v=811"
                                        alt="" title=""/></a>
                            </div>
                            <div class="logo-bar__item">
                                <a href="shop?txt_search=kawai"><img
                                        src="https://theme.hstatic.net/1000342432/1000436258/14/brand_img2.png?v=811"
                                        alt="" title=""/>
                                </a>
                            </div>
                            <div class="logo-bar__item">
                                <a href="shop?txt_search=roland"><img
                                        src="https://theme.hstatic.net/1000342432/1000436258/14/brand_img3.png?v=811"
                                        alt="" title=""/>
                                </a>
                            </div>
                            <div class="logo-bar__item">

                                <a href="shop?txt_search=casio"><img
                                        src="https://theme.hstatic.net/1000342432/1000436258/14/brand_img4.png?v=811"
                                        alt="" title=""/>
                                </a>
                            </div>
                            <div class="logo-bar__item">
                                <a href="shop?txt_search=korg"><img
                                        src="https://theme.hstatic.net/1000342432/1000436258/14/brand_img5.png?v=811"
                                        alt="" title=""/>
                                </a>
                            </div>
                            <div class="logo-bar__item">
                                <a href="shop?txt_search=technics"><img
                                        src="https://theme.hstatic.net/1000342432/1000436258/14/brand_img6.png?v=811"
                                        alt="" title=""/>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End Logo Slider-->
        <!--Store Feature-->
        <div class="store-feature section">
            <div class="container">
                <div class="row">
                    <div class="col-12 col-sm-12 col-md-12 col-lg-12">
                        <ul class="display-table store-info">
                            <li class="display-table-cell">
                                <i class="icon anm anm-truck-l"></i>
                                <h5>Miễn phí vận chuyển và hoàn trả</h5>
                                <span class="sub-text">Miễn phí vận chuyển cho tất cả đơn hàng trong nội thành</span>
                            </li>
                            <li class="display-table-cell">
                                <i class="icon anm anm-dollar-sign-r"></i>
                                <h5>Hỗ trợ trả góp</h5>
                                <span class="sub-text">Hỗ trợ trả góp với lãi xuất 0%</span>
                            </li>
                            <li class="display-table-cell">
                                <i class="icon anm anm-comments-l"></i>
                                <h5>Hỗ trợ online</h5>
                                <span class="sub-text">Chúng tôi sẽ hỗ trợ giải đáp mọi thắc mắc của quý khách 24/7</span>
                            </li>
                            <li class="display-table-cell">
                                <i class="icon anm anm-credit-card-front-r"></i>
                                <h5>Thanh toán khi nhận hàng</h5>
                                <span class="sub-text">Bạn có thể thanh toán ngay sau khi nhận được hàng</span>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!--End Store Feature-->
    </div>
    <!--End Body Content-->

    <!--Footer-->
    <jsp:include page="layout/footer.jsp"/>
    <!--End Footer-->
    <!--Scoll Top-->
    <span id="site-scroll">
                <i class="icon anm anm-angle-up-r"></i>
            </span>

    <!--End Scoll Top-->

    <!--Quick View popup-->
    <jsp:include page="layout/quick-view.jsp"/>
    <!--End Quick View popup-->

    <!-- Newsletter Popup -->

    <!-- End Newsletter Popup -->


    <!-- Including Jquery -->
    <script src="${pageContext.request.contextPath}/us/assets/js/vendor/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/us/assets/js/vendor/modernizr-3.6.0.min.js"></script>
    <script src="${pageContext.request.contextPath}/us/assets/js/vendor/jquery.cookie.js"></script>
    <script src="${pageContext.request.contextPath}/us/assets/js/vendor/wow.min.js"></script>
    <script src="${pageContext.request.contextPath}/us/assets/js/vendor/jquery.countdown.min.js"></script>
    <script src="${pageContext.request.contextPath}/us/assets/js/vendor/jquery.countdown.js"></script>
    <!-- Including Javascript -->
    <script src="${pageContext.request.contextPath}/us/assets/js/custom.js"></script>
    <script src="${pageContext.request.contextPath}/us/assets/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/us/assets/js/plugins.js"></script>
    <script src="${pageContext.request.contextPath}/us/assets/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/us/assets/js/lazysizes.js"></script>
    <script src="${pageContext.request.contextPath}/us/assets/js/main.js"></script>

    <script>!function (s, u, b, i, z) {
        var o, t, r, y;
        s[i] || (s._sbzaccid = z, s[i] = function () {
            s[i].q.push(arguments);
        }, s[i].q = [], s[i]("setAccount", z), r = ["widget.subiz.net", "storage.googleapis" + (t = ".com"), "app.sbz.workers.dev", i + "a" + (o = function (k, t) {
            var n = t <= 6 ? 5 : o(k, t - 1) + o(k, t - 3);
            return k !== t ? n : n.toString(32);
        })(20, 20) + t, i + "b" + o(30, 30) + t, i + "c" + o(40, 40) + t], (y = function (k) {
            var t, n;
            s._subiz_init_2094850928430 || r[k] && (t = u.createElement(b), n = u.getElementsByTagName(b)[0], t.async = 1, t.src = "https://" + r[k] + "/sbz/app.js?accid=" + z, n.parentNode.insertBefore(t, n), setTimeout(y, 2e3, k + 1));
        })(0));
    }(window, document, "script", "subiz", "acrbgddzswcetvpkausc");
    </script>
    <!--End For Newsletter Popup-->
</div>

</body>

<!-- belle/index.html 11 Nov 2019 12:20:55 GMT -->
</html>
