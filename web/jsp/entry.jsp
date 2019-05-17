<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/14 0014
  Time: 19:12
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>登陆</title>
    <%
        String path=request.getContextPath();
    %>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/bootstrap-4.1.2/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/OwlCarousel2-2.2.1/animate.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/contact.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/contact_responsive.css">
</head>
<body>
<div class="super_container">

    <!-- Header -->

    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="header_content d-flex flex-row align-items-center justify-content-start">
                        <div class="logo"><label style="font-size:60px;font-family: 微软雅黑">乡土<span>文化</span></label></div>
                        <div class="join_button ml-auto"><a href="${pageContext.request.contextPath}/jsp/register.jsp">注册</a></div>
                    </div>
                </div>
            </div>
        </div>
    </header>


    <!-- Home -->

    <div class="home">
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="${pageContext.request.contextPath}/images/blog.jpg" data-speed="0.8"></div>
        <div class="home_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_content">
                            <div class="home_title">登录</div>
                            <div class="breadcrumbs">
                                <ul class="d-flex flex-row align-items-center justify-content-start">
                                    <li><a href="${pageContext.request.contextPath}/jsp/index.jsp">Home</a></li>
                                    <li>乡土文化</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Contact -->

    <div class="contact" >

            <!-- Get in touch -->
            <div style=" width: 100%; text-align: center">
                <span style="color: red; font-size: 15px">${msg}</span>
                <form action="/EntryServlet?id=${entry}" id="contact_form" class="contact_form" method="post">
                    <div class="row" style="margin: 0 auto;">
                        <div class="col-lg-6" style="margin-left: 500px;">
                            <div class="contact_input_container contact_input_container_1"style="width: 550px"><input type="text" class="contact_input" placeholder="用户名" name="username" ></div>
                            <div class="contact_input_container contact_input_container_3"style="width: 550px"><input type="password" class="contact_input" placeholder="密码" name="password" ></div>
                        </div>
                    </div>

                    <button type="submit"  class="contact_button button"style="height: 50px;">登录</button>
                </form>
        </div>

        <script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
        <script src="${pageContext.request.contextPath}/styles/bootstrap-4.1.2/popper.js"></script>
        <script src="${pageContext.request.contextPath}/styles/bootstrap-4.1.2/bootstrap.min.js"></script>
        <script src="${pageContext.request.contextPath}/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
        <script src="${pageContext.request.contextPath}/plugins/easing/easing.js"></script>
        <script src="${pageContext.request.contextPath}/plugins/parallax-js-master/parallax.min.js"></script>
        <script src="${pageContext.request.contextPath}/js/contact.js"></script>
</body>
</html>
