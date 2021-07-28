<%-- 
    Document   : shop-page
    Created on : Jun 19, 2021, 11:12:49 PM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

    <!-- belle/shop-left-sidebar.html   11 Nov 2019 12:37:31 GMT -->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Cửa hàng &ndash; Piano Home</title>
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
    <body class="template-collection belle">
        <div class="pageWrapper">
            <!--Header-->
            <jsp:include page="layout/header.jsp"></jsp:include>
                <!--End Header -->

                <!--Body Content-->
                <div id="page-content">
                    <!--Collection Banner-->
                    <div class="collection-header">
                        <div class="collection-hero">
                            <div style="height: 68px;width: 100%;background-color: white;"></div>
                            <div class="collection-hero__image"><img class="blur-up lazyload" data-src="${pageContext.request.contextPath}/us/assets/images/shop.jpg" src="${pageContext.request.contextPath}/us/assets/images/shop.jpg"  /></div>
                    </div>
                </div>
                <!--End Collection Banner-->

                <div class="container">
                    <div class="row" style="align-items: initial;">
                        <!--Sidebar-->
                        <div class="col-12 col-sm-12 col-md-3 col-lg-3 sidebar filterbar">
                            <div class="closeFilter d-block d-md-none d-lg-none"><i class="icon icon anm anm-times-l"></i></div>
                            <div class="sidebar_tags">
                                <!--Categories-->
                                <div class="sidebar_widget filterBox filter-widget">
                                    <div class="widget-title"><h2>Danh mục</h2></div>
                                    <div class="widget-content">
                                        <ul class="sidebar_categories">
                                            <c:forEach items="${listC}" var="o">
                                                <li class="lvl-1">
                                                    <a href="shop?cateid=${o.categoryID}" class="site-nav">${o.categoryName}</a>
                                                </li>
                                            </c:forEach>   
                                        </ul>
                                    </div>
                                </div>
                                <!--Categories-->
                                <!--Price Filter-->
                                <div class="sidebar_widget filterBox filter-widget">
                                    <div class="widget-title">
                                        <h2>Khoảng giá</h2>
                                    </div>
                                    <div class="widget-content">
                                        <ul class="sidebar_categories">
                                            <li><a href="shop?price_filter=1" title="Below 5.000.000đ">Below 5.000.000đ</a></li>
                                            <li><a href="shop?price_filter=5000000-20000000" title="5.000.000đ - 20.000.000đ">5.000.000đ - 20.000.000đ</a></li>
                                            <li><a href="shop?price_filter=20000000-40000000" title="20.000.000đ - 40.000.000đ">20.000.000đ - 40.000.000đ</a></li>
                                            <li><a href="shop?price_filter=40000000-100000000" title="40.000.000đ - 100.000.000đ">40.000.000đ - 100.000.000đ</a></li>
                                            <li><a href="shop?price_filter=100000000-500000000" title="100.000.000đ - 500.000.000đ">100.000.000đ - 500.000.000đ</a></li>
                                            <li><a href="shop?price_filter=2" title="Above 500.000.000đ">Above 500.000.000đ</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!--End Price Filter-->

                                <!--Popular Products-->
                                <div class="sidebar_widget">
                                    <div class="widget-title"><h2>Sản phẩm bán chạy</h2></div>
                                    <div class="widget-content">
                                        <div class="list list-sidebar-products">
                                            <div class="grid">
                                                <c:forEach items="${listBestSeller}" var="o">
                                                    <div class="grid__item">
                                                        <div class="mini-list-item">
                                                            <div class="mini-view_image">
                                                                <a class="grid-view-item__link" href="product-detail?id=${o.productID}">
                                                                    <img class="grid-view-item__image" src="${o.image1}" alt="" />
                                                                </a>
                                                            </div>
                                                            <div class="details"> <a class="grid-view-item__title" href="product-detail?id=${o.productID}">${o.productName}</a>
                                                                <div class="grid-view-item__meta">
                                                                    <span class="product-price__price">
                                                                        <c:choose>
                                                                            <c:when test="${o.sale==0}">
                                                                                <span class="price">${o.price}</span>
                                                                            </c:when>
                                                                            <c:otherwise>
                                                                                <input type="hidden" value="${o.sale}" class="sale">
                                                                                <input type="hidden" value="${o.price}" class="oldPrice">
                                                                                <span class ="new-price" style="padding-left: 5px; color: black;"></span>
                                                                            </c:otherwise>
                                                                        </c:choose>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!--End Popular Products-->
                                <!--Banner-->
                                <!--Banner-->
                                <!--Information-->
                                <!--end Information-->

                            </div>
                        </div>
                        <!--End Sidebar-->
                        <!--Main Content-->
                        <div class="col-12 col-sm-12 col-md-9 col-lg-9 main-col">
                            <div class="category-description">
                                <h3>Giới thiệu cửa hàng</h3>
                                <p>Chúng tôi tham gia vào lĩnh vực cung cấp nhạc cụ vì muốn đem lại một dịch vụ chăm sóc tốt nhất đến người tiêu dùng cũng như mang sản phẩm nhạc cụ – món ăn tinh thần tốt nhất trong thời buổi công nghệ, phương thuốc tốt nhất cho giới trẻ tương lai.</p>
                                <p>Chúng tôi hiểu những băn khoăn của bạn khi chọn mua đàn. Chọn loại nhạc cụ nào là phù hợp? Làm thế nào để có một cây đàn tốt? Chọn loại đàn nào cho học tập giải trí, chọn loại nào tiện ích chuyên nghiệp,…</p>
                            </div>
                            <hr>
                            <div class="productList product-load-more">
                                <!--Toolbar-->
                                <button type="button" class="btn btn-filter d-block d-md-none d-lg-none">Lọc sản phẩm</button>
                                <div class="toolbar">
                                    <div class="filters-toolbar-wrapper">
                                        <div class="row">
                                            <div class="col-4 col-md-4 col-lg-4 filters-toolbar__item collection-view-as d-flex justify-content-start align-items-center">
                                                <a href="shop"><h3>Tất cả</h3></a>
                                            </div>
                                            <div class="col-4 col-md-4 col-lg-4 text-center filters-toolbar__item filters-toolbar__item--count d-flex justify-content-center align-items-center">
                                                <div class="dropdown">
                                                    <button class="dropbtn">
                                                        Kích thước trang
                                                        <i class="fa fa-caret-down" style="font-size: 13px;margin-left: 5px;"></i>
                                                    </button>
                                                    <div class="dropdown-content">
                                                        <a href="shop?pagesize=3${value}">3</a>
                                                        <a href="shop?pagesize=6${value}">6</a>
                                                        <a href="shop?pagesize=9${value}">9</a>
                                                        <a href="shop?pagesize=12${value}">12</a>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--Start Sort by -->
                                            <div class="col-4 col-md-4 col-lg-4 text-right">
                                                <div class="filters-toolbar__item">
                                                    <div class="dropdown">
                                                        <button class="dropbtn">
                                                            Sắp xếp
                                                            <i class="fa fa-caret-down" style="font-size: 13px;margin-left: 5px;"></i>
                                                        </button>
                                                        <div class="dropdown-content dropdown-content-sort">
                                                            <a href="shop?sortby=alphabet-A-Z">Bảng chữ cái, A-Z</a>
                                                            <a href="shop?sortby=alphabet-Z-A">Bản chữ cái, Z-A</a>
                                                            <a href="shop?sortby=price-low-to-high">Mức giá, thấp tới cao</a>
                                                            <a href="shop?sortby=price-high-to-low">Mức giá, cao tới thấp</a>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <!--End Sort by -->
                                        </div>
                                    </div>
                                </div>
                                <!--End Toolbar-->
                                <div class="grid-products grid--view-items">
                                    <div class="row">
                                        <c:forEach begin="${begin}" end="${end}" var="i">
                                            <c:if test="${i<listP.size()}">
                                                <div class="col-6 col-sm-6 col-md-4 col-lg-4 item">
                                                    <!-- start product image -->
                                                    <div class="product-image">
                                                        <!-- start product image -->
                                                        <a href="product-detail?id=${listP.get(i).productID}">
                                                            <!-- image -->
                                                            <img class="primary blur-up lazyload" src="${listP.get(i).image1}" alt="image" title="product">
                                                            <!-- End image -->
                                                            <!-- Hover image -->
                                                            <img class="hover blur-up lazyload" src="${listP.get(i).image2}" alt="image" title="product">
                                                            <!-- End hover image -->
                                                            <!-- product label -->
                                                            <div class="product-labels rectangular">
                                                                <c:if test="${listP.get(i).sale!=0}">
                                                                    <span class="lbl on-sale">-${listP.get(i).sale}%</span>
                                                                </c:if>
                                                                <c:choose>
                                                                    <c:when test="${listP.get(i).status==0}">
                                                                        <span class="lbl" style="left: 5px; background-color: #01bad4;">New</span>
                                                                    </c:when>
                                                                    <c:otherwise>
                                                                        <span class="lbl" style="left: 5px; background-color: #d4ba01;">2nd</span>

                                                                    </c:otherwise>
                                                                </c:choose>
                                                            </div>
                                                            <!-- End product label -->
                                                        </a>
                                                        <!-- end product image -->

                                                        <!-- countdown start -->
                                                        <c:if test="${listP.get(i).saleTime!=null}">
                                                            <input type="hidden" class="date" value="${listP.get(i).saleTime}">
                                                            <input type="hidden" class="prod_id" value="${listP.get(i).productID}">
                                                            <div class="saleTime desktop" id="test" data-countdown="${listP.get(i).saleTime}"></div>
                                                        </c:if>

                                                        <!-- countdown end -->

                                                        <!-- Start product button -->
                                                        <div class="variants add">
                                                            <p class="btn btn-addto-cart" tabindex="0" onclick="addCart(${listP.get(i).productID}, 1)">Add To Cart</p>
                                                        </div>
                                                        <div class="button-set">
                                                            <a href="javascript:void(0)" onclick="quickView(${listP.get(i).productID}, 1)" title="Quick View" class="quick-view-popup quick-view" data-toggle="modal" data-target="#content_quickview">
                                                                <i class="icon anm anm-search-plus-r"></i>
                                                            </a>
                                                            <div class="wishlist-btn">
                                                                <a class="wishlist add-to-wishlist" onclick="addWish(${listP.get(i).productID})" title="Add to Wishlist">
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
                                                            <a href="product-detail?id=${listP.get(i).productID}">${listP.get(i).productName}</a>
                                                        </div>
                                                        <!-- End product name -->
                                                        <!-- product price -->
                                                        <div class="product-price">
                                                            <c:choose>
                                                                <c:when test="${listP.get(i).sale==0}">
                                                                    <span class="price">${listP.get(i).price}</span>
                                                                </c:when>
                                                                <c:otherwise>
                                                                    <input type="hidden" value="${listP.get(i).sale}" class="sale">
                                                                    <input type="hidden" value="${listP.get(i).price}" class="oldPrice">
                                                                    <span class ="price" style="font-size: 12px;text-decoration: line-through;">${listP.get(i).price}</span>
                                                                    <span class ="new-price" style="padding-left: 5px; color: #e95144;"></span>
                                                                </c:otherwise>
                                                            </c:choose>
                                                        </div>
                                                        <!-- End product price -->

                                                        <div class="product-review">
                                                            <c:forEach begin="1" end="5" var="x">

                                                                <c:choose>
                                                                    <c:when test="${listP.get(i).rateAVG>=x}">
                                                                        <i class="font-13 fa fa-star"></i>
                                                                    </c:when>
                                                                    <c:when test="${x-listP.get(i).rateAVG==0.5}">
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
                                                    <!-- countdown start -->
                                                    <div class="timermobile">
                                                        <c:if test="${listP.get(i).saleTime!=null}">
                                                            <input type="hidden" class="date" value="${listP.get(i).saleTime}">
                                                            <input type="hidden" class="prod_id" value="${listP.get(i).productID}">
                                                            <div class="saleTime desktop" id="test" data-countdown="${listP.get(i).saleTime}"></div>
                                                        </c:if>

                                                    </div>
                                                    <!-- countdown end -->
                                                </div>
                                            </c:if>
                                        </c:forEach> 
                                        <c:if test="${listP.size()==0}">
                                            <div class="widget-title col-sm-12">
                                                <h2>Products not found...</h2>
                                                <span><a href="shop" style="color: red;">Back to shop</a></span>
                                            </div>

                                        </c:if>
                                    </div>
                                </div>
                            </div>
                            <div class="pagination">
                                <ul>
                                    <c:if test="${page>1}">
                                        <li class="next">
                                            <a href="shop?page=${page>1?page-1:page}${pagesize}${value}">
                                                <i class="fa fa-caret-left" aria-hidden="true"></i>
                                            </a>
                                        </li>
                                    </c:if>
                                    <c:forEach begin="1" end="${endpage}" var="i">
                                        <li class="${i==page?"active":""}">
                                            <a href="shop?page=${i}${pagesize}${value}">${i}</a>
                                        </li>
                                    </c:forEach>  
                                    <c:if test="${page!=endpage&&endpage!=0}">
                                        <li class="next"><a href="shop?page=${page+1}${pagesize}${value}"><i class="fa fa-caret-right" aria-hidden="true"></i></a></li>

                                    </c:if>
                                </ul>
                            </div>
                        </div>
                        <!--End Main Content-->
                    </div>
                </div>

            </div>
            <!--End Body Content-->
            <!--Header-->
            <jsp:include page="layout/footer.jsp"></jsp:include>
                <!--End Header -->

                <!--Scoll Top-->
                <span id="site-scroll"><i class="icon anm anm-angle-up-r"></i></span>
                <!--End Scoll Top-->

                <!--Quick View popup-->
            <jsp:include page="layout/quick-view.jsp"></jsp:include>
                <!--End Quick View popup-->

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
    </body>

    <!-- belle/shop-left-sidebar.html   11 Nov 2019 12:38:58 GMT -->
</html>
