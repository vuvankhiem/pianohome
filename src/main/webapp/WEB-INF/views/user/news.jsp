<%-- 
    Document   : news
    Created on : Jul 10, 2021, 12:32:52 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html class="no-js" lang="en">

    <!-- belle/blog-right-sidebar.html   11 Nov 2019 12:46:09 GMT -->
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>${news==null?"Tin tức":news.title} &ndash; Piano Home</title>
        <meta name="description" content="description">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- Favicon -->
        <link rel="shortcut icon"href="${pageContext.request.contextPath}/us/assets/images/favicon/favicon.png" />
        <!-- Plugins CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/us/assets/css/plugins.css">
        <!-- Bootstap CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/us/assets/css/bootstrap.min.css">
        <!-- Main Style CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/us/assets/css/style.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/us/assets/css/responsive.css">
        <style>
            .resize{
                height: 450px;
                width: 100%;
                overflow: hidden;
                margin-bottom: 15px;
                position: relative;
            }
        </style>
    </head>
    <body class="template-blog belle">
        <div class="pageWrapper">


            <jsp:include page="layout/header.jsp"></jsp:include>

                <!--Body Content-->
                <div id="page-content"style="padding-top: 70px;">
                    <!--Page Title-->
                    <div class="page section-header text-center mb-0">
                        <div class="page-title">
                            <div class="wrapper"><h1 class="page-width">Tin Tức</h1></div>
                        </div>
                    </div>
                    <!--End Page Title-->
                    <div class="bredcrumbWrap">
                        <div class="container breadcrumbs">
                            <a href="${pageContext.request.contextPath}/home" title="Back to the home page">Trang chủ</a><span aria-hidden="true">›</span><span>Tin tức</span>
                    </div>
                </div>
                <div class="container">
                    <div class="row" style="align-items: initial;">
                        <!--Main Content-->
                        <div class="col-12 col-sm-12 col-md-9 col-lg-9 main-col">
                            <div class="custom-search">
                                <form action="${pageContext.request.contextPath}/news" method="get" class="input-group search-header search" role="search" style="position: relative;">
                                    <input class="search-header__input search__input input-group__field" type="search" name="s" placeholder="Search" aria-label="Search" autocomplete="off">
                                    <span class="input-group__btn"><button class="btnSearch" type="submit"> <i class="icon anm anm-search-l"></i> </button></span>
                                </form>
                            </div>
                            <div class="blog--list-view blog--grid-load-more">
                                <c:choose>
                                    <c:when test="${modify==0}">
                                        <c:forEach var="o" items="${listN}">
                                            <div class="article"> 
                                                <!-- Article Image --> 
                                                <a class="article_featured-image" href="${pageContext.request.contextPath}/news?id=${o.newsID}">
                                                    <div class="resize"><img class="blur-up lazyload" data-src="${o.image}" src="${o.image}" title="${o.title}" style="position: absolute;top: -30%;"></div>
                                                </a> 
                                                <h2 class="h3"><a href="${pageContext.request.contextPath}/news?id=${o.newsID}">${o.title}</a></h2>
                                                <ul class="publish-detail">                      
                                                    <li><i class="anm anm-user-al" aria-hidden="true"></i>  Admin</li>
                                                    <li><i class="icon anm anm-clock-r"></i> <time datetime="">  ${o.datePost}</time></li>
                                                    <li><i class="icon anm anm-book-r"></i>  ${o.category} </li>
                                                </ul>
                                                <div class="rte"> 
                                                    ${o.shortContent} .....
                                                </div>
                                            </div>
                                        </c:forEach>
                                        <c:if test="${endPage!=0}">
                                            <div class="pagination">
                                                <ul>
                                                    <c:if test="${page>1}">
                                                        <li class="next">
                                                            <a href="${pageContext.request.contextPath}/news?page=${page>1?page-1:page}">
                                                                <i class="fa fa-caret-left" aria-hidden="true"></i>
                                                            </a>
                                                        </li>
                                                    </c:if>
                                                    <c:forEach begin="1" end="${endPage}" var="i">
                                                        <li class="${i==page?"active":""}">
                                                            <a href="${pageContext.request.contextPath}/news?page=${i}">${i}</a>
                                                        </li>
                                                    </c:forEach>  
                                                    <c:if test="${page!=endPage&&endPage!=0}">
                                                        <li class="next"><a href="${pageContext.request.contextPath}/news?page=${page+1}"><i class="fa fa-caret-right" aria-hidden="true"></i></a></li>

                                                    </c:if>
                                                </ul>
                                            </div>
                                        </c:if>
                                    </c:when>
                                    <c:otherwise>
                                        <div class="article"> 
                                            <!-- Article Image --> 
                                            <a class="article_featured-image">
                                                <div><img class="blur-up lazyload" data-src="${news.image}" src="${news.image}" title="${news.title}"></div>
                                            </a> 
                                            <h2 class="h3"><a>${news.title}</a></h2>
                                            <ul class="publish-detail">                      
                                                <li><i class="anm anm-user-al" aria-hidden="true"></i>  Admin</li>
                                                <li><i class="icon anm anm-clock-r"></i> <time datetime="">  ${news.datePost}</time></li>
                                                <li><i class="icon anm anm-book-r"></i>  ${news.category} </li>
                                            </ul>
                                            <div class="rte"> 
                                                ${news.content}
                                            </div>
                                        </div>
                                    </c:otherwise>
                                </c:choose>

                            </div>
                        </div>

                        <!--End Main Content-->
                        <!--Sidebar-->
                        <div class="col-12 col-sm-12 col-md-3 col-lg-3 sidebar">
                            <div class="sidebar_tags">
                                <div class="sidebar_widget categories">
                                    <div class="widget-title"><h2>Danh mục</h2></div>
                                    <div class="widget-content">
                                        <ul class="sidebar_categories">
                                            <li class="lvl-1  active"><a href="${pageContext.request.contextPath}/news" class="site-nav lvl-1">Tất cả</a></li>
                                            <li class="lvl-1  active"><a href="${pageContext.request.contextPath}/news?c=Tin tức" class="site-nav lvl-1">Tin tức</a></li>
                                            <li class="lvl-1 "><a href="${pageContext.request.contextPath}/news?c=Sheet nhạc" class="site-nav lvl-1">Sheet nhạc</a></li>
                                            <li class="lvl-1 "><a href="${pageContext.request.contextPath}/news?c=Hướng dẫn sử dụng đàn piano điện" class="site-nav lvl-1">Hướng dẫn sử dụng đàn piano điện</a></li>
                                            <li class="lvl-1 "><a href="${pageContext.request.contextPath}/news?c=Blog" class="site-nav lvl-1">Blog</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <c:if test="${listRelatedN!=null}">

                                    <div class="sidebar_widget">
                                        <div class="widget-title"><h2>Bài viết liên quan</h2></div>
                                        <div class="widget-content">
                                            <div class="list list-sidebar-products">
                                                <div class="grid">
                                                    <c:forEach items="${listRelatedN}" var="o">   
                                                        <div class="grid__item">
                                                            <div class="mini-list-item">
                                                                <div class="mini-view_image">
                                                                    <a class="grid-view-item__link" href="${pageContext.request.contextPath}/news?id=${o.newsID}">
                                                                        <img class="grid-view-item__image blur-up lazyload" data-src="${o.image}" src="${o.image}" alt="" />
                                                                    </a>
                                                                </div>
                                                                <div class="details"> <a class="grid-view-item__title" href="#">${o.title}</a>
                                                                    <div class="grid-view-item__meta"><span class="article__date"> <time datetime="${o.datePost}">${o.datePost}</time></span></div>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </c:forEach>
                                                </div>
                                            </div>
                                        </div>
                                    </div>

                                </c:if>
                                <div class="sidebar_widget">
                                    <div class="widget-title"><h2>Bài đăng gần đây</h2></div>
                                    <div class="widget-content">
                                        <div class="list list-sidebar-products">
                                            <div class="grid">
                                                <c:forEach items="${sessionScope.listRecentPost}" var="o">
                                                    <div class="grid__item">
                                                        <div class="mini-list-item">
                                                            <div class="mini-view_image">
                                                                <a class="grid-view-item__link" href="${pageContext.request.contextPath}/news?id=${o.newsID}">
                                                                    <img class="grid-view-item__image blur-up lazyload" data-src="${o.image}" src="${o.image}" alt="" />
                                                                </a>
                                                            </div>
                                                            <div class="details"> <a class="grid-view-item__title" href="${pageContext.request.contextPath}/news?id=${o.newsID}">${o.title}</a>
                                                                <div class="grid-view-item__meta"><span class="article__date"> <time datetime="${o.datePost}">${o.datePost}</time></span></div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="sidebar_widget">
                                    <div class="widget-title"><h2>Sản phẩm mới</h2></div>
                                    <div class="widget-content">
                                        <div class="list list-sidebar-products">
                                            <div class="grid">
                                                <c:forEach items="${sessionScope.listPNew}" var="o">
                                                    <div class="grid__item">
                                                        <div class="mini-list-item">
                                                            <div class="mini-view_image">
                                                                <a class="grid-view-item__link" href="${pageContext.request.contextPath}/product-detail?id=${o.productID}">
                                                                    <img class="grid-view-item__image blur-up lazyload" data-src="${o.image1}" src="${o.image1}" alt="" />
                                                                </a>
                                                            </div>
                                                            <div class="details"> <a class="grid-view-item__title" href="${pageContext.request.contextPath}/product-detail?id=${o.productID}">${o.productName}</a>
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
                                                            </div>
                                                        </div>
                                                    </div>
                                                </c:forEach>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!--End Sidebar-->
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

    <!-- belle/blog-right-sidebar.html   11 Nov 2019 12:46:09 GMT -->
</html>
