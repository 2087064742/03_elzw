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
    <title>发布</title>
    <%
        String path = request.getContextPath();
    %>
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/styles/bootstrap-4.1.2/bootstrap.min.css">
    <link href="${pageContext.request.contextPath}/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet"
          type="text/css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
    <link rel="stylesheet" type="text/css"
          href="${pageContext.request.contextPath}/plugins/OwlCarousel2-2.2.1/animate.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/contact.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/contact_responsive.css">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/styles/file-box.css">
</head>
<body>
<%@include file="releaseHead.jsp" %>


<div id="contact"   style="height: 500px  ; width: 800px; border: #4af008 1px dashed  ;margin: 0 auto; text-align: center" >

    <form  method="post" action="${pageContext.request.contextPath}/releaseswh" enctype="multipart/form-data">
        <div align="left" style="width: 400px ; margin-left: 0px; " >
            标题：<input type="text" id=" main_title" name="maintitle"  width="300px" placeholder="请输入位置" required="required"><br />
            村名：<input type="text" id="vice_title" name="vicetitle"  width="300px" placeholder="请输入村名"><br />
            城市名：<input type="text" id="city_name" name="cityname"  width="300px" placeholder="请输入城市名"><br />
            内容：<input type="text" id="my_text" name="mytext"  width="400px" height="300px" placeholder="请输入描述性文字，不得少于100" required="required">
        </div>
        <div class="file-box" style="width: 400px ; margin-right: 0px; ">
            <label>请添加图片</label>
            <input type="file" value="" name="file" id="input_file"
                   accept="image/gif,image/jpeg,image/jpg,image/png,image/svg" onchange="imgPreview(this,0)">
        </div>
        <div>
            <input type="submit" value="提交">
        </div>

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


<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/styles/bootstrap-4.1.2/popper.js"></script>
<script src="${pageContext.request.contextPath}/styles/bootstrap-4.1.2/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="${pageContext.request.contextPath}/plugins/easing/easing.js"></script>
<script src="${pageContext.request.contextPath}/plugins/parallax-js-master/parallax.min.js"></script>
<script src="${pageContext.request.contextPath}/js/contact.js"></script>
<script src="${pageContext.request.contextPath}/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/styles/bootstrap-4.1.2/popper.js"></script>
<script src="${pageContext.request.contextPath}/styles/bootstrap-4.1.2/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="${pageContext.request.contextPath}/plugins/easing/easing.js"></script>
<script src="${pageContext.request.contextPath}/plugins/parallax-js-master/parallax.min.js"></script>
<script src="${pageContext.request.contextPath}/js/contact.js"></script>

<script>
    // function send_opu() {
    //     var img_file="c:progm";
    //     var main_title=document.getElementById("main_title").value;
    //     var vice_title=document.getElementById("vice_title").value;
    //     var mytext=document.getElementById("my_text").value;
    //
    //     //post请求
    //     xmlhttp.open("POST", "/ReleasewhServlet", true);
    //     //传递参数: set请求头  + 发送数据
    //     xmlhttp.setRequestHeader("Content-type",
    //         "application/x-www-form-urlencoded");
    //     xmlhttp.send("imgFile"+"c:progim");
    //
    //
    //
    // }
//显示图片
    function imgPreview(fileDom, i) {
        //判断是否支持FileReader
        if (window.FileReader) {
            var reader = new FileReader();
        } else {
            alert("您的设备不支持图片预览功能，如需该功能请升级您的设备！");
        }
        //获取文件
        var file = fileDom.files[0];
        var imageType = /^image\//;
        //是否是图片
        if (!imageType.test(file.type)) {
            alert("请选择图片！");
            return;
        }
        //读取完成
        reader.onload = function (e) {
            //图片路径设置为读取的图片
            // img.src = e.target.result;
            console.log(document.getElementsByClassName('file-box'));
            document.getElementsByClassName('file-box')[i].style.background = "url(" + e.target.result + ")no-repeat";//回显图片
            document.getElementsByClassName('file-box')[i].style.backgroundSize = '200px 160px';
            console.log('reader', reader)
        };
        reader.readAsDataURL(file);


    }
</script>

</html>