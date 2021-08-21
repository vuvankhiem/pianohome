<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@page  contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

    <!-- belle/product-with-bottom-thumbs.html   11 Nov 2019 12:43:09 GMT -->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>${p_detail.productName} - Piano Home</title>
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
            .slick-track{
                width: auto !important;
            }
            .mini-list{
                display: flex;
                width: 100%;
                align-items: center;
                margin: 20px 0;
            }

        </style>
    </head>
    <body class="template-product belle">
        <div class="pageWrapper">


            <jsp:include page="layout/header.jsp"></jsp:include>

                <!--Body Content-->
                <div id="page-content" style="padding-top: 70px;">
                    <!--MainContent-->
                    <div id="MainContent" class="main-content" role="main">
                        <!--Breadcrumb-->
                        <div class="bredcrumbWrap">
                            <div class="container-fluid breadcrumbs">
                                <a href="home" title="Back to the home page">Trang chủ</a>
                                <span aria-hidden="true">></span>
                                <a href="shop" title="Back to the home page">Cửa hàng</a>
                                <span aria-hidden="true">></span>
                                <span>Chi tiết sản phẩm</span>
                            </div>
                        </div>
                        <!--End Breadcrumb-->

                        <div id="ProductSection-product-template" class="product-template__container prstyle3 container-fluid">
                            <!--#ProductSection-product-template-->
                            <div class="product-single product-single-1">
                                <div class="left-content-product">
                                    <div class="row" style="align-items: initial;">
                                        <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                            <div class="product-details-img product-single__photos bottom">
                                                <div class="zoompro-wrap product-zoom-right pl-20">
                                                    <div class="zoompro-span">
                                                        <img class="blur-up lazyload zoompro" data-zoom-image="${p_detail.image1}" alt="" src="${p_detail.image1}" />
                                                </div>
                                                <div class="product-labels">
                                                    <c:if test="${p_detail.sale!=0}">
                                                        <span class="lbl on-sale">-${p_detail.sale}%</span>
                                                    </c:if>
                                                    <c:choose>
                                                        <c:when test="${p_detail.status==0}">
                                                            <span class="lbl" style="left: 5px; background-color: #01bad4;">New</span>
                                                        </c:when>
                                                        <c:otherwise>
                                                            <span class="lbl" style="left: 5px; background-color: #d4ba01;">2nd</span>

                                                        </c:otherwise>
                                                    </c:choose>
                                                </div>
                                                <div class="product-buttons">
                                                    <a href="#" class="btn prlightbox" title="Zoom"><i class="icon anm anm-expand-l-arrows" aria-hidden="true"></i></a>
                                                </div>
                                            </div>
                                            <div class="product-thumb product-thumb-1">
                                                <div id="gallery" class="product-dec-slider-1 product-tab-left">
                                                    <a data-image="${p_detail.image1}" data-zoom-image="${p_detail.image1}" class="slick-slide slick-cloned" data-slick-index="-4" aria-hidden="true" tabindex="-1">
                                                        <img class="blur-up lazyload" src="${p_detail.image1}" alt="" />
                                                    </a>
                                                    <a data-image="${p_detail.image2}" data-zoom-image="${p_detail.image2}" class="slick-slide slick-cloned" data-slick-index="-3" aria-hidden="true" tabindex="-1">
                                                        <img class="blur-up lazyload" src="${p_detail.image2}" alt="" />
                                                    </a>
                                                    <a data-image="${p_detail.image3}" data-zoom-image="${p_detail.image3}" class="slick-slide slick-cloned" data-slick-index="-2" aria-hidden="true" tabindex="-1">
                                                        <img class="blur-up lazyload" src="${p_detail.image3}" alt="" />
                                                    </a>


                                                </div>
                                            </div>
                                            <div class="lightboximages">
                                                <a href="${p_detail.image1}" data-size="370x370"></a>
                                                <a href="${p_detail.image2}" data-size="370x370"></a>
                                                <a href="${p_detail.image3}" data-size="370x370"></a>

                                            </div>

                                        </div>
                                    </div>
                                    <div class="col-lg-6 col-md-6 col-sm-12 col-12">
                                        <div class="product-single__meta">
                                            <h1 class="product-single__title">${p_detail.productName}</h1>
                                            <p class="product-single__price product-single__price-product-template">
                                                <span class="visually-hidden">Regular price</span>
                                                <c:choose>
                                                    <c:when test="${p_detail.sale==0}">
                                                        <span class="price" style="font-size: 1.46154em; font-weight: 600;">${p_detail.price}</span>
                                                    </c:when>
                                                    <c:otherwise>
                                                        <input type="hidden" value="${p_detail.sale}" class="sale">
                                                        <input type="hidden" value="${p_detail.price}" class="oldPrice">
                                                        <span  class ="price" style="font-size: 12px;text-decoration: line-through;">${p_detail.price}</span>
                                                        <span  class ="new-price" style="padding-left: 5px; color: #e95144; font-size: 1.46154em; font-weight: 600;"></span>
                                                    </c:otherwise>
                                                </c:choose>
                                                <c:if test="${p_detail.sale!=0}">
                                                    <span class="discount-badge"> <span class="devider">|</span>&nbsp;
                                                        <span>You Save</span>
                                                        <span id="SaveAmount-product-template" class="product-single__save-amount">
                                                            <span class="money savePrice"></span>
                                                        </span>
                                                        <span class="off">(<span>${p_detail.sale}</span>%)</span>
                                                    </span> 
                                                </c:if> 
                                            </p>
                                            <div class="product-single__description rte">
                                                ${p_detail.description}
                                            </div>

                                            <c:if test="${p_detail.saleTime!=null}">
                                                <div id="quantity_message">Sale Time</div>
                                                <div class="saleTime product-countdown" data-countdown="${p_detail.saleTime}"></div>
                                            </c:if>
                                            <form method="post"  id="product_form_10508262282" accept-charset="UTF-8" class="product-form product-form-product-template hidedropdown" enctype="multipart/form-data">


                                                <!-- Product Action -->
                                                <div class="product-action clearfix">
                                                    <input type="hidden" id="qv-id" value="${p_detail.productID}">
                                                    <div class="product-form__item--quantity">
                                                        <div class="wrapQtyBtn">
                                                            <div class="qtyField">
                                                                <a class="qtyBtn minus" href="javascript:void(0);"><i class="fa anm anm-minus-r" aria-hidden="true"></i></a>
                                                                <input type="text" id="qv-quanty" name="quantity" value="1" class="product-form__input qty">
                                                                <a class="qtyBtn plus" href="javascript:void(0);"><i class="fa anm anm-plus-r" aria-hidden="true"></i></a>
                                                            </div>
                                                        </div>
                                                    </div>                                
                                                    <div class="product-form__item--submit">
                                                        <button onclick="add_cart()" class="btn product-form__cart-submit" style="background: #e95144;">
                                                            <span>Thêm giỏ hàng</span>
                                                        </button>
                                                    </div>
                                                </div>
                                                <!-- End Product Action -->
                                            </form>
                                            <div class="display-table shareRow">
                                                <div class="display-table-cell medium-up--one-third">
                                                    <div class="wishlist-btn">
                                                        <a class="wishlist add-to-wishlist" onclick="addWish(${p_detail.productID})" style="cursor: pointer;" title="Add to Wishlist"><i class="icon anm anm-heart-l" aria-hidden="true"></i> <span>Thêm vào danh sách yêu thích</span></a>
                                                    </div>
                                                </div>

                                            </div>
                                            <div class="product-info">
                                                <p class="product-type"><span class="lbl">Product Type&ensp;:&ensp;</span> <a href="shop?cateid=${p_detail.category.categoryID}" title="${p_detail.category.categoryName}">${p_detail.category.categoryName}</a></p>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Product Tabs-->
                                    <div class="tabs-listing" style="width: 100%;">
                                        <ul class="product-tabs">
                                            <li rel="tab1"><a class="tablink" >Mô tả</a></li>
                                            <li rel="tab2"><a class="tablink" onclick="comment(0)">Đánh giá</a></li>
                                            <li rel="tab3"><a class="tablink">Thông số</a></li>

                                        </ul>
                                        <div class="tab-container" style="padding: 0;">

                                            <div id="tab1" class="tab-content">
                                                <div class="product-description rte">
                                                    ${p_detail.fulldescription}
                                                </div>
                                            </div>
                                            <div id="tab2" class="tab-content">
                                                <div id="shopify-product-reviews">
                                                    <div class="spr-container">
                                                        <div class="spr-header clearfix">
                                                            <div class="spr-summary">
                                                                <span class="product-review">
                                                                    <h3 class="spr-form-title" style="text-align: center;">Đánh giá sản phẩm</h3>
                                                                </span>
                                                            </div>
                                                        </div>
                                                        <div class="spr-content">
                                                            <div class="spr-form clearfix">
                                                                <form method="POST" action="product-review"  id="new-review-form" class="new-review-form">
                                                                    <input type="hidden" id="p_id" name="p_id" value="${p_detail.productID}">
                                                                    <sec:authorize access="isAuthenticated()">
                                                                        <sec:authentication property="principal" var="p"/>
                                                                        <input type="hidden" name="email" value="${p.username}">
                                                                    </sec:authorize>

                                                                    <fieldset class="spr-form-review">
                                                                        <div class="spr-form-review-rating">
                                                                            <input type="hidden" name="rate" id="rate" value="0">
                                                                            <label class="spr-form-label">Rating</label>
                                                                            <div class="spr-form-input spr-starrating">
                                                                                <div class="product-review" style="cursor: pointer; width: 90px;">
                                                                                    <i class="rating__star fa fa-star-o" onclick="executeRating(0)"></i>
                                                                                    <i class="rating__star fa fa-star-o" onclick="executeRating(1)"></i>
                                                                                    <i class="rating__star fa fa-star-o" onclick="executeRating(2)"></i>
                                                                                    <i class="rating__star fa fa-star-o" onclick="executeRating(3)"></i>
                                                                                    <i class="rating__star fa fa-star-o" onclick="executeRating(4)"></i>
                                                                                </div>
                                                                            </div>
                                                                        </div>

                                                                        <div class="spr-form-review-title">
                                                                            <label class="spr-form-label" for="review_title_10508262282">Tiêu đề</label>
                                                                            <input class="spr-form-input spr-form-input-text " id="review_title_10508262282" type="text" name="title" value="" placeholder="" required>
                                                                        </div>

                                                                        <div class="spr-form-review-body">
                                                                            <label class="spr-form-label" for="review_body_10508262282">
                                                                                Đánh giá
                                                                                <span class="spr-form-review-body-charactersremaining"></span>
                                                                            </label>
                                                                            <div class="spr-form-input">
                                                                                <textarea class="spr-form-input spr-form-input-textarea " id="review_body_10508262282" data-product-id="10508262282" name="review" rows="5" placeholder="Write your comments here" required aria-placeholder="Khoảng 1500 kí tự"></textarea>
                                                                            </div>
                                                                        </div>
                                                                    </fieldset>
                                                                    <fieldset class="spr-form-actions" style="display: flex;justify-content: center;">
                                                                        <button type="submit" class="spr-button spr-button-primary button button-primary btn btn-primary">GỬI ĐÁNH GIÁ</button>
                                                                    </fieldset>
                                                                </form>
                                                            </div>
                                                            <div class="spr-reviews" id="spr-rv">

                                                                <div id="rv-item1" class="spr-review">
                                                                    <div class="spr-review-header">
                                                                        <span class="product-review spr-starratings spr-review-header-starratings">
                                                                            <span class="reviewLink">
                                                                                <i class="cmt-rate font-13 fa fa-star-o"></i>
                                                                                <i class="cmt-rate font-13 fa fa-star-o"></i>
                                                                                <i class="cmt-rate font-13 fa fa-star-o"></i>
                                                                                <i class="cmt-rate font-13 fa fa-star-o"></i>
                                                                                <i class="cmt-rate font-13 fa fa-star-o"></i>
                                                                            </span>
                                                                        </span>
                                                                        <h3 class="spr-review-header-title cmt-title"></h3>
                                                                        <span class="spr-review-header-byline">
                                                                            <span class="nameUS"></span> on
                                                                            <span class="cmt-time"></span>
                                                                        </span>
                                                                    </div>
                                                                    <div class="spr-review-content">
                                                                        <p class="spr-review-content-body cmt-review">
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                                <div id="rv-item2" class="spr-review">
                                                                    <div class="spr-review-header">
                                                                        <span class="product-review spr-starratings spr-review-header-starratings">
                                                                            <span class="reviewLink">
                                                                                <i class="cmt-rate font-13 fa fa-star-o"></i>
                                                                                <i class="cmt-rate font-13 fa fa-star-o"></i>
                                                                                <i class="cmt-rate font-13 fa fa-star-o"></i>
                                                                                <i class="cmt-rate font-13 fa fa-star-o"></i>
                                                                                <i class="cmt-rate font-13 fa fa-star-o"></i>
                                                                            </span>
                                                                        </span>
                                                                        <h3 class="spr-review-header-title cmt-title"></h3>
                                                                        <span class="spr-review-header-byline">
                                                                            <span class="nameUS"></span> on
                                                                            <span class="cmt-time"></span>
                                                                        </span>
                                                                    </div>
                                                                    <div class="spr-review-content">
                                                                        <p class="spr-review-content-body cmt-review">
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                                <div id="rv-item3" class="spr-review">
                                                                    <div class="spr-review-header">
                                                                        <span class="product-review spr-starratings spr-review-header-starratings">
                                                                            <span class="reviewLink">
                                                                                <i class="cmt-rate font-13 fa fa-star-o"></i>
                                                                                <i class="cmt-rate font-13 fa fa-star-o"></i>
                                                                                <i class="cmt-rate font-13 fa fa-star-o"></i>
                                                                                <i class="cmt-rate font-13 fa fa-star-o"></i>
                                                                                <i class="cmt-rate font-13 fa fa-star-o"></i>
                                                                            </span>
                                                                        </span>
                                                                        <h3 class="spr-review-header-title cmt-title"></h3>
                                                                        <span class="spr-review-header-byline">
                                                                            <span class="nameUS"></span> on
                                                                            <span class="cmt-time"></span>
                                                                        </span>
                                                                    </div>
                                                                    <div class="spr-review-content">
                                                                        <p class="spr-review-content-body cmt-review">
                                                                        </p>
                                                                    </div>
                                                                </div>
                                                                <!-- comment -->

                                                                <div class="pagination">
                                                                    <ul>

                                                                        <li class="next" >
                                                                            <span style="color: white;" onclick="comment(-3)">
                                                                                <i class="fa fa-caret-left" aria-hidden="true" ></i>
                                                                            </span>

                                                                        </li>
                                                                        <li class="next">
                                                                            <span onclick="comment(3)" style="color: white;">
                                                                                <i class="fa fa-caret-right" aria-hidden="true" ></i>
                                                                            </span>
                                                                        </li>


                                                                    </ul>
                                                                </div>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>

                                            <div id="tab3" class="tab-content" style="padding-top: 0;">
                                                <h3 style="text-align: center; margin: 35px 0;">THÔNG SỐ KĨ THUẬT SẢN PHẨM</h3>
                                                ${p_detail.spec}

                                            </div>


                                        </div>
                                    </div>
                                    <!--End Product Tabs-->
                                </div>
                            </div>
                            <!--End-product-single-->
                            <div class="prSidebar sidebar-product">
                                <div class="col-lg-12 col-md-12 col-sm-12 col-12">

                                    <!--Related Product-->
                                    <div class="related-product grid-products">
                                        <header class="section-header">
                                            <h2 class="section-header__title text-center h2"><span>Sản phẩm tương tự</span></h2>
                                            <p class="sub-heading">Bạn có thể tham khảo qua các sản phẩm khác tương tự với cây đàn <span style="color: #ed5f44;">${p_detail.productName}</span></p>
                                        </header>
                                        <div class="grid" style="margin-left: 0;">
                                            <c:forEach items="${listPRelated}" var="o">
                                                <div class="grid__item">
                                                    <div class="mini-list-item mini-list">
                                                        <div class="mini-view_image">
                                                            <a class="grid-view-item__link" href="product-detail?id=${o.productID}">
                                                                <img class="grid-view-item__image" src="${o.image1}" alt="" style="width: 150%;">
                                                            </a>
                                                        </div>
                                                        <div class="details" style="margin-left: 40px;">
                                                            <a class="grid-view-item__title" href="product-detail?id=${o.productID}">${o.productName}</a>
                                                            <div class="grid-view-item__meta">
                                                                <span class="product-price__price">
                                                                    <c:choose>
                                                                        <c:when test="${o.sale==0}">
                                                                            <span class="price">${o.price}</span>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <input type="hidden" value="${o.sale}" class="sale">
                                                                            <input type="hidden" value="${o.price}" class="oldPrice">
                                                                            <span class ="price" style="font-size: 12px;text-decoration: line-through;">${o.price}</span>
                                                                            <span class ="new-price" style="padding-left: 5px; color: #e95144;"></span>
                                                                        </c:otherwise>
                                                                    </c:choose>

                                                                </span>
                                                            </div>
                                                            <div class="product-review">

                                                                <c:forEach begin="1" end="5" var="i">

                                                                    <c:choose>
                                                                        <c:when test="${o.rateAVG>=i}">
                                                                            <i class="font-13 fa fa-star"></i>
                                                                        </c:when>
                                                                        <c:when test="${i-o.rateAVG==0.5}">
                                                                            <i class="font-13 fa fa-star-half-full"></i>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <i class="font-13 fa fa-star-o"></i>
                                                                        </c:otherwise>
                                                                    </c:choose>

                                                                </c:forEach>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <!--End Related Product-->
                                    <!--Product Feature-->
                                    <div class="related-product grid-products">
                                        <header class="section-header">
                                            <h2 class="section-header__title text-center h2"><span>Hot Sales</span></h2>
                                            <p class="sub-heading">Những sản phẩm có mức giá vô cùng hấp dẫn mà bạn khó có thể bỏ qua khi ghé thăm Piano Home</p>
                                        </header>
                                        <div class="grid" style="margin-left: 0;">
                                            <c:forEach items="${listSale}" var="o">
                                                <div class="grid__item">
                                                    <div class="mini-list-item mini-list">
                                                        <div class="mini-view_image">
                                                            <a class="grid-view-item__link" href="product-detail?id=${o.productID}">
                                                                <img class="grid-view-item__image" src="${o.image1}" alt="" style="width: 150%;">
                                                            </a>
                                                        </div>
                                                        <div class="details" style="margin-left: 40px;">
                                                            <a class="grid-view-item__title" href="product-detail?id=${o.productID}">${o.productName}</a>
                                                            <div class="grid-view-item__meta">
                                                                <span class="product-price__price">
                                                                    <c:choose>
                                                                        <c:when test="${o.sale==0}">
                                                                            <span class="price">${o.price}</span>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <input type="hidden" value="${o.sale}" class="sale">
                                                                            <input type="hidden" value="${o.price}" class="oldPrice">
                                                                            <span class ="price" style="font-size: 12px;text-decoration: line-through;">${o.price}</span>
                                                                            <span class ="new-price" style="padding-left: 5px; color: #e95144;"></span>
                                                                        </c:otherwise>
                                                                    </c:choose>

                                                                </span>
                                                            </div>
                                                            <div class="product-review">

                                                                <c:forEach begin="1" end="5" var="i">

                                                                    <c:choose>
                                                                        <c:when test="${o.rateAVG>=i}">
                                                                            <i class="font-13 fa fa-star"></i>
                                                                        </c:when>
                                                                        <c:when test="${i-o.rateAVG==0.5}">
                                                                            <i class="font-13 fa fa-star-half-full"></i>
                                                                        </c:when>
                                                                        <c:otherwise>
                                                                            <i class="font-13 fa fa-star-o"></i>
                                                                        </c:otherwise>
                                                                    </c:choose>

                                                                </c:forEach>

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </c:forEach>
                                        </div>
                                    </div>
                                    <!--End Product Feature-->
                                </div>
                            </div>
                        </div>
                        <!--#ProductSection-product-template-->
                    </div>
                    <!--MainContent-->
                </div>
                <!--End Body Content-->
            </div>
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
            <!-- Photoswipe Gallery -->
            <script src="${pageContext.request.contextPath}/us/assets/js/vendor/photoswipe.min.js"></script>
            <script src="${pageContext.request.contextPath}/us/assets/js/vendor/photoswipe-ui-default.min.js"></script>
            <script>
                                                                                $(function () {
                                                                                    var $pswp = $('.pswp')[0],
                                                                                            image = [],
                                                                                            getItems = function () {
                                                                                                var items = [];
                                                                                                $('.lightboximages a').each(function () {
                                                                                                    var $href = $(this).attr('href'),
                                                                                                            $size = $(this).data('size').split('x'),
                                                                                                            item = {
                                                                                                                src: $href,
                                                                                                                w: $size[0],
                                                                                                                h: $size[1]
                                                                                                            }
                                                                                                    items.push(item);
                                                                                                });
                                                                                                return items;
                                                                                            }
                                                                                    var items = getItems();

                                                                                    $.each(items, function (index, value) {
                                                                                        image[index] = new Image();
                                                                                        image[index].src = value['src'];
                                                                                    });
                                                                                    $('.prlightbox').on('click', function (event) {
                                                                                        event.preventDefault();

                                                                                        var $index = $(".active-thumb").parent().attr('data-slick-index');
                                                                                        $index++;
                                                                                        $index = $index - 1;

                                                                                        var options = {
                                                                                            index: $index,
                                                                                            bgOpacity: 0.9,
                                                                                            showHideOpacity: true
                                                                                        }
                                                                                        var lightBox = new PhotoSwipe($pswp, PhotoSwipeUI_Default, items, options);
                                                                                        lightBox.init();
                                                                                    });
                                                                                });

            </script>
            <script>
                !function (s, u, b, i, z) {
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
        </div>

        <div class="pswp" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="pswp__bg"></div>
            <div class="pswp__scroll-wrap"><div class="pswp__container"><div class="pswp__item"></div><div class="pswp__item"></div><div class="pswp__item"></div></div><div class="pswp__ui pswp__ui--hidden"><div class="pswp__top-bar"><div class="pswp__counter"></div><button class="pswp__button pswp__button--close" title="Close (Esc)"></button><button class="pswp__button pswp__button--share" title="Share"></button><button class="pswp__button pswp__button--fs" title="Toggle fullscreen"></button><button class="pswp__button pswp__button--zoom" title="Zoom in/out"></button><div class="pswp__preloader"><div class="pswp__preloader__icn"><div class="pswp__preloader__cut"><div class="pswp__preloader__donut"></div></div></div></div></div><div class="pswp__share-modal pswp__share-modal--hidden pswp__single-tap"><div class="pswp__share-tooltip"></div></div><button class="pswp__button pswp__button--arrow--left" title="Previous (arrow left)"></button><button class="pswp__button pswp__button--arrow--right" title="Next (arrow right)"></button><div class="pswp__caption"><div class="pswp__caption__center"></div></div></div></div></div>



    </body>

    <!-- belle/product-with-bottom-thumbs.html   11 Nov 2019 12:43:10 GMT -->
</html>