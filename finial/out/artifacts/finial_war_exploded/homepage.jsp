<%@ page import="pub_fun.getWorks" %>
<%@ page import="entity.Works" %>
<%@ page import="pub_fun.getDeparts" %>
<%@ page import="entity.Departs" %>
<%@ page import="java.util.List" %>
<%@ page import="entity.Contacts" %>
<%@ page import="pub_fun.getContacts" %>
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
    <title>DCA Kingdom</title>


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
    <link rel="stylesheet" type="text/css" href="css/font-awesome.4.6.0.css">
    <!-- <link rel="stylesheet" type="text/css" href="css/font-awesome.min.css"> -->

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

    <link type="text/css" href="css/font-awesome.css" rel="stylesheet" />
    <link type="text/css" href="css/ravi.css" rel="stylesheet" />

    <script type="text/javascript" src="js/jQuery-1.10.1.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>



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
                    <%
//                        if(session.getAttribute("name")==""){
//                            out.print("<a href=\"login.jsp\">登录</a>");
//                        }else{
//                            String temp = session.getAttribute("name").toString();
//                            out.print("<a href=\"personHome.jsp\">");
//                            out.print(temp);
//                            out.print("</a>");
//                        }
                        if(session.getAttribute("name")!=""){
                            String temp = session.getAttribute("name").toString();
                            out.print("<a href=\"personHome.jsp\">");
                            out.print(temp);
                            out.print("</a>");
                        }else{
                            out.print("<a href=\"login.jsp\">登录</a>");
                        }
                    %>
                </li>
            </ul>
        </div>
        <!-- navbar-collapse end-->

    </div>
</nav>

    <!-- ===================================
        MAIN SLIDER
    ==================================== -->
    <section class="slider-pro clean-slider" id="clean-slider">
        <div class="sp-slides" id="top">

            <%
                getActivitys getactivity = new getActivitys();
                List<Activitys> activitys = getactivity.getActivityInfo();
                for (int i=0;i<activitys.size();i++){
                    Activitys a = activitys.get(i);

            %>

            <!-- Slides -->
            <div class="sp-slide clean-main-slides">
                <div class="clean-img-overlay"></div>

                <img class="sp-image" src="<%=a.getImg()%>" alt="Slider <%=i%>"/>
                <a href="activityList.jsp" target="blank" >
                    <h1 class="sp-layer clean-slider-text-big"
                    data-position="center" data-show-transition="right" data-hide-transition="right" data-show-delay="1500" data-hide-delay="200">
                    <%--<span class="clean-color-contras">2017网页设计新生赛</span> --%>
                        <%=a.getActivityName()%>
                    </h1>
                    <p class="sp-layer"
                    data-position="center" data-vertical="15%" data-show-delay="2000" data-hide-delay="200" data-show-transition="left" data-hide-transition="down">
                        <%=a.getActivityMes()%>
                    </p>
                </a>
            </div>
            <!-- Slides End -->

            <%
                }
            %>

            <!-- Slides -->
            <%--<div class="sp-slide clean-main-slides">--%>
            <%--<div class="clean-img-overlay"></div>--%>
                <%--<img class="sp-image" src="images/slider/2.jpg" alt="Slider 2"/>--%>
                <%--<a href="activity.html" target="blank" >--%>
                    <%--<h1 class="sp-layer clean-slider-text-big"--%>
                    <%--data-position="center" data-show-transition="right" data-hide-transition="right" data-show-delay="1500" data-hide-delay="200">--%>
                        <%--<span class="clean-color-contras">基于深度学习的街景自然影像内容挖掘与分析</span> - 张帆--%>
                    <%--</h1>--%>
                    <%--<p class="sp-layer"--%>
                    <%--data-position="center" data-vertical="15%" data-show-delay="2000" data-hide-delay="200" data-show-transition="left" data-hide-transition="down">--%>
                        <%--2017-11-24 - 木铎楼 B603 14：30--%>
                    <%--</p>--%>
                <%--</a>--%>
            <%--</div>--%>
            <!-- Slides End -->

            <!-- Slides -->
            <%--<div class="sp-slide clean-main-slides">--%>
                <%--<div class="clean-img-overlay"></div>--%>

                <%--<img class="sp-image" src="images/slider/3.jpg" alt="Slider 3"/>--%>
                <%--<a href="activity.html" target="blank" >--%>
                    <%--<h1 class="sp-layer clean-slider-text-big"--%>
                    <%--data-position="center" data-show-transition="right" data-hide-transition="right" data-show-delay="1500" data-hide-delay="200">--%>
                    <%--<span class="clean-color-contras">2017网页设计新生赛</span> - 作品招募中--%>
                    <%--</h1>--%>
                    <%--<p class="sp-layer"--%>
                    <%--data-position="center" data-vertical="15%" data-show-delay="1000" data-hide-delay="200" data-show-transition="left" data-hide-transition="down">--%>
                    <%--2017-10-17 - 2017-12-17--%>
                    <%--</p>--%>
                <%--</a>--%>
            <%--</div>--%>
            <!-- Slides End -->

        </div>
    </section>
    <%
        getDeparts getdepart = new getDeparts();
        List<Departs> departs = getdepart.getDepartInfo();
        Integer length;
        length = departs.size();
    %>


    <!-- ===================================
        ABOUT SECTION
    ==================================== -->
    <section id="about" class="clean-section-wrapper background-one">
        <div class="container">
            <div class="row">

                <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown">
                    <h1><span class="clean-color-contras">部门构成</span></h1>
                    <div class="clean-line"></div>
                    <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">DCA（数码创意协会）由<%=length%>个部门组成：</p>
                </div>
                <!-- Section Header End -->

                <!-- What We Do -->
                <div class="clean-what-we-do">
                    <%

                        Departs first = departs.get(0);
                    %>

                    <div class="col-md-3 col-sm-3 col-xs-12 clean-blurb-round-icon wow bounceInLeft">
                        <div class="clean-icon">
                            <!-- <i class="fa fa-html5"></i> -->
                            <img src="<%=first.getImg()%>" />
                        </div>
                        <h3><%=first.getDepartmentName()%></h3>
                        <p><%=first.getContent()%></p>
                    </div>
                    <%
