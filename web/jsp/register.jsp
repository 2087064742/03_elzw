<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/14 0014
  Time: 18:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>注册</title>
    <%
        String path = request.getContextPath();
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
                        <div class="logo"><label style="font-size:60px;font-family: 微软雅黑">乡土<span>文化</span></label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>


    <!-- Home -->

    <div class="home">
        <div class="parallax_background parallax-window" data-parallax="scroll"
             data-image-src="${pageContext.request.contextPath}/images/blog.jpg" data-speed="0.8"></div>
        <div class="home_container">
            <div class="container">
                <div class="row">
                    <div class="col">
                        <div class="home_content">
                            <div class="home_title">注册</div>
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

    <div class="contact">
        <div class="container">
            <span id="checkName" style="font-size: 20px; color: red"></span>
            <!-- Get in touch -->
            <div class="col-lg-8" style="align-content: center">
                <div class="contact_form_container">
                    <form action="/RegisterServlet" method="post" id="contact_form" class="contact_form">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="contact_input_container contact_input_container_1"><input name="username"
                                                                                                      id="username"
                                                                                                      type="text"
                                                                                                      class="contact_input"
                                                                                                      placeholder="用户名"
                                                                                                      required="required">
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="contact_input_container contact_input_container_2"><input name="useremail"
                                                                                                      type="email"
                                                                                                      class="contact_input"
                                                                                                      placeholder="邮箱"
                                                                                                      required="required">
                                </div>
                            </div>
                        </div>
                        <div class="contact_input_container contact_input_container_3"><input name="userpassword"
                                                                                              id="pwd1" type="password"
                                                                                              class="contact_input"
                                                                                              placeholder="密码"
                                                                                              required="required"></div>
                        <div class="contact_input_container contact_input_container_3"><input id="pwd2" type="password"
                                                                                              class="contact_input"
                                                                                              placeholder="重新输入密码"
                                                                                              required="required"
                                                                                              onkeyup="validate()">
                        </div>
                        <span id="tishi"></span>
                        <div style="height: 80px">
                            <button id="zc" type="submit" class="contact_button button" style="height: 50px; display: none">注册</button>
                        </div>
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
    <script>

        $(document).ready(function(){
            $("#username").keyup(function(){
                var username = $("#username").val();
                checkUserName(username.trim());
            });
        });

        function validate() {
            var pwd1 = document.getElementById("pwd1").value;
            var pwd2 = document.getElementById("pwd2").value;
            if (pwd1 == pwd2) {
                document.getElementById("tishi").innerHTML = "<font color='green'>两次密码相同</font>";
                document.getElementById("zc").style.display = "block";
            } else {
                document.getElementById("tishi").innerHTML = "<font color='red'>两次密码不相同</font>";
                document.getElementById("zc").style.display = "none";
            }
        }

        function checkUserName(username) {
            //将username传递到服务器,然后判断用户名是否已经存在
            //<1>创建xmlHttpRequest对象:js发送请求到服务器
            var xmlhttp;
            if (window.XMLHttpRequest) {// code for IE7+, Firefox, Chrome, Opera, Safari
                xmlhttp = new XMLHttpRequest();
            } else {// code for IE6, IE5
                xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
            }


            //post请求
            xmlhttp.open("POST", "/RegisterNameServlet", true);
            //传递参数: set请求头  + 发送数据
            xmlhttp.setRequestHeader("Content-type",
                "application/x-www-form-urlencoded");
            xmlhttp.send("username=" + username + "&password=admin");

            //<3>响应:获取数据
            // readyState=4  && status = 200
            //onreadstatechange : (属性)事件,在readstate发生改变时触发
            xmlhttp.onreadystatechange = function() {
                if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                    //请求成功而且获取到了数据
                    var response = xmlhttp.responseText;

                    response = JSON.parse(response);
                    //显示
                    if (response.flag) {
                        document.getElementById("checkName").innerHTML = response.content;
                    } else {
                        document.getElementById("checkName").innerHTML = "";
                    }


                }
            };

        }





    </script>
</body>

</html>
