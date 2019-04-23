<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/14 0014
  Time: 13:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>展示</title>
    <%
        String path=request.getContextPath();
    %>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/bootstrap-4.1.2/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/plugins/OwlCarousel2-2.2.1/animate.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/services.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/services_responsive.css">
</head>
<body>
<div class="super_container">

    <%@include file="servicesHead.jsp" %>
    <!-- Classes -->

    <div class="classes">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="section_title_container text-center">
                        <div class="section_title"><h1>展示各个地区的<span>乡土文化</span></h1></div>
                    </div>
                </div>
            </div>
            <div class="row classes_row">

                <!-- Class -->
                <div class="col-xl-4 col-md-6 classes_col">
                    <div class="classes_item c_item_1">
                        <div class="classes_title_container d-flex flex-row align-items-center justify-content-start">
                            <div class="classes_icon d-flex flex-column align-items-center justify-content-center" style="background: #7bfdff">
                                <img src="${pageContext.request.contextPath}/images/hz.png" style="align-content: center; margin-top: -5px;height: 50px; width: 50px"></div>
                            <div class="classes_title">杭州</div>
                        </div>
                        <div class="classes_item_text">
                            <p>杭州，简称“杭”，是浙江省省会、副省级市、杭州都市圈核心城市，国务院批复确定的浙江省省会和全省经济、文化、科教中心，长江三角洲中心城市之一。</p>
                        </div>
                    </div>
                </div>

                <!-- Class -->
                <div class="col-xl-4 col-md-6 classes_col">
                    <div class="classes_item c_item_2">
                        <div class="classes_title_container d-flex flex-row align-items-center justify-content-start">
                            <div class="classes_icon d-flex flex-column align-items-center justify-content-center" style="background: #8fd9ff">
                                <div><img src="${pageContext.request.contextPath}/images/tz.png"style="height: 50px; margin-bottom: 20px" ></div>
                            </div>
                            <div class="classes_title">台州</div>
                        </div>
                        <div class="classes_item_text">
                            <p>台州，浙江省地级市。是浙江沿海的区域性中心城市和现代化港口城市，位于浙江省中部沿海，东濒东海，北靠绍兴市、宁波市，南邻温州市，西与金华市和丽水市毗邻。</p>
                        </div>
                    </div>
                </div>

                <!-- Class -->
                <div class="col-xl-4 col-md-6 classes_col">
                    <div class="classes_item c_item_3">
                        <div class="classes_title_container d-flex flex-row align-items-center justify-content-start">
                            <div class="classes_icon d-flex flex-column align-items-center justify-content-center">
                                <div><img src="${pageContext.request.contextPath}/images/hz.png" style="align-content: center; "></div>
                            </div>
                            <div class="classes_title">其他</div>
                        </div>
                    </div>
                </div>



            </div>
        </div>
    </div>


</div>

<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/styles/bootstrap-4.1.2/popper.js"></script>
<script src="${pageContext.request.contextPath}/styles/bootstrap-4.1.2/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="${pageContext.request.contextPath}/plugins/easing/easing.js"></script>
<script src="${pageContext.request.contextPath}/plugins/parallax-js-master/parallax.min.js"></script>
<script src="${pageContext.request.contextPath}/js/services.js"></script>
</body>
</html>
