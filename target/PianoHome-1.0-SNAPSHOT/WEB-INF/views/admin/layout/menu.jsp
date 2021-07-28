<%-- 
    Document   : menu
    Created on : Jul 10, 2021, 8:49:05 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<div class="menu">
    <div class="menu-header" style="height: 6%;">
        <a href="index.html" class="btn btn-sm menu-close-btn" style="position: absolute;top: 0;left: 0;width: 100%;background: antiquewhite;">
            <i class="bi bi-x"></i>
        </a>
    </div>
    <div class="menu-body" style="margin-top: 6px;">
        <div class="dropdown"> 
            <a href="#" class="d-flex align-items-center" data-bs-toggle="dropdown">
                <div class="avatar me-3">
                    <img src="${pageContext.request.contextPath}/ad/assets/image/admin.jpg"
                         class="rounded-circle" alt="image">
                </div>
                <div>
                    <div class="fw-bold">Vũ Văn Khiêm</div>
                    <small class="text-muted">Admin - Sales Manager</small>
                </div>
            </a>
            <div class="dropdown-menu dropdown-menu-end">
                <a href="${pageContext.request.contextPath}/home" class="dropdown-item d-flex align-items-center">
                    <i class="bi bi-back dropdown-item-icon"></i> Quay trở lại cửa hàng
                </a>
                
                <a href="${pageContext.request.contextPath}/log-out" class="dropdown-item d-flex align-items-center text-danger"
                   target="_blank">
                    <i class="bi bi-box-arrow-right dropdown-item-icon"></i> Đăng xuất
                </a>
            </div>
        </div>
        <ul>
            <li class="menu-divider">E-Commerce</li>
            <li>
                <a  class="${active==1?"active":""}"
                    href="${pageContext.request.contextPath}/admin">
                    <span class="nav-link-icon">
                        <i class="bi bi-bar-chart"></i>
                    </span>
                    <span>Dashboard</span>
                </a>
            </li>
            <li>
                <a class="${active==2?"active":""}" href="${pageContext.request.contextPath}/admin/manage-product">
                    <span class="nav-link-icon">
                        <i class="bi bi-truck"></i>
                    </span>
                    <span>Products</span>
                </a>

            </li>
            <li>
                <a class="${active==3?"active":""}" href="${pageContext.request.contextPath}/admin/manage-order">
                    <span class="nav-link-icon">
                        <i class="bi bi-receipt"></i>
                    </span>
                    <span>Orders</span>
                </a>

            </li>

            <li>
                <a class="${active==4?"active":""}" href="${pageContext.request.contextPath}/admin/manage-account">
                    <span class="nav-link-icon">
                        <i class="bi bi-person-circle"></i>
                    </span>
                    <span>Accounts</span>
                </a>
            </li>
            <li>
                <a class="${active==5?"active":""}" href="${pageContext.request.contextPath}/admin/manage-contact"  >
                    <span class="nav-link-icon">
                        <i class="bi bi-person-badge"></i>
                    </span>
                    <span>Contacts</span>
                </a>
            </li>
            <li>
                <a class="${active==6?"active":""}" href="${pageContext.request.contextPath}/admin/manage-news" >
                    <span class="nav-link-icon">
                        <i class="bi bi-receipt"></i>
                    </span>
                    <span>News</span>
                </a>
            </li>
           
        </ul>
    </div>
</div>
