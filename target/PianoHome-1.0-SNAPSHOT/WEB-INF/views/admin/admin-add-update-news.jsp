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
        <title>Admin - Piano Home </title>

        <!-- Favicon -->
        <link rel="shortcut icon" href="${pageContext.request.contextPath}/us/assets/images/favicon/favicon.png" />

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
                            <li class="breadcrumb-item active" aria-current="page">Tin tức</li>
                            <li class="breadcrumb-item active" aria-current="page">${option}</li>
                    </ol>
                </nav>
            </div>
            <div class="row " style="display:flex;justify-content:center;">
                <div class="order-2 order-lg-1 col-lg-12 bd-content" style="background:white; border-radius:30px;padding:30px;">


                    <form class="row g-3" action="${pageContext.request.contextPath}/admin/${uri}" 
                          method="post" enctype="multipart/form-data">
                        <div class="col-md-4">
                            <label for="inputEmail4" class="form-label">Tiêu đề</label>
                            <input type="text" name="title" class="form-control" id="inputEmail4" value="${sessionScope.news.title}">
                        </div>
                        <div class="col-md-4">
                            <label for="formFile" class="form-label">Hình ảnh</label>
                            <input class="form-control" name="image" type="file" id="formFile">
                        </div>
                        <div class="col-md-4">
                            <label for="inputState" class="form-label">Danh mục</label>
                            <select id="inputState" name="cate" class="form-select">
                                <option value="Tin tức" ${sessionScope.news.category=="Tin tức"?"selected":""}>Tin tức</option>
                                <option value="Sheet nhạc" ${sessionScope.news.category=="Sheet nhạc"?"selected":""}>Sheet nhạc</option>
                                <option value="Hướng dẫn sử dụng đàn piano điện" ${sessionScope.news.category=="Hướng dẫn sử dụng đàn piano điện"?"selected":""}>Hướng dẫn sử dụng đàn piano điện</option>
                                <option value="Blog" ${sessionScope.news.category=="Blog"?"selected":""}>Blog</option>
                            </select>

                        </div>
                        <div class="col-md-12">
                            <label for="inputEmail4" class="form-label">Nội dung tóm tắt</label>
                            <textarea class="form-control" name="shortContent" id="exampleFormControlTextarea1" placeholder="Khoảng 350 kí tự" rows="3" maxlength="350">${sessionScope.news.shortContent}</textarea>

                        </div>
                        <div class="col-md-12">
                            <label for="inputPassword4" class="form-label" style="margin-bottom:16px;">Nội dung</label>
                            <textarea name="content" id="editor">${sessionScope.news.content}</textarea>

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

            config2.removeButtons = 'Form,Checkbox,Radio,TextField,Textarea,Select,Button,ImageButton,HiddenField,Blockquote,CreateDiv,Language,About';
            config2.extraPlugins = "toc,videoembed,html5video";
            var edittor = CKEDITOR.replace('editor', config2);
            CKFinder.setupCKEditor(edittor, '${pageContext.request.contextPath}/libraries/ckfinder');
    </script>

</body>

<!--
                                
Mirrored from vetra.laborasyon.com/demos/default/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Fri, 09 Jul 2021 19:07:30 GMT -->

</html>
