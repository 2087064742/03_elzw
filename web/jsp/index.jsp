<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>乡土文化</title>
    <%
        String path=request.getContextPath();
    %>
    <link rel="stylesheet" type="text/css" href="<%=path %>/styles/bootstrap-4.1.2/bootstrap.min.css">
    <link href="<%=path %>/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link rel="stylesheet" type="text/css" href="<%=path %>/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css" href="<%=path %>/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css" href="<%=path %>/plugins/OwlCarousel2-2.2.1/animate.css">
    <link rel="stylesheet" type="text/css" href="<%=path %>/styles/main_styles.css">
    <link rel="stylesheet" type="text/css" href="<%=path %>/styles/responsive.css">
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
                <header class="header">
                    <div class="container">
                        <div class="row">
                            <div class="col">
                                <div class="header_content d-flex flex-row align-items-center justify-content-start">
                                    <div class="logo"><label style="font-size:60px;font-family: 微软雅黑">乡土<span>文化</span></label></div>
                                    <c:if test="${empty user}"><div class="join_button ml-auto"><a href="${pageContext.request.contextPath}/EntryRepetitionServlet?id=1">加入我们！</a></div></c:if>
                                    <c:if test="${not empty user}"><div style="margin-left: 65%"><span class="label label-warning">欢迎: ${user.username}</span><p><a href="${pageContext.request.contextPath}/user?id=1">退出登录</a></p></c:if></div>
                                </div>
                            </div>
                        </div>
                    </div>
                </header>
            </div>
          </div>
        </div>
      </div>
    </header>

    <!-- Home -->

    <div class="home">
      <!-- Home Slider -->

      <div class="home_slider_container">

        <div class="owl-carousel owl-theme home_slider">
          <c:forEach items="${i}" var="p">
          <!-- Slide -->
          <div class="owl-item">
            <div class="background_image" style="background-image:url(${pageContext.request.contextPath}${p.index_bj})"></div>
            <div class="home_content_container">
              <div class="container">
                <div class="row">
                  <div class="col">
                    <div class="home_content">
                      <div class="home_title"><h1>${p.title}</h1></div>
                      <div class="home_text">
                        <p>${p.subhead}</p>
                      </div>

                      <c:if test="${'乡土文化'.equals(p.title)}">
                        <div class="button home_button">
                          <a href="${pageContext.request.contextPath}/jsp/about.jsp">${p.btn_txt}</a>
                        </div>
                      </c:if>

                      <c:if test="${'展示'.equals(p.title)}">
                        <div class="button home_button">
                          <a href="${pageContext.request.contextPath}/jsp/services.jsp">${p.btn_txt}</a>
                        </div>
                      </c:if>

                      <c:if test="${'发布'.equals(p.title)}">
                        <div class="button home_button">
                          <a href="${pageContext.request.contextPath}/jsp/release.jsp">${p.btn_txt}</a>
                        </div>
                      </c:if>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          </c:forEach>



        <%--<c:forEach items="${i}" var="p">
                <div class="owl-item">
                    <div class="background_image" style="background-image:url(${pageContext.request.contextPath}${p.index_bj})"></div>
                    <div class="home_content_container">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <div class="home_content">
                                        <div class="home_title"><h1>${p.title}</h1></div>
                                        <div class="home_text">
                                            <p>${p.subhead}</p>
                                        </div>


                                            <c:if test="${'乡土文化'.equals(p.title)}">
                                                <div class="button home_button">
                                                <a href="${pageContext.request.contextPath}/jsp/about.jsp">${p.btn_txt}</a>
                                                </div>
                                            </c:if>
                                            <c:if test="${'展示'.equals(p.title)}">
                                                <div class="button home_button">
                                                    <a href="${pageContext.request.contextPath}/jsp/services.jsp">${p.btn_txt}</a>
                                                </div>
                                            </c:if>
                                            <c:if test="${'发布'.equals(p.title)}">
                                                <div class="button home_button">
                                                    <a href="${pageContext.request.contextPath}/jsp/release.jsp">${p.btn_txt}</a>
                                                </div>
                                            </c:if>
                                    </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                </div>
        </div>
      </div>
    </div>
            </c:forEach>--%>
          <%--<div class="owl-item">
            <div class="background_image" style="background-image:url(${pageContext.request.contextPath}/images/1.jpg)"></div>
            <div class="home_content_container">
              <div class="container">
                <div class="row">
                  <div class="col">
                    <div class="home_content">
                      <div class="home_title"><h1>乡土文化</h1></div>
                      <div class="home_text">
                        <p>乡土文化一直被认为是中华民族文化之根，是中华优秀传统文化的重要组成部分.乡土文化无论是物质的、非物质的都是不可替代的无价之宝！对乡土文化的保护和延承也必须覆盖物质的、非物质的各个领域，而且保护始终是第一位的，即使要利用它发展旅游等产业也要突出“保护第一”的原则.</p>
                      </div>
                      <div class="button home_button"><a href="${pageContext.request.contextPath}/jsp/about.jsp">了解乡土文化</a></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Slide -->
          <div class="owl-item">
            <div class="background_image" style="background-image:url(${pageContext.request.contextPath}/images/3.jpg)"></div>
            <div class="home_content_container">
              <div class="container">
                <div class="row">
                  <div class="col">
                    <div class="home_content">
                      <div class="home_title"><h1>展示</h1></div>
                      <div class="home_text">
                        <p>近些年不少有文化良知和历史责任感的专家学者已把关注的目光集中在传统古村落的考证、测绘与抢救性保护上，取得了不少的功绩，值得世人敬佩和尊重！然而这仅仅是沧海一粟，中国乡土文化实在是太博大、太久远、太丰富了！</p>
                      </div>
                      <div class="button home_button"><a href="${pageContext.request.contextPath}/jsp/services.jsp">展示家乡文化!</a></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>

          <!-- Slide -->
          <div class="owl-item">
            <div class="background_image" style="background-image:url(${pageContext.request.contextPath}/images/2.jpeg)"></div>
            <div class="home_content_container">
              <div class="container">
                <div class="row">
                  <div class="col">
                    <div class="home_content">
                      <div class="home_title"><h1>发布</h1></div>
                      <div class="home_text">
                        <p>乡土文化是中华民族得以繁衍发展的精神寄托和智慧结晶，是区别于任何其它文明的唯一特征，是民族凝聚力和进取心的真正动因！</p>
                      </div>
                      <div class="button home_button"><a href="${pageContext.request.contextPath}/jsp/release.jsp">发布文化!</a></div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>--%>

        </div>





        <!-- Home Slider Dots -->

        <div class="home_slider_dots">
          <ul id="home_slider_custom_dots" class="home_slider_custom_dots">
            <li class="home_slider_custom_dot active">01</li>
            <li class="home_slider_custom_dot">02</li>
            <li class="home_slider_custom_dot">03</li>
          </ul>
        </div>
      </div>
    </div>



  </div>

  <script src="<%=path %>/js/jquery-3.2.1.min.js"></script>
  <script src="<%=path %>/styles/bootstrap-4.1.2/popper.js"></script>
  <script src="<%=path %>/styles/bootstrap-4.1.2/bootstrap.min.js"></script>
  <script src="<%=path %>/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
  <script src="<%=path %>/plugins/easing/easing.js"></script>
  <script src="<%=path %>/plugins/parallax-js-master/parallax.min.js"></script>
  <script src="<%=path %>/js/custom.js"></script>
  </body>
</html>
