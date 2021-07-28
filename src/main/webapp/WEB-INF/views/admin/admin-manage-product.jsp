<%-- 
    Document   : add-update-product-page
    Created on : Jul 11, 2021, 5:37:51 PM
    Author     : Administrator
add-update-product-page
--%>

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

        <!-- Slick -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/libs/slick/slick.css" type="text/css">

        <!-- Main style file -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/ad/dist/css/app.min.css" type="text/css">
        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
          <![endif]-->
        <script type="text/javascript" src="${pageContext.request.contextPath}/libraries/ckeditor/ckeditor.js">


        </script>
        <script type="text/javascript" src="${pageContext.request.contextPath}/libraries/ckfinder/ckfinder.js">


        </script>
    <ckfinder:ckfinder basePath="/CKFinderJava/ckfinder/" width="700" height="500" />

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
                <div class="md-4 text-center">
                    <nav style="--bs-breadcrumb-divider: '>';" aria-label="breadcrumb">
                        <ol class="breadcrumb">
                            <li class="breadcrumb-item">
                                <a href="#">
                                    <i class="bi bi-globe2 small me-2"></i> Dashboard
                                </a>
                            </li>
                            <li class="breadcrumb-item active" aria-current="page">Sản phẩm</li>
                            <li class="breadcrumb-item active" aria-current="page">${option}</li>
                    </ol>
                </nav>
            </div>
            <div class="row " style="display:flex;justify-content:center;">
                <div class="order-2 order-lg-1 col-lg-12 bd-content" style="background:white; border-radius:30px;padding:30px;">


                    <form class="row g-3" action="${pageContext.request.contextPath}/admin/${uri}" 
                          method="post" enctype="multipart/form-data">
                        <div class="col-md-6">
                            <label for="inputEmail4" class="form-label">Tên sản phẩm</label>
                            <input type="text" name="productName" class="form-control" id="inputEmail4" value="${sessionScope.p.productName}">
                        </div>
                        <div class="col-md-6">
                            <label for="inputState" class="form-label">Danh mục sản phẩm</label>
                            <select id="inputState" name="cateID" class="form-select">
                                <option value="1" ${sessionScope.p.category.categoryID==1?"selected":""}>Grand Piano</option>
                                <option value="2" ${sessionScope.p.category.categoryID==2?"selected":""}>Upright Piano</option>
                                <option value="3" ${sessionScope.p.category.categoryID==3?"selected":""}>Digital Piano</option>
                                <option value="4" ${sessionScope.p.category.categoryID==4?"selected":""}>Organ</option>
                            </select>

                        </div>

                        <div class="col-4">
                            <label for="formFile" class="form-label">Ảnh 1 (ảnh chính)</label>
                            <input class="form-control" name="image1" type="file" id="formFile">
                            <img src="${sessionScope.p.image1}" style="height: 15px; width: 15px; border-radius: 50%;"/>

                        </div>
                        <div class="col-4">
                            <label for="formFile" class="form-label">Ảnh 2</label>
                            <input class="form-control" name="image2" type="file" id="formFile">
                        </div>

                        <div class="col-4">
                            <label for="formFile" class="form-label">Ảnh 3</label>
                            <input class="form-control" name="image3" type="file" id="formFile">
                        </div>
                        <div class="col-md-4">
                            <label for="inputPassword4" class="form-label">Giá bán</label>
                            <input value="${sessionScope.p.price}" type="number" name="price" class="form-control" id="price" min="0" onkeyup="NewPrice()">
                        </div>
                        <div class="col-md-4">
                            <label for="inputPassword4" class="form-label">Sales</label>
                            <input value="${sessionScope.p.sale}" type="number" name="sale" class="form-control" id="sale" min="0" max="100" onkeyup="NewPrice()">
                        </div>

                        <div class="col-md-4">
                            <label for="inputPassword4" class="form-label">Giá bán sau Sale</label>
                            <input type="number" class="form-control" id="priceSale" readonly>
                        </div>

                        <div class="col-md-7">
                            <label for="inputPassword4" class="form-label">Ngày sale</label>
                            <input value="${sessionScope.p.saleTime}" type="date" name="dateSale" class="form-control">

                        </div>
                        <div class="col-md-5">
                            <label for="inputPassword4" class="form-label">Tình trạng sản phẩm</label>
                            <select id="inputState" name="status" class="form-select">
                                <option value="0" ${sessionScope.p.status==0?"selected":""}>Mới</option>
                                <option value="1" ${sessionScope.p.status==1?"selected":""}>Cũ</option>

                            </select>
                        </div>
                        <div class="col-md-12">
                            <label for="inputPassword4" class="form-label" style="margin-bottom:16px;">Mô tả ngắn</label>
                            <textarea name="short_des" id="editor1">${sessionScope.p.description}</textarea>

                        </div>
                        <div class="col-md-12">
                            <label for="inputPassword4" class="form-label" style="margin-bottom:16px;">Mô tả chi tiết sản phẩm</label>
                            <textarea name="long_des" id="editor">${sessionScope.p.fulldescription}</textarea>

                        </div>
                        <div class="col-md-12">
                            <label for="inputPassword4" class="form-label" style="margin-bottom:16px;">Thông số kĩ thuật</label>
                            <textarea name="spec" id="editor3">${sessionScope.p.spec}</textarea>

                        </div>
                        <div class="d-grid gap-2 col-6 mx-auto">
                            <button type="submit" class="btn btn-outline-primary">${option}</button>
                        </div>


                    </form>
                </div>

            </div>

        </div>
        <!-- ./ content -->

        <!-- content-footer -->
        <footer class="content-footer">
            <div>© 2021 Vetra - <a href="https://laborasyon.com/" target="_blank">Laborasyon</a></div>
            <div>
                <nav class="nav gap-4">
                    <a href="https://themeforest.net/licenses/standard" class="nav-link">Licenses</a>
                    <a href="#" class="nav-link">Change Log</a>
                    <a href="#" class="nav-link">Get Help</a>
                </nav>
            </div>
        </footer>
        <!-- ./ content-footer -->

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
    <script type="text/javascript">


                                var config2 = {};
                                config2.entities_latin = false;
                                config2.toolbarGroups = [
                                    {name: 'document', groups: ['mode', 'document', 'doctools']},
                                    {name: 'clipboard', groups: ['clipboard', 'undo']},
                                    {name: 'editing', groups: ['find', 'selection', 'spellchecker', 'editing']},
                                    {name: 'forms', groups: ['forms']},
                                    '/',
                                    {name: 'basicstyles', groups: ['basicstyles', 'cleanup']},
                                    {name: 'paragraph', groups: ['list', 'indent', 'blocks', 'align', 'bidi', 'paragraph']},
                                    {name: 'links', groups: ['links']},
                                    {name: 'insert', groups: ['insert']},
                                    '/',
                                    {name: 'styles', groups: ['styles']},
                                    {name: 'colors', groups: ['colors']},
                                    {name: 'tools', groups: ['tools']},
                                    {name: 'others', groups: ['others']},
                                    {name: 'about', groups: ['about']}
                                ];

                                config2.removeButtons = 'Form,Checkbox,Radio,TextField,Textarea,Select,Button,ImageButton,HiddenField,Blockquote,CreateDiv,Language,Anchor,About';
                                config2.extraPlugins = 'html5video';
                                config2.extraPlugins = 'videoembed';
                                var edittor = CKEDITOR.replace('editor', config2);
                                CKFinder.setupCKEditor(edittor, '${pageContext.request.contextPath}/libraries/ckfinder');
    </script>

</body>

<!--
                                
Mirrored from vetra.laborasyon.com/demos/default/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 09 Jul 2021 19:07:30 GMT -->

</html>
