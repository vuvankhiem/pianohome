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
        <style type="text/css">
            .view-detail{
                transition: 0.3s;
            }
            .view-detail:hover{
                color: #ea4444;
                transition: 0.3s;
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
                        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="#">
                                        <i class="bi bi-globe2 small me-2"></i> Dashboard
                                    </a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Orders</li>
                            </ol>
                        </nav>
                    </div>

                    <div class="row">
                        <div class="table-responsive">
                            <table class="table table-custom table-lg mb-0" id="orders">
                                <thead>
                                    <tr>
                                        <th class="text-center">ID</th>
                                        <th class="text-center">Tên khách hàng</th>
                                        <th class="text-center">Ngày đặt hàng</th>
                                        <th class="text-center">Tổng số lượng</th>
                                        <th class="text-center">Tổng giá</th>
                                        <th class="text-center">Tình trạng</th>
                                        <th class="text-center">&nbsp;</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${listO}" var="o">
                                    <tr>
                                        <td class="text-center">
                                            #${o.orderID}
                                        </td>
                                        <td class="texxt-center">${o.name}</td>
                                        <td class="text-center">${o.orderDate}</td>
                                        <td class="text-center">${o.totalQuanty}</td>
                                        <td class="text-center price">${o.totalPrice}</td>
                                        <td class="text-center">
                                            <c:choose>
                                                <c:when test="${o.statusOrder==1}">
                                                    <span class="badge bg-primary">Đang chờ xử lý</span>
                                                </c:when>
                                                <c:when test="${o.statusOrder==3}">
                                                    <span class="badge bg-success">Giao hàng thành công</span>
                                                </c:when>
                                                <c:when test="${o.statusOrder==4}">
                                                    <span class="badge bg-warning">Hoàn trả</span>
                                                </c:when>
                                                <c:when test="${o.statusOrder==5}">
                                                    <span class="badge bg-danger">Đã hủy</span>
                                                </c:when>
                                                <c:otherwise>
                                                    <span class="badge bg-info">Đang giao</span>
                                                </c:otherwise>
                                            </c:choose>
                                        </td>
                                        <td class="text-center">
                                            <a class="view-detail" href="${pageContext.request.contextPath}/admin/order-detail?id=${o.orderID}" style="color: black; cursor:pointer; font-size: 12px;">Cập nhật đơn hàng <br>(Xem chi tiết)</a>
                                        </td>
                                    </tr>
                                </c:forEach>

                            </tbody>
                        </table>
                    </div>
                    <c:if test="${listO.size()==0}">
                        <p class="h3">Not found !</p>
                    </c:if>
                    <c:if test="${endPage!=null}">
                        <nav class="mt-4" aria-label="Page navigation example">
                            <ul class="pagination justify-content-center">
                                <li class="page-item">
                                    <a class="page-link" href="manage-order?page=${page-1<=0?"1":page-1}" aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                    </a>
                                </li>
                                <c:forEach begin="1" end="${endPage}" var="i">
                                    <li class="page-item ${i==page?"active":""}">
                                        <a class="page-link" href="manage-order?page=${i}" style="cursor: pointer;">${i}</a>
                                    </li>
                                </c:forEach>
                                <li class="page-item">
                                    <a class="page-link" href="manage-order?page=${page==endPage?page:page+1}" aria-label="Next">
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

