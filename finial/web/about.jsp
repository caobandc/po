<%@ page import="pub_fun.getDeparts" %>
<%@ page import="entity.Departs" %>
<%@ page import="java.util.List" %>
<%@ page import="pub_fun.getUsers" %>
<%@ page import="entity.Users" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <title>关于我们</title>

    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/responsive.css" />
    <link rel="stylesheet" href="css/color-green.css" id="colors" />
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/font-awesome.4.6.0.css">

</head>
<body>
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
                    <a class="navbar-brand" href="index.html"><img class="logo" id="logo" src="images/logo.png" alt="Page"></a>

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
        ABOUT SECTION
    ==================================== -->
    <section id="about" class="clean-section-wrapper background-one">
            <div class="container">
                <div class="row">
    
                    <!-- Section Header -->
                    <div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown">
                        <h1><span class="clean-color-contras">部门构成</span></h1>
                        <div class="clean-line"></div>
                        <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">大概有这么几个部门：</p>
                    </div>
                    <!-- Section Header End -->

                    <!-- What We Do -->
                    <div class="clean-what-we-do">
                        <%
                            getDeparts getdepart = new getDeparts();
                            List<Departs> departs = getdepart.getDepartInfo();
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
        OFFER SECTION
    ==================================== -->
    <section id="offer" class="clean-section-wrapper clean-offer-section  background-two">
        <div class="container">
            <div class="row">
                <%
                    getUsers getuser = new getUsers();
                    List<Users> users = getuser.getUserInfo();
                    Integer i;
                    Integer length;
                    length = users.size();
                %>

                <!-- Section Header -->
                <div class="col-md-12 col-sm-12 col-xs-12 clean-section-header wow fadeInDown">
                    <h1><span class="clean-color-contras"><%=first.getDepartmentName()%></span></h1>
                    <div class="clean-line"></div>
                    <p class="col-md-8 col-sm-10 col-xs-12 col-md-offset-2 col-sm-offset-1">共<%=length%>人</p>
                </div>
                <!-- Section Header End -->

                <!-- Services -->
                <div class="clean-service-wrapper">



                    <%

                        for (i = 0;i<users.size();i=i+3) {
                            Users u = users.get(i);
                            Users u1 = users.get(i+1);
                            Users u2 = users.get(i+2);

                            out.println("<div class=\"col-md-4 col-sm-4 col-xs-12 wow fadeInUp\" data-wow-duration=\"1s\">");
                            out.println("<div class=\"clean-blurb-icon-only\">");
                            out.println("<img src=" + u.getImg() + " />");
                            out.println("<h3>" + u.getUsername() + "</h3>");
                            out.println("<p>" + u.getContent() + "</p>");
                            out.println("</div>");


                            out.println("<div class=\"clean-blurb-icon-only\">");
                            out.println("<img src=" + u1.getImg() + " />");
                            out.println("<h3>" + u1.getUsername() + "</h3>");
                            out.println("<p>" + u1.getContent() + "</p>");
                            out.println("</div>");

                            out.println("<div class=\"clean-blurb-icon-only\">");
                            out.println("<img src=" + u2.getImg() + " />");
                            out.println("<h3>" + u2.getUsername() + "</h3>");
                            out.println("<p>" + u2.getContent() + "</p>");
                            out.println("</div>");

                            out.println("</div>");

                        }
                    %>

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
                        <a href="homepage.jsp">
                            <img id="logo-footer" src="images/logo.png" alt="clean">
                        </a>
                    </div>

                    <p class="clean-copyright-info">更新于2017/12/25<br />©2018 caobandc - Digital Creative Association</p>

                </div>
            </div>
        </div>
    </footer>

</body>
</html>