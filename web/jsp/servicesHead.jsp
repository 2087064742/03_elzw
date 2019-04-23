<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/17 0017
  Time: 19:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!-- Header -->

<header class="header">
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="header_content d-flex flex-row align-items-center justify-content-start">
                    <div class="logo">展示<span>文化</span></div>
                    <nav class="main_nav">
                        <ul class="d-flex flex-row align-items-center justify-content-start">
                            <li><a href="${pageContext.request.contextPath}/jsp/index.jsp">主页</a></li>
                            <li><a href="${pageContext.request.contextPath}/jsp/about.jsp">了解</a></li>
                            <li class="active"><a href="#">展示</a></li>
                            <li><a href="${pageContext.request.contextPath}/jsp/release.jsp">发布</a></li>
                        </ul>
                    </nav>
                    <div class="join_button ml-auto"><a href="#">加入我们！</a></div>
                    <div class="social header_social">
                        <ul class="d-flex flex-row align-items-center justify-content-start">
                            <li><a href="#"><i class="fa fa-pinterest" aria-hidden="true"></i></a></li>
                            <li><a href="#"><i class="fa fa-linkedin" aria-hidden="true"></i></a></li>
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
