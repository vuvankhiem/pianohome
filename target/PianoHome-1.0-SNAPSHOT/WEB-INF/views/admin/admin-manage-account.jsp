<%-- 
    Document   : user-page
    Created on : Jul 16, 2021, 9:34:06 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <!-- Mirrored from vetra.laborasyon.com/demos/default/user-grid.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 09 Jul 2021 19:07:45 GMT -->

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


        <!-- Main style file -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/dist/css/app.min.css" type="text/css">

        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
        <style>
            .status{
                position: absolute;
                right: -20px;
                transform: rotate(45deg);
                width: 63px;
                height: 27px;
            }
        </style>
    </head>

    <body>

        <!-- preloader -->
        <div class="preloader">
            <img src="https://vetra.laborasyon.com/assets/images/logo.svg" alt="logo">
            <div class="preloader-icon"></div>
        </div>
        <!-- ./ preloader -->

        <jsp:include page="layout/menu.jsp"></jsp:include>

            <!-- layout-wrapper -->
            <div class="layout-wrapper">

            <jsp:include page="layout/header.jsp"></jsp:include>

                <!-- content -->
                <div class="content ">

                    <div class="row align-items-center mb-4 g-3"style="background: white;border-radius: 12px; height: 80px;margin-top: -25px;">
                        <div class="col-md-9 " style="display:flex;align-items: center; margin: 0;height: 100%;">
                            <p class="h2">Users</p>
                            <h6 class="mb-0" style="margin-left:12px;color:#ea4444;">Total of ${count} users are listed</h6>
                        </div>
                        <div class="col-md-3 ms-auto" style="margin: 0;">
                            <form action="${pageContext.request.contextPath}/admin/manage-account">
                                <div class="input-group">
                                    <input type="text" name="search" class="form-control" placeholder="Search">
                                    <button class="btn btn-outline-light" type="button">
                                        <i class="bi bi-search"></i>
                                    </button>
                                </div>
                            </form>
                        </div>
                    </div>

                    <div class="row g-4">
                    <c:forEach items="${listU}" var="o">
                        <div class="col-lg-4 col-md-6 col-sm-12">
                            <div class="card" style="overflow: hidden;">
                                <div class="card-body text-center">
                                    <div class="avatar avatar-xl mb-3">
                                        <c:choose>
                                            <c:when test="${o.avatar==null}">
                                                <img src="${pageContext.request.contextPath}/ad/assets/image/avatar.png" class="rounded-circle" alt="...">
                                            </c:when>
                                            <c:otherwise>
                                                <img src="${pageContext.request.contextPath}/ad/assets/image/avatar.png" class="rounded-circle" alt="...">
                                            </c:otherwise>
                                        </c:choose>
                                    </div>
                                    <div class="mb-4">
                                        <h5 class="mb-1">${o.firstName} ${o.lastName}</h5>
                                        <div class="text-muted">${o.email}</div>
                                    </div>
                                    <div class="d-flex justify-content-center gap-3">
                                        <a href="${pageContext.request.contextPath}/admin/active-account?uId=${o.userID}&active=true" class="btn btn-outline-success btn-icon">
                                            <i class="bi bi-person-check"></i>Active
                                        </a>
                                        <a href="${pageContext.request.contextPath}/admin/active-account?uId=${o.userID}&active=false" class="btn btn-outline-danger btn-icon">
                                            <i class="bi bi-person-x"></i>Block
                                        </a>
                                    </div>
                                </div>
                                <div class="status" style="background-color: ${o.active==true?"#05b171":"#ea4444"}"></div>


                            </div>
                        </div>
                    </c:forEach>
                    <c:if test="${listU.size()==0}">
                        <p class="h3">Not found !</p>
                    </c:if>
                </div>

                <c:if test="${endPage!=0}">
                    <nav class="mt-4" aria-label="Page navigation example">
                        <ul class="pagination justify-content-center">
                            <li class="page-item">
                                <a class="page-link" href="manage-account?page=${page-1<=0?"1":page-1}" aria-label="Previous">
                                    <span aria-hidden="true">&laquo;</span>
                                </a>
                            </li>
                            <c:forEach begin="1" end="${endPage}" var="i">
                                <li class="page-item ${i==page?"active":""}">
                                    <a class="page-link" href="manage-account?page=${i}" style="cursor: pointer;">${i}</a>
                                </li>
                            </c:forEach>
                            <li class="page-item">
                                <a class="page-link" href="manage-account?page=${page==endPage?page:page+1}" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                </a>
                            </li>
                        </ul>
                    </nav>
                </c:if>

            </div>
            <!-- ./ content -->


        </div>
        <!-- ./ layout-wrapper -->

        <!-- Bundle scripts -->
        <script src="${pageContext.request.contextPath}/ad/libs/bundle.js"></script>

        <script src="${pageContext.request.contextPath}/ad/dist/js/customAdmin.js"></script>
        <!-- Main Javascript file -->
        <script src="${pageContext.request.contextPath}/ad/dist/js/app.min.js"></script>
    </body>

    <!-- Mirrored from vetra.laborasyon.com/demos/default/user-grid.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 09 Jul 2021 19:07:45 GMT -->

</html>