//                        getDeparts getdepart = new getDeparts();
//                        List<Departs> departs = getdepart.getDepartInfo();
                        for (int i = 1;i<departs.size();i++){
                            Departs d = departs.get(i);
                    %>

                    <div class="col-md-3 col-sm-3 col-xs-12 clean-blurb-round-icon wow bounceIn" data-wow-delay=".5s">
                        <div class="clean-icon">
                            <img src="<%=d.getImg()%>" />
                            <!-- <i class="fa fa-css3"></i> -->
                        </div>
                        <h3><%=d.getDepartmentName()%></h3>
                        <p><%=d.getContent()%></p>
                    </div>

                    <%
                        }
                    %>

                </div>
                <!-- What We Do End -->

            </div>
        </div>
    </section>

    <!-- ===================================
        FEATURED WORK SECTION
    ==================================== -->
    <section id="featured-works" class="clean-section-wrapper">
        <!-- Container -->
        <div class="container">
            <div class="row">

                <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown">
                    <h1><span class="clean-color-contras">优秀作品展示</span></h1>
                    <div class="clean-line"></div>
                    <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">以下作品来自往届比赛</p>
                </div>
                <!-- Section Header End -->

            </div>
        </div>

        <!-- Featured Works Slider -->
        <div class="container-fluid">
            <div class="row-fluid">

                <div class="clean-portfolio-work-slider-section wow fadeIn" data-wow-duration="2s">
                    <div id="featured-work-slider" class="owl-carousel clean-portfolio-works-slider">

                        <%
                            getWorks getwork = new getWorks();
                            List<Works> works = getwork.getWorkInfo();
                            for (int i = 0;i<works.size();i++){
                                Works w = works.get(i);
                        %>

                        <div class="clean-portfolio-work-item">

                            <img src="<%=w.getContent()%>" alt="Feature Work 1">
                            <div class="clean-port-work-details">
                                <ul class="clean-work-meta">
                                    <li class="clean-lighbox"><a href="<%=w.getContent()%>" class="clean-featured-work-img"><i class="fa fa-arrows-alt"></i></a></li>
                                </ul>
                            </div>

                        </div>
                        <%
                            }
                        %>

                    </div>
                </div>
            </div>
        </div>
        <!-- Featured Works Slider -->

    </section>


   <!-- ===================================
        CONTACT SECTION
    ==================================== -->
    <section id="contact" class="clean-section-wrapper clean-contact-section background-one" data-stellar-background-ratio="0.5">
    <div class="clean-parallax-overlay"></div>
        <div class="container">
            <div class="row">

                <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown clean-section-header-parallax">
                    <h1><span class="clean-color-contras">联系我们</span></h1>
                    <div class="clean-line"></div>
                    <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">你可以通过这几种方式来找我们哟~</p>
                </div>
                <!-- Section Header End -->

                <div class="clean-contact-details">

                    <!-- What We Do -->
                    <div class="clean-what-we-do">
                        <%
                            getContacts getcontact = new getContacts();
                            List<Contacts> contacts = getcontact.getContactInfo();
                            Contacts st = contacts.get(0);

                        %>

                        <div class="col-md-3 col-sm-3 col-xs-12 clean-blurb-round-icon wow bounceInLeft">
                            <div class="clean-icon">
                                <a href="<%=st.getHref()%>"><i class="fa fa-<%=st.getImg()%>"></i></a>
                            </div>
                            <h3><%=st.getContent()%></h3>
                        </div>

                        <%
                            for (int i = 1;i<contacts.size();i++){
                                Contacts c = contacts.get(i);
                        %>

                        <div class="col-md-3 col-sm-3 col-xs-12 clean-blurb-round-icon wow bounceIn" data-wow-delay=".5s">
                            <div class="clean-icon">
                                <a href="<%=c.getHref()%>"><i class="fa fa-<%=c.getImg()%>"></i></a>
                            </div>
                            <h3><%=c.getContent()%></h3>
                        </div>
                        <%
                            }
                        %>

                    </div>
                    <!-- What We Do End -->

                </div>
            </div>
        </div>
    </section>

    
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
    <!--<script src="js/modernizr.min.js"></script>-->
	<script src="js/jquery.min.js"></script>
    <!--<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>-->
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
