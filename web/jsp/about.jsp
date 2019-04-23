<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/4/14 0014
  Time: 10:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                                <li><a href="<%=request.getContextPath()%>/jsp/index.jsp">主页</a></li>
                                <li class="active"><a href="#">了解</a></li>
                                <li><a href="<%=request.getContextPath()%>/jsp/services.jsp">展示</a></li>
                                <li><a href="<%=request.getContextPath()%>/jsp/release.jsp">发布</a></li>
                            </ul>
                        </nav>
                         <div class="join_button ml-auto"><a href="">加入我们！</a></div>
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
                                    <li><a href="<%=request.getContextPath()%>/jsp/index.jsp">Home</a></li>
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

                <!-- Intro Content -->
                <div class="col-lg-7 intro_col">
                    <div class="intro_content">
                        <div class="intro_title"><span>简介</span></div>
                        <div class="intro_text">
                            <p>中国的乡土文化源远流长，而广大农村则是滋生培育乡土文化的根源和基因。改革开放以来，由于我国城市经济的飞速发展，农村经济发展相对滞后，许多乡土文化没有得到应有的发展，至此我们对中国乡土文化的了解和认识还相当有限。乡土文化是中华民族得以繁衍发展的精神寄托和智慧结晶，是区别于任何其它文明的唯一特征，是民族凝聚力和进取心的真正动因！乡土文化无论是物质的、非物质的都是不可替代的无价之宝！其中包含民俗风情、传说故事、古建遗存、名人传记、村规民约、家族族谱、传统技艺、古树名木等诸多方面。
                                乡土文化无论是物质的、非物质的都是不可替代的无价之宝！对乡土文化的保护和延承也必须覆盖物质的、非物质的各个领域，而且保护始终是第一位的，即使要利用它发展旅游等产业也要突出“保护第一”的原则。对乡土文化最有效的保护是积极的全方位的延承。所谓“积极的延承”指的是：既要继承乡土文化传统的东西，也要适应现代生活需求创造新的东西；既要保护好原生态乡土文化，又要创造新生态乡土文化。所谓“全方位的延承”指的是：既要延承乡土文化的“文脉”，也要有选择地沿承作为乡土文化载体的“人脉”，既要延承乡土文化的物质表象（即“形似”），也要注意延承乡土文化的精神内涵。这一点在时下的中国广大农村是要特别关注并给予妥善的保护政策。</p>
                        </div>
                        <div class="button intro_button"><a href="#">加入我们！</a></div>
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
                            <p>中国乡土文化实在是太博大、太久远、太丰富了！尚未引起人的关注或熟视无睹的领域也实在太广阔，而相当多的乡土文化遗存（包括物质的、非物质文化遗产）已经或正面临着被摧毁、被遗忘的绝境。
                                不少有识之士的呼吁似乎起的作用微乎其微!急功近利的建设性破坏行为仍在大行其道，畅通无阻!乡土文化仍旧无法摆脱弱势文化的地位!如何有效遏制这一事态的发展，关系如何保住我们乡土文化的根基的大问题</p>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row team_row">

                <!-- Team Item -->
                <div class="col-xl-3 col-md-6 team_col">
                    <div class="team_item">
                        <div class="team_image"><img src="<%=request.getContextPath()%>/images/10.jpg" style="width: 510px; height: 250px;"></div>
                        <div class="team_content text-center">
                            <div class="team_name"><a href="#">西湖区转塘街道</a></div>
                            <div class="team_title">外桐坞村</div>
                            <div class="team_text">
                                <p>西湖区外桐坞村文化礼堂是集朱德纪念室、文化讲堂、聚贤堂、民俗文化馆、陶艺制作室、红色长廊等为一体，具有旅游休闲、文化体验等诸多功能的综合性文化礼堂。</p>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Team Item -->
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
                                <p>杭州东方文化园位于萧山义桥杨岐山南麓，园内以周易八卦布局，儒、释、道三家同构建筑，2728米彩绘艺术长廊贯穿全园八大景区）。</p>
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
                </div>

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
                                        <p>乡土文化是中华民族得以繁衍发展的精神寄托和智慧结晶，是区别于任何其它文明的唯一特征，是民族凝聚力和进取心的真正动因！
                                            乡土文化无论是物质的、非物质的都是不可替代的无价之宝！对乡土文化的保护和延承也必须覆盖物质的、非物质的各个领域，而且保护始终是第一位的，即使要利用它发展旅游等产业也要突出“保护第一”的原则。对乡土文化最有效的保护是积极的全方位的延承。所谓“积极的延承”指的是：既要继承乡土文化传统的东西，也要适应现代生活需求创造新的东西；既要保护好原生态乡土文化，又要创造新生态乡土文化。所谓“全方位的延承”指的是：既要延承乡土文化的“文脉”，也要有选择地沿承作为乡土文化载体的“人脉”，既要延承乡土文化的物质表象（即“形似”），也要注意延承乡土文化的精神内涵。（即“神似”）。特别不要忽视某些宗教及家族文化因素在乡土文化中的重要作用，其旺盛的生命力、感召力成为维系人们世代延续和谐共生、善待苍生的重要精神支柱和心灵托付。这一点在时下的中国广大农村是要特别关注并给予妥善的乡土保护政策。</p>
                                    </div>
                                </div>
                            </div>

                            <!-- Accordion -->
                            <div class="accordion_container">
                                <div class="accordion d-flex flex-row align-items-center"><div>加强全民的乡土文化保护意识</div></div>
                                <div class="accordion_panel">
                                    <div>
                                        <p>除了从事乡土文化保护的专业部门、专家、规划工作者等，要把普及乡土文化保护与延承的教育作为一项全民素质教育内容，常抓不懈。特别是广大农民和第一线的基层干部更要进行此项教育，某种程度上失去乡土文化比失去土地更严重，等于是断了农村的“根”！乡土文化渊远流传，正如央视7套的纪录节目《乡土》所传递的理念：“乡而不俗，土而不粗。”国内大中小企业，亦有责任去宣扬乡土文化，正如云南乡土公社这一基于乡土文化而建立的有机农产品网站。
                                            要在国家《文物保护法》实施的同时，及时研究制定国家或地方《乡土文化保护法》或法规，作为规范此类行为的法律依据</p>
                                    </div>
                                </div>
                            </div>

                            <!-- Accordion -->
                            <div class="accordion_container">
                                <div class="accordion d-flex flex-row align-items-center"><div>专门编制乡土文化保护规划</div></div>
                                <div class="accordion_panel">
                                    <div>
                                        <p>不论是否列入历史文化名村，在编制新农村规划中都应有乡土文化保护专项，其内容可涉及历史沿革、民俗风情、传说故事、古建遗存、名人传记、村规民约、家族族谱、传统技艺、古树名木等诸多方面。对未有效进行此项规划工作的新农村规划可实行“一票否决制”。历史文化名村除了要进行传统建筑风貌保护外，还应挖掘其精神文化内涵，进行深层次的非物质文化遗产的保护与延承。</p>
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

    <!-- Footer -->


</div>


<script src="<%=path %>/js/jquery-3.2.1.min.js"></script>
<script src="<%=path %>/styles/bootstrap-4.1.2/popper.js"></script>
<script src="<%=path %>/styles/bootstrap-4.1.2/bootstrap.min.js"></script>
<script src="<%=path %>/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="<%=path %>/plugins/easing/easing.js"></script>
<script src="<%=path %>/plugins/parallax-js-master/parallax.min.js"></script>
<script src="<%=path %>/js/about.js"></script>
</body>
</html>
