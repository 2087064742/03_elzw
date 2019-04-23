<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/17 0017
  Time: 19:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
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
<%@include file="releaseHead.jsp" %>

    <!-- Contact -->

    <div class="contact">
        <div class="container" >

            <!-- Get in touch -->
            <div class="col-lg-8" style="align-content: center">
                <div class="contact_form_container">
                    <form action="#" id="contact_form" class="contact_form">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="contact_input_container contact_input_container_1"><input onkeyup="this.value=this.value.replace(/[^\u4e00-\u9fa5]/g,'')" type="text" class="contact_input" placeholder="地区" required="required"></div>
                            </div>
                            <div class="col-lg-6">
                                <div class="contact_input_container contact_input_container_1"><input onkeyup="this.value=this.value.replace(/[^\u4e00-\u9fa5]/g,'')" type="text" class="contact_input" placeholder="村" required="required"></div>
                            </div>
                            <div class="col-lg-6">
                                <div class="contact_input_container contact_input_container_1" style="width: 500px"><textarea style="height: 100px;" class="contact_input" placeholder="描述" required="required"></textarea></div>
                            </div>
                        </div>


                        <button class="contact_button button"style="height: 50px;">发布</button>
                    </form>
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
    <script src="${pageContext.request.contextPath}/js/contact.js"></script>

</body>
</html>