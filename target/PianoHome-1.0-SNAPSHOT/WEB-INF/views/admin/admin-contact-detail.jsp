<%--
    Document   : add-update-product-page
    Created on : Jul 11, 2021, 5:37:51 PM
    Author     : Administrator
add-update-product-page
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" %>
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
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&amp;display=swap"
          rel="stylesheet">

    <!-- Bootstrap icons -->
    <link rel="stylesheet"
          href="${pageContext.request.contextPath}/ad/dist/icons/bootstrap-icons-1.4.0/bootstrap-icons.min.css"
          type="text/css">
    <!-- Bootstrap Docs -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/dist/css/bootstrap-docs.css" type="text/css">

    <!-- Slick -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/libs/slick/slick.css" type="text/css">

    <!-- Main style file -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/dist/css/app.min.css" type="text/css">
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        .box {
            display: flex;
            border-radius: 20px;
            background: white;
            width: 90%;
            height: auto;
            margin-left: 33px;
        }

        .box-1 {
            padding: 20px;
            border-bottom-left-radius: 20px;
            border-top-left-radius: 20px;
            background: #a2f5d9;
        }

        .form {
            padding: 20px;
            background: antiquewhite;
            border-bottom-right-radius: 20px;
            border-top-right-radius: 20px;
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

    <div class="box">


        <div class="col-6 box-1">

            <h4 class="mb-0" style="padding: 0 48px;">
                ${contact.subjectContact}
            </h4>
            <div class="d-flex align-items-center my-4 justify-content-center">
                <div class="d-flex align-items-center justify-content-center">
                    <div class="avatar me-3">
                        <img src="${pageContext.request.contextPath}/ad/assets/image/avatar.png" class="rounded-circle"
                             alt="image">
                    </div>
                    <div>
                        <h6 class="mb-1">
                            ${contact.name}
                            <span class="d-sm-inline fw-normal d-none text-muted ms-2">&lt;${contact.email}&gt;</span>
                        </h6>
                        <span class="small text-muted">to PianoHome on <span
                                class="text-muted">${contact.date}</span></span>
                    </div>
                </div>

            </div>
            <div class="mb-4 text-center">
                <p>${contact.message}</p>
            </div>


        </div>
        <div class="col-6 form">

            <h6 class="mb-4 text-center">Reply</h6>
            <form action="${pageContext.request.contextPath}/admin/reply" method="post">
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">To</label>
                    <input type="email" class="form-control" name="email" value="${contact.email}">
                </div>
                <div class="mb-3">
                    <label for="exampleFormControlInput1" class="form-label">Subject</label>
                    <input type="text" name="subject" class="form-control">

                </div>
                <div class="mb-3">
                    <label for="exampleFormControlTextarea1" class="form-label">Message</label>
                    <textarea class="form-control" name="message" id="exampleFormControlTextarea1" rows="3"></textarea>
                </div>
                <div class="" style="display: flex; justify-content: space-around;">
                    <button type="submit" class="btn btn-outline-success col-5">Gửi Mail</button>
                    <a href="${pageContext.request.contextPath}/admin/delete-contact?id=${contact.contactID}" class="btn btn-outline-danger col-5">Xóa liên lạc</a>
                </div>
            </form>
        </div>


    </div>
    <!-- ./ content -->


</div>
<!-- ./ layout-wrapper -->

<!-- Bundle scripts -->
<script src="${pageContext.request.contextPath}/libraries/ckeditor/config.js"></script>
<script src="${pageContext.request.contextPath}/ad/libs/bundle.js"></script>

<!-- Apex chart -->
<script src="${pageContext.request.contextPath}/ad/libs/charts/apex/apexcharts.min.js"></script>

<!-- Slick -->
<script src="${pageContext.request.contextPath}/ad/libs/slick/slick.min.js"></script>

<!-- Examples -->
<script src="${pageContext.request.contextPath}/ad/dist/js/examples/dashboard.js"></script>

<!-- Main Javascript file -->
<script src="${pageContext.request.contextPath}/ad/dist/js/app.min.js"></script>
<script src="${pageContext.request.contextPath}/ad/dist/js/customAdmin.js"></script>
<!-- Examples -->
<script src="${pageContext.request.contextPath}/us/assets/js/vendor/jquery-3.3.1.min.js"></script>
<script src="${pageContext.request.contextPath}/ad/dist/js/customAdmin.js"></script>

</body>

<!--

Mirrored from vetra.laborasyon.com/demos/default/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 09 Jul 2021 19:07:30 GMT -->

</html>
