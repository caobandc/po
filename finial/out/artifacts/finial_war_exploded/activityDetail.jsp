<%@ page import="entity.Contacts" %>
<%@ page import="pub_fun.getContacts" %>
<%@ page import="java.util.List" %>
<%@ page import="pub_fun.getActDetail" %>
<%@ page import="entity.Activitys" %>
<%@ page import="pub_fun.getComments" %>
<%@ page import="entity.Comments" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">

    <!-- PAGE TITLE -->
    <title>活动详情</title>


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
    <%
        String last = request.getQueryString().toString();
        String[] temp = last.split("=");
        String aid = temp[1];
        getActDetail getdetail = new getActDetail();
        List<Activitys> activity = getdetail.detailInfo(aid);
        session.setAttribute("aid",aid);
//        for (int i=0;i<activitys.size();i++){
            Activitys a = activity.get(0);
    %>


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
                    <h1><span class="clean-color-contras"><%=a.getActivityName()%></span></h1>
                    <!-- <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">`Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellat at, totam, nam aspernatur voluptatum nostrum officiis deserunt nisi quibusdam ipsam?</p> -->
                </div>
                <!-- Section Header End -->

                <div class="col-md-12 col-sm-12 col-xs-12 clean-custom-sec-img wow bounceInLeft">
                    <img src="<%=a.getImg()%>" alt="Custom Image">
                </div>

                <div class="col-md-12 col-sm-12 col-xs-12 clean-custom-sec-text wow bounceInRight">
                    <h3><%=a.getActivityMes()%></h3>
                    <p><%=a.getContent()%></p>
                </div>
            </div>
        </div>
    </section>

    <%
        Integer flag;
//        out.print(session.getAttribute("name"));
        if(session.getAttribute("name")==""){
            flag = 0;
//            out.print("<a href=\"personHome.jsp\">");

//            out.print("</a>");
        }else{
            flag = 1;
        }
    %>

    <!-- ===================================
        CONTACT SECTION
    ==================================== -->
    <section id="contact" class="clean-section-wrapper clean-contact-section background-one" data-stellar-background-ratio="0.5">
        <div class="clean-parallax-overlay"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown clean-section-header-parallax">

                    <div class="clean-line"></div>
                    <h1><span class="clean-color-contras">评论区</span></h1>
                    <!-- <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Laborum error ab rem atque impedit soluta quidem, deleniti culpa. Accusantium placeat commodi harum, aut cumque numquam molestiae vel ut eum consequuntur.</p> -->
                </div>


                <div class="clean-contact-details">

                    <!-- Contact Form -->
                    <div class="col-md-12 col-sm-12 col-xs-12 clean-contact-form wow bounceInRight">
                        <div id="contact-result"></div>
                        <form id="contact-form" method="post" action="servlet/addComment">

                            <div class="clean-input-email clean-input-fields">
                                <label for="commentText">评论内容：</label>
                                <input type="text" name="commentText" id="commentText" required>
                            </div>
                                <%
                                    if(flag==0) {
                                        out.print("<div class=\"col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown clean-section-header-parallax\">");
                                        out.print("<h1><span class=\"clean-color-contras\">登录即可评论！</span></h1>");
                                        out.print("</div>");
                                    }else if(flag==1){
                                        out.print("<input type=\"submit\" value=\"发 送\" id=\"submit-btn\">");
                                    }
                                %>

                            <%--<input type="submit" value="发 送" id="submit-btn">--%>
                        </form>

                    </div>
                    <!-- Contact Form End -->

                </div>
            </div>
        </div>
    </section>
    
    <!-- ===================================
        TESTIMONIALS SECTION
    ==================================== -->
    <section id="testimonial"  class="clean-testimonial-section background-two">

        <div class="clean-parallax-overlay"></div>

        <div class="clean-testimonial-wrapper wow bounceIn">
            <div class="container">
                <div class="row">

                    <i class="icon-bubbles comment-icon"></i>

                    <!-- Testimonial Slider -->
                    <div id="clean-testimonial" class="owl-carousel clean-testimonial">

                        <%
                            getComments getcomment = new getComments();
                            List<Comments> comments = getcomment.getCommentInfo(aid);
                            for (int i=0;i<comments.size();i++){
                                Comments com = comments.get(i);

                        %>

                        <!-- Slides -->

                        <div class="clean-testimonial-slides col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1"> 
                            <div class="clean-member-img-wrapper">
                                <img src="<%=com.getImg()%>">
                            </div>
                            <p><%=com.getCommentText()%></p>
                            <p class="clean-client-info"><%=com.getNickName()%></p>
                        </div>
                        <!-- Slides End -->
                        <%
                            }
                        %>

                        <%--<!-- Slides -->--%>
                        <%--<div class="clean-testimonial-slides col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">--%>
                            <%--<div class="clean-member-img-wrapper">--%>
                                <%--<img src="images/testimonial/2.png" alt="Team Member 2">--%>
                            <%--</div>--%>
                            <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Temporibus eum quasi illum, impedit perspiciatis saepe officiis dolore alias expedita et obcaecati doloremque, quis ipsam aperiam, eveniet eligendi at adipisci quisquam.</p>--%>
                            <%--<p class="clean-client-info">Pirlo Doe</p>--%>
                        <%--</div>--%>
                        <%--<!-- Slides End -->--%>

                        <%--<!-- Slides -->--%>
                        <%--<div class="clean-testimonial-slides col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">--%>
                            <%--<div class="clean-member-img-wrapper">--%>
                                <%--<img src="images/testimonial/3.png" alt="Team Member 2">--%>
                            <%--</div>--%>
                            <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, aut blanditiis. Commodi iste, dignissimos laboriosam magni mollitia perferendis accusantium quis, totam quaerat, reprehenderit officia explicabo. Cum cupiditate error temporibus blanditiis.</p>--%>
                            <%--<p class="clean-client-info">Jin Doe</p>--%>
                        <%--</div>--%>
                        <%--<!-- Slides End -->--%>
                         <%--<!-- Slides -->--%>
                         <%--<div class="clean-testimonial-slides col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">--%>
                                <%--<div class="clean-member-img-wrapper">--%>
                                    <%--<img src="images/testimonial/3.png" alt="Team Member 2">--%>
                                <%--</div>--%>
                                <%--<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Similique, aut blanditiis. Commodi iste, dignissimos laboriosam magni mollitia perferendis accusantium quis, totam quaerat, reprehenderit officia explicabo. Cum cupiditate error temporibus blanditiis.</p>--%>
                                <%--<p class="clean-client-info">Jin Doe</p>--%>
                            <%--</div>--%>
                            <%--<!-- Slides End -->--%>

                    </div>
                    <!-- Testimonial Slider End -->

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
                            getContacts getcontact = new getContacts();
                            List<Contacts> contacts = getcontact.getContactInfo();

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
