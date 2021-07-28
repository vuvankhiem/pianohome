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


        <!-- Main style file -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/dist/css/app.min.css" type="text/css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/dist/icons/themify-icons/themify-icons.css" type="text/css">

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
            .back{
                position: absolute;
                height: 40px;
                width: 40px;
                border-radius: 50%;
                top: 49px;
            }
            .back a{
                height: 100%;
                width: 100%;
                display: flex;
                justify-content: center;
                align-items: center;
                
                cursor: pointer;
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

                    <div class="row align-items-center mb-4 g-3"style="background: white;border-radius: 12px; height: 80px;margin-top: -25px; padding-left: 12px;">

                        <div style="width: 100%;">
                            <p class="h5 text-dark text-center">Đánh giá sản phẩm</p>
                            <p class="text-center text-danger">Tên sản phẩm : ${p.productName}
                            (
                            <c:forEach begin="1" end="5" var="x">

                                <c:choose>
                                    <c:when test="${p.rateAVG>=x}">
                                        <i class="bi bi-star-fill text-warning"></i>
                                    </c:when>
                                    <c:when test="${x-p.rateAVG==0.5}">
                                        <i class="bi bi-star-half text-warning"></i>
                                    </c:when>
                                    <c:otherwise>
                                        <i class="bi bi-star text-warning"></i>
                                    </c:otherwise>
                                </c:choose>

                            </c:forEach>
                            )
                        </p>
                    </div>
                    <div class="bg-primary back">
                        <a onclick="window.history.back();" title="Back" style="color: white;">
                            <i class="ti-shift-left"></i>
                        </a>
                    </div>
                </div>

                <div class="row g-4">
                    <c:forEach items="${listR}" var="o">
                        <div class="col-lg-4 col-md-12">
                            <div class="card h-100">
                                <div class="card-body">

                                    <div class="summary-cards">
                                        <div>
                                            <div class="d-flex align-items-center mb-3">
                                                <div>
                                                    <h5 class="mb-1">${o.user.firstName} ${o.user.lastName}</h5>
                                                    <p style="margin: 12px 0;">${o.user.email}</p>
                                                    <h6>${o.title}</h6>

                                                    <ul class="list-inline ms-auto mb-0">
                                                        <c:forEach begin="1" end="5" var="x">

                                                            <c:choose>
                                                                <c:when test="${o.rate>=x}">
                                                                    <li class="list-inline-item mb-0">
                                                                        <i class="bi bi-star-fill text-warning"></i>
                                                                    </li>
                                                                </c:when>

                                                                <c:otherwise>
                                                                    <li class="list-inline-item mb-0">
                                                                        <i class="bi bi-star text-warning"></i>
                                                                    </li>
                                                                </c:otherwise>
                                                            </c:choose>

                                                        </c:forEach>
                                                        <li class="list-inline-item mb-0">(${o.rate})</li>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div>${o.review}</div>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-md-end gap-3"style="margin-top: 12px;">

                                        <a href="${pageContext.request.contextPath}/admin/delete-review?id=${o.commentID}" class="btn btn-outline-danger btn-icon ">
                                            <i class="ti-close"></i>Xóa
                                        </a>
                                    </div>
                                </div>

                            </div>
                        </div>
                    </c:forEach>
                    <c:if test="${listR.size()==0}">
                        <p class="h4 text-center text-danger">Chưa có đánh giá. </p>
                    </c:if>
                </div>
            </div>
            <!-- ./ content -->


        </div>
        <!-- ./ layout-wrapper -->

        <!-- Bundle scripts -->
        <script src="${pageContext.request.contextPath}/ad/libs/bundle.js"></script>
        <script src="${pageContext.request.contextPath}/us/assets/js/custom.js"></script>
        <script src="${pageContext.request.contextPath}/ad/dist/js/customAdmin.js"></script>
        <!-- Main Javascript file -->
        <script src="${pageContext.request.contextPath}/ad/dist/js/app.min.js"></script>
    </body>

    <!-- Mirrored from vetra.laborasyon.com/demos/default/user-grid.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 09 Jul 2021 19:07:45 GMT -->

</html>

