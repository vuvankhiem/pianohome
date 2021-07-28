<%-- 
    Document   : product-page
    Created on : Jul 10, 2021, 8:53:47 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <!-- Mirrored from vetra.laborasyon.com/demos/default/product-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 09 Jul 2021 19:07:31 GMT -->
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="X-UA-Compatible" content="ie=edge">
        <title>Piano Home</title>

        <!-- Favicon -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/us/assets/images/favicon/favicon.png"/>

        <!-- Google fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com/">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&amp;display=swap" rel="stylesheet">

        <!-- Bootstrap icons -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/dist/icons/bootstrap-icons-1.4.0/bootstrap-icons.min.css" type="text/css">
        <!-- Bootstrap Docs -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/dist/css/bootstrap-docs.css" type="text/css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/dist/icons/themify-icons/themify-icons.css" type="text/css">
        <!-- Range slider -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/libs/range-slider/css/ion.rangeSlider.min.css" type="text/css">

        <!-- Main style file -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/dist/css/app.min.css" type="text/css">

        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <style>
            tr.newStyle{
                transition: 0.35s;
            }
            tr.newStyle:hover{
                background-color: antiquewhite;
                transition: 0.35s;
            }
        </style>
    </head>
    <body>



        <!-- menu -->
        <jsp:include page="layout/menu.jsp"></jsp:include>
            <!-- ./  menu -->

            <!-- layout-wrapper -->
            <div class="layout-wrapper">
                <!-- header -->
            <jsp:include page="layout/header.jsp"></jsp:include>
                <!-- ./ header -->

                <!-- content -->
                <div class="content ">

                    <div class="row align-items-center mb-4 g-3" style="background: white;border-radius: 12px; height: 80px;margin-top: -25px;">
                        <nav class="col-md-4" style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="#">
                                        <i class="bi bi-globe2 small me-2"></i> Dashboard
                                    </a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">
                                    <a href="${pageContext.request.contextPath}/admin/manage-product">
                                    Sản phẩm
                                </a>
                            </li>
                        </ol>
                    </nav>
                    <div class="col-md-4 ms-auto " style="margin-top: 0;">
                        <form action="${pageContext.request.contextPath}/admin/manage-product">
                            <div class="input-group">
                                <input type="text" class="form-control" name="search" placeholder="Search">
                                <button class="btn btn-outline-light" type="button">
                                    <i class="bi bi-search"></i>
                                </button>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-4" style="margin-top: 0; display: flex;justify-content: flex-end;">
                        <a class="btn btn-primary btn-icon" href="${pageContext.request.contextPath}/admin/save-or-update">
                            <i class="bi bi-plus-circle"></i> Thêm sản phẩm
                        </a>
                    </div>
                </div>

                <div class="row" style="margin-top: -16px;">
                    <div class="col-md-12">

                        <div class="table-responsive">
                            <table class="table table-custom table-lg mb-0" id="products">
                                <thead>
                                    <tr>
                                        <th class="text-center">ID</th>
                                        <th class="text-center">Ảnh</th>
                                        <th class="text-center">Tên SP</th>
                                        <th class="text-center">Danh mục</th>
                                        <th class="text-center">Giá</th>
                                        <th colspan="3" class="text-center">Actions</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${listP}" var="o">

                                        <tr class="newStyle">

                                            <td class="text-center">
                                                <a href="">#${o.productID}</a>
                                            </td>
                                            <td class="text-center">
                                                <a href="">
                                                    <img src="${o.image1}" class="rounded" width="40" alt="...">
                                                </a>
                                            </td>
                                            <td class="text-center">${o.productName}</td>
                                            <td class="text-center">
                                                <span class="text-success">${o.category.categoryName}</span>
                                            </td>
                                            <td class="text-center">
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
                                            </td>
                                            <td class="text-center">
                                                <a  href="${pageContext.request.contextPath}/admin/delete-product?id=${o.productID}" style="cursor: pointer;" title="Xoá sản phẩm"><i class="ti-close"></i></a>

                                            </td>
                                            <td class="text-center">
                                                <a href="${pageContext.request.contextPath}/admin/save-or-update?p_id=${o.productID}" title="Cập nhật sản phẩm"><i class="ti-reload"></i></a>
                                            </td>
                                            <td class="text-center">
                                                <a href="${pageContext.request.contextPath}/admin/manage-review?p_id=${o.productID}" title="Xem đánh giá"><i class="ti-comment-alt"></i></a>
                                            </td>
                                        </tr>
                                    </c:forEach>

                                </tbody>
                            </table>
                            <c:if test="${listP.size()==0}">
                                <p class="h3">Not found !</p>
                            </c:if>
                        </div>
                        <c:if test="${endPage!=0}">
                            <nav class="mt-4" aria-label="Page navigation example">
                                <ul class="pagination justify-content-center">
                                    <li class="page-item">
                                        <a class="page-link" href="manage-product?page=${page-1<=0?"1":page-1}" aria-label="Previous">
                                            <span aria-hidden="true">&laquo;</span>
                                        </a>
                                    </li>
                                    <c:forEach begin="1" end="${endPage}" var="i">
                                        <li class="page-item ${i==page?"active":""}">
                                            <a class="page-link" href="manage-product?page=${i}" style="cursor: pointer;">${i}</a>
                                        </li>
                                    </c:forEach>
                                    <li class="page-item">
                                        <a class="page-link" href="manage-product?page=${page==endPage?page:page+1}" aria-label="Next">
                                            <span aria-hidden="true">&raquo;</span>
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                        </c:if>
                    </div>

                </div>

            </div>
            <!-- ./ content -->



        </div>
        <!-- ./ layout-wrapper -->

        <!-- Bundle scripts -->
        <script src="${pageContext.request.contextPath}/us/assets/js/vendor/jquery-3.3.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/us/assets/js/custom.js"></script>
        <script src="${pageContext.request.contextPath}/ad/dist/js/customAdmin.js"></script>
        <script src="${pageContext.request.contextPath}/ad/libs/bundle.js"></script>

        <!-- Range slider -->
        <script src="${pageContext.request.contextPath}/ad/libs/range-slider/js/ion.rangeSlider.min.js"></script>

        <!-- Examples -->
        <script src="${pageContext.request.contextPath}/ad/dist/js/examples/products.js"></script>

        <!-- Main Javascript file -->
        <script src="${pageContext.request.contextPath}/ad/dist/js/app.min.js"></script>

    </body>

    <!-- Mirrored from vetra.laborasyon.com/demos/default/product-list.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 09 Jul 2021 19:07:33 GMT -->
</html>

