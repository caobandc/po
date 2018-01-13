<%@ page import="java.util.List" %>
<%@ page import="pub_fun.getContacts" %>
<%@ page import="entity.Contacts" %>
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>联系我们</title>
    
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/slider-pro.css">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/color-green.css" id="colors" />
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
                        	<a href="#clean-slider">首页</a>
                        </li>
                        <li>
                            <a href="activityList.html">活动展示</a>
                        </li>
                        <li>
                            <a href="about.html">关于我们</a>
                        </li>
                        <li>
                        	<a href="workList.html">作品展示</a>
                        </li>
                        <li>
                        	<a href="contact.html">联系我们</a>
                        </li>
                        <li>
                        	<a href="login.html">登录</a>
                        </li>
                    </ul>
                </div>
                <!-- navbar-collapse end-->

            </div>
        </nav>
        <!-- Navigation Menu end-->
    </header>

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

            </div>
        </div>
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
                        <h1><span class="clean-color-contras">不如留言吧！</span></h1>
                    </div>
                    <!-- Section Header End -->
    
                    <div class="clean-contact-details">
    
                        <!-- Contact Form -->
                        <div class="col-md-12 col-sm-12 col-xs-12 clean-contact-form wow bounceInRight">
                            <div id="contact-result"></div>
                            <div id="contact-form">
                                <div class="clean-input-name clean-input-fields">
                                    <label for="name">姓名*：</label>
                                    <input type="text" name="name" id="name" required>
                                </div>
    
                                <div class="clean-input-email clean-input-fields">
                                    <label for="email">邮箱*：</label>
                                    <input type="email" name="email" id="email" required>
                                </div>
    
                                <div class="clean-input-message clean-input-fields">
                                    <label for="message">想说的话：</label>
                                    <textarea name="message" id="message" cols="30" rows="10"></textarea>
                                </div>
    
                                <input type="submit" value="发 送" id="submit-btn">
                            </div>
                        </div>
                        <!-- Contact Form End -->
    
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
    
                        <p class="clean-copyright-info">©2018 caobandc - Digital Creative Association</p>
    
                    </div>
                </div>
            </div>
        </footer>
    
</body>
</html>