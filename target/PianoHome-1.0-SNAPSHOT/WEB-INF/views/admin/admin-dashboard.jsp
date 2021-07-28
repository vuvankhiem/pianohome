<%-- 
    Document   : index
    Created on : Jul 10, 2021, 8:24:52 AM
    Author     : Administrator
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

    <!-- Mirrored from vetra.laborasyon.com/demos/default/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 09 Jul 2021 19:06:55 GMT -->
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
        <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/libs/range-slider/css/ion.rangeSlider.min.css" type="text/css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/dist/icons/themify-icons/themify-icons.css" type="text/css">
        <!-- Slick -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/libs/slick/slick.css" type="text/css">

        <!-- Main style file -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/dist/css/app.min.css" type="text/css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
        <style type="text/css">
            a{
                cursor: pointer;
            }
            .orderStyle{
                transition: 0.3s;

            }
            .orderStyle:hover{
                border-radius: 20px;
                box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.4);
                transition: 0.3s;

            }
        </style>
    </head>
    <body>
        <jsp:include page="layout/menu.jsp"></jsp:include>
            <!-- ./  menu -->

            <!-- layout-wrapper -->
            <div class="layout-wrapper">

                <!-- header -->
            <jsp:include page="layout/header.jsp"></jsp:include>
                <!-- ./ header -->

                <!-- content -->
                <div class="content ">

                    <div class="row row-cols-1 row-cols-md-3 g-4">
                        
                        <div class="col-lg-12 col-md-12">
                            <div class="card widget">
                                <div class="card-header">
                                    <h5 class="card-title">Tổng số đơn hàng và doanh thu trong tháng này</h5>
                                </div>
                                <div class="row g-4">
                                    <div class="col-lg-4 col-md-12">
                                        <div class="card h-100">
                                            <div class="card-body">

                                                <h4 class="mb-3">Orders</h4>
                                                <div class="d-flex mb-3">
                                                    <div class="display-7 text-danger">${orderThisMonth}</div>

                                            </div>

                                            <c:choose>
                                                <c:when test="${pOrderThisMonth>=0}">
                                                    <div class="text-success">
                                                        Tăng ${pOrderThisMonth} % <i class="small bi bi-arrow-up"></i>
                                                    </div>
                                                </c:when>
                                                <c:otherwise>
                                                    <div class="text-danger">
                                                        Giảm ${pOrderThisMonth} % <i class="small bi bi-arrow-down"></i>
                                                    </div>
                                                </c:otherwise>
                                            </c:choose>



                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-12">
                                    <div class="card h-100">
                                        <div class="card-body">

                                            <h4 class="mb-3">Sales</h4>
                                            <div class="d-flex mb-3">
                                                <div class="display-7 price text-danger">${saleThisMonth}</div>

                                            </div>
                                            <c:choose>
                                                <c:when test="${pSaleThisMonth>=0}">
                                                    <div class="text-success">
                                                        Tăng ${pSaleThisMonth} % <i class="small bi bi-arrow-up"></i>
                                                    </div>
                                                </c:when>
                                                <c:otherwise>
                                                    <div class="text-danger">
                                                        Giảm ${pSaleThisMonth} % <i class="small bi bi-arrow-down"></i>
                                                    </div>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-12">

                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12">
                        <div class="card widget">
                            <div class="card-header">
                                <h5 class="card-title">Tổng số đơn hàng và doanh thu trong tháng trước</h5>
                            </div>
                            <div class="row g-4">
                                <div class="col-lg-4 col-md-12">
                                    <div class="card h-100">
                                        <div class="card-body">

                                            <h4 class="mb-3">Orders</h4>
                                            <div class="d-flex mb-3">
                                                <div class="display-7 text-danger">${orderLastMonth}</div>
                                                
                                            </div>
                                            <c:choose>
                                                <c:when test="${pOrderLastMonth>=0}">
                                                    <div class="text-success">
                                                        Tăng ${pOrderLastMonth} % <i class="small bi bi-arrow-up"></i>
                                                    </div>
                                                </c:when>
                                                <c:otherwise>
                                                    <div class="text-danger">
                                                        Giảm ${pOrderLastMonth} % <i class="small bi bi-arrow-down"></i>
                                                    </div>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-12">
                                    <div class="card h-100">
                                        <div class="card-body">

                                            <h4 class="mb-3">Sales</h4>
                                            <div class="d-flex mb-3">
                                                <div class="display-7 price text-danger">${saleLastMonth}</div>
                                                
                                            </div>
                                            <c:choose>
                                                <c:when test="${pSaleLastMonth>=0}">
                                                    <div class="text-success">
                                                        Tăng ${pSaleLastMonth} % <i class="small bi bi-arrow-up"></i>
                                                    </div>
                                                </c:when>
                                                <c:otherwise>
                                                    <div class="text-danger">
                                                        Giảm ${pSaleLastMonth} % <i class="small bi bi-arrow-down"></i>
                                                    </div>
                                                </c:otherwise>
                                            </c:choose>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-4 col-md-12">

                                </div>

                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12">
                        <div class="card widget">
                            <div class="card-header">
                                <h5 class="card-title">Tình trạng đặt hàng của các đơn hàng</h5>
                            </div>
                            <div class="row g-4">

                                <a class="col-md-4" href="${pageContext.request.contextPath}/admin/find-order?status=1">
                                    <div class="card border-0 orderStyle">
                                        <div class="card-body text-center">
                                            <div class="display-5">
                                                <i class="bi bi-hourglass-split text-primary"></i>
                                            </div>
                                            <h5 class="my-3">Đang chờ xử lý</h5>
                                            <div class="text-muted">Tổng : ${order[0]} đơn</div>
                                            <div class="progress mt-3" style="height: 5px">
                                                <div class="progress-bar bg-primary" role="progressbar" style="width: 33.3%"
                                                     aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                    </div>
                                </a>

                                <a class="col-md-4" href="${pageContext.request.contextPath}/admin/find-order?status=2">
                                    <div class="card border-0 orderStyle">
                                        <div class="card-body text-center">
                                            <div class="display-5">
                                                <i class="bi bi-truck text-info"></i>
                                            </div>
                                            <h5 class="my-3 text-info">Đang vận chuyển</h5>
                                            <div class="text-muted">Tổng : ${order[1]} đơn</div>
                                            <div class="progress mt-3" style="height: 5px">
                                                <div class="progress-bar bg-info" role="progressbar" style="width: 66.6%"
                                                     aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <a class="col-md-4" href="${pageContext.request.contextPath}/admin/find-order?status=3">
                                    <div class="card border-0 orderStyle">
                                        <div class="card-body text-center">
                                            <div class="display-5">
                                                <i class="bi bi-check2 text-success"></i>
                                            </div>
                                            <h5 class="my-3 text-success">Giao hàng thành công</h5>
                                            <div class="text-muted">Tổng : ${order[2]} đơn</div>
                                            <div class="progress mt-3" style="height: 5px">
                                                <div class="progress-bar bg-success" role="progressbar" style="width: 100%"
                                                     aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <a class="col-md-4" href="${pageContext.request.contextPath}/admin/find-order?status=5">
                                    <div class="card border-0 orderStyle">
                                        <div class="card-body text-center">
                                            <div class="display-5">
                                                <i class="bi bi-x text-danger"></i>
                                            </div>
                                            <h5 class="my-3 text-danger">Đã hủy</h5>
                                            <div class="text-muted">Tổng : ${order[4]} đơn</div>
                                            <div class="progress mt-3" style="height: 5px">
                                                <div class="progress-bar bg-danger" role="progressbar" style="width: 50%"
                                                     aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                                <a class="col-md-4" href="${pageContext.request.contextPath}/admin/find-order?status=4">
                                    <div class="card border-0 orderStyle">
                                        <div class="card-body text-center">
                                            <div class="display-5">
                                                <i class="bi bi-recycle text-warning"></i>
                                            </div>
                                            <h5 class="my-3 text-warning">Hoàn trả</h5>
                                            <div class="text-muted">Tổng : ${order[3]} đơn</div>
                                            <div class="progress mt-3" style="height: 5px">
                                                <div class="progress-bar bg-warning" role="progressbar" style="width: 100%"
                                                     aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                            </div>
                                        </div>
                                    </div>
                                </a>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-12 col-md-12">
                        <div class="card widget">
                            <div class="card-header d-flex align-items-center justify-content-between">
                                <h5 class="card-title">Top sản phẩm bán chạy</h5>
                                
                            </div>
                            <div class="card-body">
                                <div class="table-responsive">
                                    <table class="table table-custom mb-0" id="recent-products">
                                        <thead>
                                            <tr>
                                                <th class="text-center">ID</th>
                                                <th class="text-center">Ảnh</th>
                                                <th class="text-center">Tên SP</th>
                                                <th class="text-center">Danh mục</th>
                                                <th class="text-center">Giá</th>
                                                <th class="text-center" colspan="3">Actions</th>
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
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
            <!-- ./ content -->

        </div>
        <!-- ./ layout-wrapper -->
        <script src="${pageContext.request.contextPath}/us/assets/js/custom.js"></script>
        <!-- Bundle scripts -->
        <script src="${pageContext.request.contextPath}/ad/libs/bundle.js"></script>
        <script src="${pageContext.request.contextPath}/ad/dist/js/customAdmin.js"></script>
        <!-- Apex chart -->
        <script src="${pageContext.request.contextPath}/ad/libs/charts/apex/apexcharts.min.js"></script>

        <!-- Slick -->
        <script src="${pageContext.request.contextPath}/ad/libs/slick/slick.min.js"></script>

        <!-- Examples -->
        <script src="${pageContext.request.contextPath}/ad/dist/js/examples/dashboard.js"></script>

        <!-- Main Javascript file -->
        <script src="${pageContext.request.contextPath}/ad/dist/js/app.min.js"></script>
    </body>

    <!-- Mirrored from vetra.laborasyon.com/demos/default/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 09 Jul 2021 19:07:30 GMT -->
</html>

