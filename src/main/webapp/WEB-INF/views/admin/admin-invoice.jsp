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



                    <div class="card" style="margin-top: -23px;">
                        <div class="card-body">
                            <div class="invoice">
                                <div class="d-md-flex justify-content-between align-items-center mb-4">
                                    <div>S??? h??a ????n : #${order.orderID}</div>
                                <div>Ng??y : ${order.orderDate}</div>
                            </div>
                            <div class="d-md-flex justify-content-between align-items-center">
                                <h4>H??a ????n mua h??ng</h4>
                                <div>
                                    <img width="120" src="${pageContext.request.contextPath}/us/assets/images/logo.png" alt="logo">
                                </div>
                            </div>
                            <hr class="my-4">
                            <div class="row">
                                <div class="col-md-6">
                                    <p>
                                        <strong>G???i t???</strong>
                                    </p>
                                    <p>Piano Home<br>Ph?? Xuy??n, H?? N???i</p>
                                </div>
                                <div class="col-md-6">
                                    <p class="text-start">
                                        <strong>?????a ch??? nh???n h??ng</strong>
                                    </p>
                                    <p>${order.name}<br>${order.address}<br>S??t : ${order.numberPhone}</p>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table mb-4 mt-4">
                                    <thead class="thead-light">
                                        <tr>
                                            <th>#</th>
                                            <th>T??n s???n ph???m</th>
                                            <th class="text-end">S??? l?????ng</th>
                                            <th class="text-end">????n gi??</th>
                                            <th class="text-end">T???ng gi??</th>
                                            <th class="text-end">Th???i gian b???o h??nh</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <c:forEach var="o" items="${orderDetail}">
                                            <tr class="text-end">
                                                <td class="text-start">${o.product.productID}</td>
                                                <td class="text-start">${o.product.productName}</td>
                                                <td>${o.quanty}</td>
                                                <td class="price">${o.price}</td>
                                                <td class="price">${o.totalPrice}</td>
                                                <td>
                                                    <c:choose>
                                                        <c:when test="${o.product.category.categoryID==1}">
                                                            10 n??m
                                                        </c:when>
                                                        <c:when test="${o.product.category.categoryID==2}">
                                                            5 n??m
                                                        </c:when>
                                                        <c:when test="${o.product.category.categoryID==3}">
                                                            2 n??m
                                                        </c:when>
                                                        <c:otherwise>
                                                            18 th??ng
                                                        </c:otherwise>
                                                    </c:choose>
                                                </td>
                                            </tr>
                                        </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                            <div class="text-end">
                                <p>* L??u ?? : Th???i gian b???o h??nh ???????c t??nh k??? t??? ng??y xu???t h??a ????n</p>
                                T???ng ti???n: <h4 style="margin-top: 12px;" class="text-danger fw-bold price">${order.totalPrice}</h4>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="d-flex gap-3 mb-4 d-print-none justify-content-center" style="margin-top: 15px;">

                    <button onclick="javascript:window.print()" class="btn btn-outline-secondary d-none d-md-block btn-icon col-5">
                        <i class="bi bi-printer"></i> Xu???t h??a ????n
                    </button>

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

