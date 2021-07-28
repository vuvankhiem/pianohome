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
        <title>Admin - Piano Home</title>

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

                        <div class="col-md-5" style="margin-top: 0;">
                            <form action="${pageContext.request.contextPath}/admin/manage-news">
                            <div class="input-group">
                                <input type="text" class="form-control" name="txt_search" placeholder="Search">
                                <button class="btn btn-outline-light" type="submit">
                                    <i class="bi bi-search"></i>
                                </button>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-7" style="margin-top: 0; display: flex;justify-content: flex-end;">
                        <a class="btn btn-primary btn-icon" href="${pageContext.request.contextPath}/admin/add-update-news">
                            <i class="bi bi-plus-circle"></i> Thêm bài viết
                        </a>
                    </div>
                </div>
                <div class="row g-4">
                    <c:forEach items="${listN}" var="o">
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="card">
                                <div class="card-body">
                                    <div class="d-flex">
                                        <div class="avatar avatar-xl mb-3" style="margin-right:10px;min-width:5.8rem;">
                                            <img src="${o.image}" class="rounded float-start" alt="...">
                                        </div>
                                        <div class="mb-4">
                                            <h5 class="mb-1">${o.title}</h5>
                                            <div class="text-muted">
                                                Ngày đăng : ${o.datePost}
                                            </div>
                                        </div>
                                    </div>
                                    <div class="mb-4">
                                        ${o.shortContent}
                                    </div>
                                    <div class="d-flex justify-content-center gap-3">
                                        <a href="${pageContext.request.contextPath}/admin/add-update-news?id=${o.newsID}" class="btn btn-outline-secondary btn-icon col-md-6">
                                            <i class="bi bi-arrow-repeat"></i> Cập nhật
                                        </a>
                                        <a href="${pageContext.request.contextPath}/admin/delete-news?id=${o.newsID}" class="btn btn-outline-warning btn-icon col-md-6">
                                            <i class="bi bi-x"></i> Xóa
                                        </a>
                                    </div>
                                </div>

                            </div>

                        </div>
                    </c:forEach>
                    <c:if test="${listN.size()==0}">
                        <p class="h3">Not found !</p>
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

