<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/14 0014
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>了解文化</title>
    <%
        String path=request.getContextPath();
    %>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/styles/bootstrap-4.1.2/bootstrap.min.css">
    <link href="<%=request.getContextPath()%>/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/plugins/OwlCarousel2-2.2.1/animate.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/styles/about.css">
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/styles/about_responsive.css">
</head>
<body>
<div class="super_container">

    <!-- Header -->

    <header class="header">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="header_content d-flex flex-row align-items-center justify-content-start">
                        <div class="logo">了解<span style="color: #000000">文化</span></div>
                        <nav class="main_nav">
                            <ul class="d-flex flex-row align-items-center justify-content-start">
                                <li><a href="<%=request.getContextPath()%>/index">主页</a></li>
                                <li class="active"><a href="#">了解</a></li>
                                <li><a href="<%=request.getContextPath()%>/jsp/services.jsp">展示</a></li>
                                <li><a href="<%=request.getContextPath()%>/jsp/release.jsp">发布</a></li>
                            </ul>
                        </nav>
                        <c:if test="${empty user}"><div class="join_button ml-auto"><a href="${pageContext.request.contextPath}/EntryRepetitionServlet?id=2">加入我们！</a></div></c:if>
                        <c:if test="${not empty user}"><div style="margin-left:39%"><span class="label label-warning">欢迎: ${user.username}</span><p><a href="${pageContext.request.contextPath}/logOffzs">退出登录</a></p></c:if></div>
                    </div>
                </div>
            </div>
        </div>

    </header>
    <!-- Home -->

    <div class="home">
        <div class="parallax_background parallax-window" data-parallax="scroll" data-image-src="<%=request.getContextPath()%>/images/4.jpg" data-speed="0.8"></div>
        <div class="home_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_content">
                            <div class="home_title">关于文化</div>
                            <div class="breadcrumbs">
                                <ul class="d-flex flex-row align-items-center justify-content-start">
                                    <li><a href="<%=request.getContextPath()%>/index">Home</a></li>
                                    <li>乡土文化</li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Intro -->

    <div class="intro">
        <div class="container">
            <div class="row row-eq-height">
                <c:forEach items="${a}" var="a">
                <!-- Intro Content -->
                <div class="col-lg-7 intro_col">
                    <div class="intro_content">
                        <div class="intro_title"><span>简介</span></div>
                        <div class="intro_text">
                            <p>
                                ${a.introduce}
                            </p>
                        </div>
                    </div>
                </div>

                <!-- Intro Image -->
                <div class="col-lg-5 intro_col">
                    <div class="intro_image"><img src="<%=request.getContextPath()%>/images/6.jpg" alt=""></div>
                </div>

            </div>
        </div>
    </div>

    <!-- Call to action -->



    <!-- Boxes -->

    <div class="boxes">
        <div class="container-fluid">
            <div class="row row-eq-height">

                <!-- Box -->
                <div style="margin: 0 auto; width: 95%;">
                    <img src="<%=request.getContextPath()%>/images/7.jpg" style="width: 100%; height: 500px">

                </div>

    <!-- Team -->

    <div class="team">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="section_title_container text-center">
                        <div class="section_title"><h1>文化现状</h1></div>
                        <div class="section_text ml-auto mr-auto">
                            <p>
                                ${a.situation}
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <div class="row team_row">
                <c:forEach items="${b}" var="b">
                <!-- Team Item -->
                <div class="col-xl-3 col-md-6 team_col">
                    <div class="team_item">
                        <div class="team_image"><img src="<%=request.getContextPath()%>${b.image}" style="width: 510px; height: 250px;"></div>
                        <div class="team_content text-center">
                            <div class="team_name"><a href="#">${b.area}</a></div>
                            <div class="team_title">${b.village}</div>
                            <div class="team_text">
                                <p>${b.introduce}</p>
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
                <%--<!-- Team Item -->
                <div class="col-xl-3 col-md-6 team_col">
                    <div class="team_item">
                        <div class="team_image"><img src="<%=request.getContextPath()%>/images/11.jpg" style="width: 510px; height: 250px"></div>
                        <div class="team_content text-center">
                            <div class="team_name"><a href="#">西湖区双浦镇</a></div>
                            <div class="team_title">东江嘴村</div>
                            <div class="team_text">
                                <p>锦绣风水洞位于东江嘴村所在的双浦镇云泉山中，是中国特大型“水陆兼备”的溶洞之一，其高达116米的“九天飞龙”石壁被专家称之谓“天下第一九龙壁”。</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Team Item -->
                <div class="col-xl-3 col-md-6 team_col">
                    <div class="team_item">
                        <div class="team_image"><img src="<%=request.getContextPath()%>/images/12.jpg" style="width: 510px; height: 250px"></div>
                        <div class="team_content text-center">
                            <div class="team_name"><a href="#">萧山区义桥镇</a></div>
                            <div class="team_title">昇光村</div>
                            <div class="team_text">
                                <p>杭州东方文化园位于萧山义桥杨岐山南麓，园内以周易八卦布局，儒、释、道三家同构建筑，2728米彩绘艺术长廊贯穿全园八大景区。</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Team Item -->
                <div class="col-xl-3 col-md-6 team_col">
                    <div class="team_item">
                        <div class="team_image"><img src="<%=request.getContextPath()%>/images/13.jpg" style="width: 510px; height: 250px"></div>
                        <div class="team_content text-center">
                            <div class="team_name"><a href="#">富阳区新登镇</a></div>
                            <div class="team_title">官塘村</div>
                            <div class="team_text">
                                <p>“古”线路：全国绿化千佳——昌东村、杭州地区唯一的少数民族村——双江村、新登古城墙和古城河； “闲”线路：贤明山森林公园、半山村桃花源、灵山古道.</p>
                            </div>
                        </div>
                    </div>
                </div>--%>


            </div>
        </div>
    </div>

    <!-- FAQ -->

    <div class="faq">
        <div class="container">
            <div class="row row-eq-height">

                <!-- FAQ -->
                <div class="col-lg-6">
                    <div class="faq_container">
                        <div class="faq_title">政策建议</div>

                        <!-- Accordions -->
                        <div class="accordions">

                            <!-- Accordion -->
                            <div class="accordion_container">
                                <div class="accordion d-flex flex-row align-items-center active"><div>建立正确的“乡土文化观”</div></div>
                                <div class="accordion_panel">
                                    <div>
                                        <p>${a.propose1}</p>
                                    </div>
                                </div>
                            </div>

                            <!-- Accordion -->
                            <div class="accordion_container">
                                <div class="accordion d-flex flex-row align-items-center"><div>加强全民的乡土文化保护意识</div></div>
                                <div class="accordion_panel">
                                    <div>
                                        <p>
                                        ${a.propose2}
                                        </p>
                                    </div>
                                </div>
                            </div>

                            <!-- Accordion -->
                            <div class="accordion_container">
                                <div class="accordion d-flex flex-row align-items-center"><div>专门编制乡土文化保护规划</div></div>
                                <div class="accordion_panel">
                                    <div>
                                        <p>${a.propose3}</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- Accordions End -->

                    </div>
                </div>

                <!-- Offer -->
                <div class="col-lg-6">
                    <div class="offer">
                        <a href="#">
                            <div class="offer_content d-flex flex-column align-items-center justify-content-end">
                                <div class="background_image" style="background-image:url(<%=request.getContextPath()%>/images/16.jpg);height: 80%;margin-top: 86px;"></div>
                                <div class="offer_box text-center"style="background:rgba(0,0,0,0); margin-bottom: 15px">
                                    <div class="offer_box_title"><label style="color: #d6c0f0">保护乡土文化</label></div>
                                </div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div>
        </div>
    </div>
</div>
</c:forEach>
    <!-- Footer -->




<script src="<%=path %>/js/jquery-3.2.1.min.js"></script>
<script src="<%=path %>/styles/bootstrap-4.1.2/popper.js"></script>
<script src="<%=path %>/styles/bootstrap-4.1.2/bootstrap.min.js"></script>
<script src="<%=path %>/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="<%=path %>/plugins/easing/easing.js"></script>
<script src="<%=path %>/plugins/parallax-js-master/parallax.min.js"></script>
<script src="<%=path %>/js/about.js"></script>
</body>
</html>
