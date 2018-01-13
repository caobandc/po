<%@ page import="entity.Contacts" %>
<%@ page import="pub_fun.getContacts" %>
<%@ page import="java.util.List" %>
<%@ page import="pub_fun.getActivitys" %>
<%@ page import="entity.Activitys" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- PAGE TITLE -->
    <title>活动列表</title>


    <!-- ===================================
        NORMALIZE CSS
    ==================================== -->
    <link rel="stylesheet" href="css/normalize.css">

    <!-- ===================================
        BOOTSTRAP
    ==================================== -->
    <link rel="stylesheet" href="css/bootstrap.min.css">

    <!-- ===================================
        GOOGLE FONTS
    ==================================== -->
    <link href='http://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:600,700,400,300' rel='stylesheet' type='text/css'>

    <!-- ===================================
        FONTS ICON
    ==================================== -->
    <link rel="stylesheet" type="text/css" href="http://www.jq22.com/jquery/font-awesome.4.6.0.css">

    <!-- ===================================
        PLUGIN
    ==================================== -->
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/slider-pro.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/owl.transitions.css">
    <link rel="stylesheet" href="css/animate.css">

    <!-- ===================================
        MAIN STYLESHEET
    ==================================== -->
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/responsive.css" />
    <link rel="stylesheet" href="css/color-green.css" id="colors" />



    <!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <script type="text/javascript" src="js/selectivizr-min.js"></script>
    <script src="http://s3.amazonaws.com/nwapi/nwmatcher/nwmatcher-1.2.5-min.js"></script>
    <script src="http://css3-mediaqueries-js.googlecode.com/files/css3-mediaqueries.js"></script>
    <script src="http://ie7-js.googlecode.com/svn/version/2.1(beta4)/IE9.js"></script>
    <![endif]-->
</head>

<body>
<!-- ===================================
    PRELOADER
==================================== -->
<div class="preloader">
    <div class="status"></div>
</div>

<!-- ===================================
        HEADER
    ==================================== -->
<header>
    <!-- Navigation Menu start-->
    <nav class="navbar clean-main-menu" role="navigation">
        <div class="container">

            <!-- Navbar Toggle -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <!-- Logo -->
                <%--<a class="navbar-brand" href="index.html"><img class="logo" id="logo" src="images/logo.png" alt="Page"></a>--%>

            </div>
            <!-- Navbar Toggle End -->

            <!-- navbar-collapse start-->
            <div id="nav-menu" class="navbar-collapse collapse" role="navigation">
                <ul class="nav navbar-nav clean-menu-wrapper">
                    <li class="active">
                        <a href="homepage.jsp">首页</a>
                    </li>
                    <li>
                        <a href="activityList.jsp">活动展示</a>
                    </li>
                    <li>
                        <a href="about.jsp">关于我们</a>
                    </li>
                    <li>
                        <a href="workList.jsp">作品展示</a>
                    </li>
                    <li>
                        <a href="contact.jsp">联系我们</a>
                    </li>
                    <li>
                        <a href="login.jsp">登录</a>
                    </li>
                </ul>
            </div>
            <!-- navbar-collapse end-->

        </div>
    </nav>
    <!-- Navigation Menu end-->

</header>




<!-- ===================================
    SCREENSHOOT
==================================== -->
<section class="clean-custom-sec clean-section-wrapper background-two">
    <div class="container">
        <div class="row">
            <!-- Section Header -->
            <div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown">

                <div class="clean-line"></div>
                <h1><span class="clean-color-contras">活动列表</span></h1>
                <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">点击活动可查看详情</p>
            </div>
            <!-- Section Header End -->

            <%
                getActivitys getactivity = new getActivitys();
                List<Activitys> activitys = getactivity.getActivityInfo();
                for (int i=0;i<activitys.size();i++){
                    Activitys a = activitys.get(i);

            %>
            <div class="col-md-12 col-sm-12 col-xs-12 clean-custom-sec-img wow bounceInLeft" style="margin-bottom: 5%;">

                <div class="col-md-6 col-sm-6 col-xs-12 clean-custom-sec-img wow bounceInLeft">
                    <a href='activityDetail.jsp?aid=<%=a.getActivityId()%>'><img src="<%=a.getImg()%>" alt="Custom Image" ></a>
                </div>

                <div class="col-md-6 col-sm-6 col-xs-12 clean-custom-sec-text wow bounceInRight">
                    <h3><a href='activityDetail.jsp?aid=<%=a.getActivityId()%>'><%=a.getActivityName()%></a></h3>
                    <p><%=a.getActivityMes()%></p>

                    <p><%=a.getContent()%></p>

                    <%--<p>面向信息技术学院全体2017级新生，以小组或个人形式参赛[鼓励跨专业组队]。每组不超过3人，原则上需要有指导老师；同一参赛选手（包括个人和组队）提交的作品不超过2个。</p>--%>

                </div>

            <%--<div class="clear" ></div>--%>

            </div>

            <%
                }
            %>
        </div>
    </div>
</section>


<%
    getContacts getcontact = new getContacts();
    List<Contacts> contacts = getcontact.getContactInfo();
    Contacts st = contacts.get(0);

%>


<!-- ===================================
        FOOTER SECTION
    ==================================== -->
<footer class="background-two">
    <div class="container">
        <div class="row">
            <div class="clean-footer-content">

                <div class="clean-footer-logo wow bounceIn" data-wow-offset="0">
                    <a href="#top">
                        <img id="logo-footer" src="images/logo.png" alt="clean">
                    </a>
                </div>

                <p class="clean-copyright-info">©2018 caobandc - Digital Creative Association</p>

                <ul class="clean-footer-social-info">
                    <%

                        for (int j=0;j <contacts.size();j++){
                            Contacts foot = contacts.get(j);

                    %>
                    <li>
                        <a href="<%=foot.getHref()%>"><i class="fa fa-<%=foot.getImg()%>"></i></a>
                    </li>
                    <%
                        }
                    %>
                </ul>

            </div>
        </div>
    </div>
</footer>




<!-- ===================================
    SCRIPTS
==================================== -->
<script src="js/modernizr.min.js"></script>
<script src="js/jquery.min.js"></script>
<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
<script src="js/jquery.easing.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/smooth-scroll.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/jquery.sliderPro.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.easypiechart.js"></script>
<script src="js/jquery.countTo.js"></script>
<script src="js/isotope.pkgd.min.js"></script>
<script src="js/jquery.stellar.min.js"></script>
<script src="js/jquery.waypoints.min.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/jquery.nav.js"></script>
<script src="js/custom.js"></script>
</body>
</html>
