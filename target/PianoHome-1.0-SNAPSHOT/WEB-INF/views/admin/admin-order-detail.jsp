<%-- 
    Document   : product-page
    Created on : Jul 10, 2021, 8:53:47 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&amp;display=swap"
              rel="stylesheet">

        <!-- Bootstrap icons -->
        <link rel="stylesheet"
              href="${pageContext.request.contextPath}/ad/dist/icons/bootstrap-icons-1.4.0/bootstrap-icons.min.css"
              type="text/css">
        <!-- Bootstrap Docs -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/dist/css/bootstrap-docs.css" type="text/css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/dist/icons/themify-icons/themify-icons.css"
              type="text/css">
        <!-- Range slider -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/libs/range-slider/css/ion.rangeSlider.min.css"
              type="text/css">

        <!-- Main style file -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/dist/css/app.min.css" type="text/css">

        <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->
        <style type="text/css">
            .checkStyle {
                font-size: 12px;
                height: 15px;
                padding: 10px;
                line-height: 0;
                border-radius: 30px;
                color: white;
            }

            .form-check-input, .checkStyle {
                cursor: pointer;
            }

            a:hover {
                color: red;
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

                    <div class="mb-4">
                        <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="#">
                                        <i class="bi bi-globe2 small me-2"></i> Dashboard
                                    </a>
                                </li>
                                <li class="breadcrumb-item active" aria-current="page">Order Detail</li>
                            </ol>
                        </nav>
                    </div>

                    <div class="row">
                        <div class="col-lg-8 col-md-12">
                            <div class="card mb-4">
                                <div class="card-body" style="height:198px;">
                                    <div class="mb-5 d-flex align-items-center justify-content-between">
                                        <span style="margin-left:4px;">Order No : <span
                                                style="color:#ff470d;">#${order.orderID}</span></span>

                                    <c:choose>
                                        <c:when test="${order.statusOrder==1}">
                                            <span class="badge bg-primary" style="margin-right:28px;">Đang chờ xử lý</span>
                                        </c:when>
                                        <c:when test="${order.statusOrder==3}">
                                            <span class="badge bg-success"
                                                  style="margin-right:28px;">Giao hàng thành công</span>
                                        </c:when>
                                        <c:when test="${order.statusOrder==4}">
                                            <span class="badge bg-warning" style="margin-right:28px;">Hoàn trả</span>
                                        </c:when>
                                        <c:when test="${order.statusOrder==5}">
                                            <span class="badge bg-danger" style="margin-right:28px;">Đã hủy</span>
                                        </c:when>
                                        <c:otherwise>
                                            <span class="badge bg-info" style="margin-right:28px;">Đang giao</span>
                                        </c:otherwise>
                                    </c:choose>
                                </div>
                                <div class="row mb-5 g-4" style="text-align:center;">
                                    <div class="col-md-3 col-sm-6">
                                        <p class="fw-bold">Order Created at</p>
                                        ${order.orderDate}
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <p class="fw-bold">Name</p>
                                        ${order.name}
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <p class="fw-bold">Email</p>
                                        ${order.email}
                                    </div>
                                    <div class="col-md-3 col-sm-6">
                                        <p class="fw-bold">Contact No</p>
                                        ${order.numberPhone}
                                    </div>
                                </div>

                            </div>
                        </div>
                        <div class="card widget">
                            <h5 class="card-header" style="height:0px;"></h5>
                            <div class="card-body" style="margin-top:-12px;">
                                <div class="table-responsive">
                                    <table class="table table-custom mb-0">
                                        <thead>
                                            <tr>
                                                <th class="text-center">Photo</th>
                                                <th class="text-center">Name</th>
                                                <th class="text-center">Price</th>
                                                <th class="text-center">Quantity</th>
                                                <th class="text-center">Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>

                                            <c:forEach var="o" items="${orderDetail}">
                                                <tr>
                                                    <td class="text-center">
                                                        <a href="#">
                                                            <img src="${o.product.image1}" class="rounded" width="60" alt="...">
                                                        </a>
                                                    </td>
                                                    <td class="text-center">${o.product.productName}</td>
                                                    <td class="price text-center">${o.price}</td>
                                                    <td class="text-center">${o.quanty}</td>
                                                    <td class="price text-center">${o.totalPrice}</td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="col-lg-4 col-md-12 mt-4 mt-lg-0">
                        <div class="card mb-4">
                            <div class="card-body">
                                <h6 class="card-title mb-4 text-center">Price</h6>
                                <div class="row justify-content-center">
                                    <div class="col-4 text-end">
                                        <strong>Total :</strong>
                                    </div>
                                    <div class="col-7 text-center" style="margin-left: -36px;">
                                        <strong class="price" style="color: #ea4444;">${order.totalPrice}</strong>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="card mb-4">
                            <div class="card-body">
                                <h6 class="card-title mb-4 text-center">Notes</h6>
                                <div class="form-floating">
                                    <textarea class="form-control" id="floatingTextarea2" style="height: 100px"
                                              wrap="virtual">${order.noteOrder.trim()}</textarea>
                                </div>
                            </div>
                        </div>
                        <div class="card">
                            <div class="card-body">
                                <h6 class="card-title mb-4 text-center">Tình trạng đơn hàng</h6>
                                <form class="" action="${pageContext.request.contextPath}/admin/update-status-order"
                                      method="post">
                                    <input type="hidden" name="oId" value="${order.orderID}">

                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input check-input-1" type="radio" name="status"
                                               id="inlineRadio1" value="1" ${order.statusOrder==1?"checked":""}>
                                        <label class="form-check-label checkStyle bg-primary" for="inlineRadio1">Đang chờ xử
                                            lý</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input check-input-2" type="radio" name="status"
                                               id="inlineRadio2" value="2" ${order.statusOrder==2?"checked":""}>
                                        <label class="form-check-label checkStyle bg-info" for="inlineRadio2">Đang giao</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input check-input-3" type="radio" name="status"
                                               id="inlineRadio3" value="3" ${order.statusOrder==3?"checked":""}>
                                        <label class="form-check-label checkStyle bg-success" for="inlineRadio3">Giao hàng thành
                                            công</label>
                                    </div>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input check-input-4" type="radio" name="status"
                                               id="inlineRadio4" value="4" ${order.statusOrder==4?"checked":""}>
                                        <label class="form-check-label checkStyle bg-warning" for="inlineRadio4">Hoàn
                                            trả</label>
                                    </div>
                                    <br>
                                    <div class="form-check form-check-inline">
                                        <input class="form-check-input check-input-5" type="radio" name="status"
                                               id="inlineRadio5" value="5" ${order.statusOrder==5?"checked":""}>
                                        <label class="form-check-label checkStyle bg-danger" for="inlineRadio5">Đã hủy</label>
                                    </div>
                                    <div class="text-center mt-4">
                                        <button class="btn btn-outline-success" style="margin-right: 12px;">Cập nhật</button>
                                        <a href="${pageContext.request.contextPath}/admin/delete-order?id=${order.orderID}"
                                           class="btn btn-outline-danger" style="width: 105px;">Xóa</a>
                                        <a href="${pageContext.request.contextPath}/admin/order-detail?invoice=1&id=${order.orderID}" class="btn btn-outline-secondary col-11" style="margin-top: 12px;">In hóa đơn</a>

                                    </div>
                                </form>

                            </div>

                        </div>
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

