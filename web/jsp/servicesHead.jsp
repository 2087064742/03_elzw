<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/17 0017
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Header -->

<header class="header">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="header_content d-flex flex-row align-items-center justify-content-start">
                    <div class="logo">展示<span>文化</span></div>
                    <nav class="main_nav">
                        <ul class="d-flex flex-row align-items-center justify-content-start">
                            <li><a href="${pageContext.request.contextPath}/index">主页</a></li>
                            <li><a href="${pageContext.request.contextPath}/about">了解</a></li>
                            <li class="active"><a href="#">展示</a></li>
                            <li><a href="${pageContext.request.contextPath}/jsp/release.jsp">发布</a></li>
                        </ul>
                    </nav>
                    <c:if test="${empty user}"><div class="join_button ml-auto"><a href="${pageContext.request.contextPath}/EntryRepetitionServlet?id=3">加入我们！</a></div></c:if>
                    <c:if test="${not empty user}"><div style="margin-left:39%"><span class="label label-warning">欢迎: ${user.username}</span><p><a href="${pageContext.request.contextPath}/user?id=3">退出登录</a></p></c:if></div>
                    <div class="social header_social">
                        <ul class="d-flex flex-row align-items-center justify-content-start">
                            <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>user
                            <li><a href="#"><i class="fa fa-instagram" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-facebook" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-twitter" aria-hidden="true"></i></a></li>
                        </ul>
                    </div>
                    <div class="hamburger ml-auto"><i class="fa fa-bars" aria-hidden="true"></i></div>
                </div>
            </div>
        </div>
    </div>
</header>

<!-- Home -->

<div class="home">
    <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/images/17.jpg" data-speed="0.8"></div>
    <div class="home_container">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="home_content">
                        <div class="home_title">展示</div>
                        <div class="breadcrumbs">
                            <ul class="d-flex flex-row align-items-center justify-content-start">
                                <li><a href="${pageContext.request.contextPath}/index">Home</a></li>
                                <li>乡土文化</li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
