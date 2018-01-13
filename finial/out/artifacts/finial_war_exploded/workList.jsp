
<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
	<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>作品列表</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="free html5, free template, free bootstrap, html5, css3, mobile first, responsive" />

  <!-- Facebook and Twitter integration -->
	<meta property="og:title" content=""/>
	<meta property="og:image" content=""/>
	<meta property="og:url" content=""/>
	<meta property="og:site_name" content=""/>
	<meta property="og:description" content=""/>
	<meta name="twitter:title" content="" />
	<meta name="twitter:image" content="" />
	<meta name="twitter:url" content="" />
	<meta name="twitter:card" content="" />


	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Magnific Popup -->
	<link rel="stylesheet" href="css/magnific-popup.css">
	<!-- Salvattore -->
	<link rel="stylesheet" href="css/salvattore.css">
	<!-- Theme Style -->
	<link rel="stylesheet" href="css/style.css">
	<!-- Modernizr JS -->
	<script src="js/modernizr.js"></script>
	<!-- FOR IE9 below -->
	<!--[if lt IE 9]>
	<script src="js/respond.min.js"></script>
	<![endif]-->

	<link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/responsive.css" />
	<link rel="stylesheet" href="css/color-green.css" id="colors" />

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
        <!-- Navigation Menu end-->
    

	
	
	<div id="fh5co-main">
		<div class="container">

			<div class="row">

        <div id="fh5co-board" data-columns>

        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/1.jpg" class="image-popup fh5co-board-img" title="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, eos?"><img src="images/featured-work/1.jpg" alt="Free HTML5 Bootstrap template"></a>
        		</div>
        		<div class="fh5co-desc">
					<div class="title">嫩脸一红</div>
					<span class="name">caobandc</span>
					<span class="time">2017-12-25 12：16</span>
				</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/2.jpg" class="image-popup fh5co-board-img"><img src="images/featured-work/2.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">
						<div class="title">咔嚓</div>
						<span class="name">caobandc</span>
						<span class="time">2017-12-25 12：16</span>
					</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/3.jpg" class="image-popup fh5co-board-img"><img src="images/featured-work/3.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">
						<div class="title">端庄优雅笑眯眯</div>
						<span class="name">caobandc</span>
						<span class="time">2017-12-25 12：16</span>
					</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/4.jpg" class="image-popup fh5co-board-img"><img src="images/featured-work/4.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">
						<div class="title">别偷看我看书</div>
						<span class="name">caobandc</span>
						<span class="time">2017-12-25 12：16</span>
					</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/5.jpg" class="image-popup fh5co-board-img"><img src="images/featured-work/5.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">
						<div class="title">刀客</div>
						<span class="name">caobandc</span>
						<span class="time">2017-12-25 12：16</span>
					</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/6.jpg" class="image-popup fh5co-board-img"><img src="images/featured-work/6.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">
						<div class="title">暗黑小粉红</div>
						<span class="name">caobandc</span>
						<span class="time">2017-12-25 12：16</span>
					</div>
				</div>
			</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/7.jpg" class="image-popup fh5co-board-img"><img src="images/featured-work/7.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">
						<div class="title">文学少女</div>
						<span class="name">caobandc</span>
						<span class="time">2017-12-25 12：16</span>
					</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/1.jpg" class="image-popup fh5co-board-img" title="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, eos?"><img src="images/featured-work/1.jpg" alt="Free HTML5 Bootstrap template"></a>
        		</div>
        		<div class="fh5co-desc">
					<div class="title">嫩脸一红</div>
					<span class="name">caobandc</span>
					<span class="time">2017-12-25 12：16</span>
				</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/2.jpg" class="image-popup fh5co-board-img"><img src="images/featured-work/2.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">
							<div class="title">咔嚓</div>
							<span class="name">caobandc</span>
							<span class="time">2017-12-25 12：16</span>
					</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/3.jpg" class="image-popup fh5co-board-img"><img src="images/featured-work/3.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">
							<div class="title">端庄优雅笑眯眯</div>
							<span class="name">caobandc</span>
							<span class="time">2017-12-25 12：16</span>
					</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/4.jpg" class="image-popup fh5co-board-img"><img src="images/featured-work/4.jpg" alt="Free HTML5 Bootstrap template"></a>
					<div class="fh5co-desc">
							<div class="title">别偷看我看书</div>
							<span class="name">caobandc</span>
							<span class="time">2017-12-25 12：16</span>
					</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/5.jpg" class="image-popup fh5co-board-img"><img src="images/featured-work/5.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">
						<div class="title">刀客</div>
						<span class="name">caobandc</span>
						<span class="time">2017-12-25 12：16</span>
					</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/6.jpg" class="image-popup fh5co-board-img"><img src="images/featured-work/6.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">
						<div class="title">暗黑小粉红</div>
						<span class="name">caobandc</span>
						<span class="time">2017-12-25 12：16</span>
					</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/7.jpg" class="image-popup fh5co-board-img"><img src="images/featured-work/7.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">
						<div class="title">文学少女</div>
						<span class="name">caobandc</span>
						<span class="time">2017-12-25 12：16</span>
					</div>
        		</div>
			</div>
			<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/1.jpg" class="image-popup fh5co-board-img" title="Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo, eos?"><img src="images/featured-work/1.jpg" alt="Free HTML5 Bootstrap template"></a>
        		</div>
        		<div class="fh5co-desc">
						<div class="title">嫩脸一红</div>
						<span class="name">caobandc</span>
						<span class="time">2017-12-25 12：16</span>
				</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/2.jpg" class="image-popup fh5co-board-img"><img src="images/featured-work/2.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">
							<div class="title">咔嚓</div>
							<span class="name">caobandc</span>
							<span class="time">2017-12-25 12：16</span>
					</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/3.jpg" class="image-popup fh5co-board-img"><img src="images/featured-work/3.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">
							<div class="title">端庄优雅笑眯眯</div>
							<span class="name">caobandc</span>
							<span class="time">2017-12-25 12：16</span>
					</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/4.jpg" class="image-popup fh5co-board-img"><img src="images/featured-work/4.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">
						<div class="title">别偷看我看书</div>
						<span class="name">caobandc</span>
						<span class="time">2017-12-25 12：16</span>
					</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/5.jpg" class="image-popup fh5co-board-img"><img src="images/featured-work/5.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">
						<div class="title">刀客</div>
						<span class="name">caobandc</span>
						<span class="time">2017-12-25 12：16</span>
					</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/6.jpg" class="image-popup fh5co-board-img"><img src="images/featured-work/6.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">
						<div class="title">暗黑小粉红</div>
						<span class="name">caobandc</span>
						<span class="time">2017-12-25 12：16</span>
					</div>
        		</div>
        	</div>
        	<div class="item">
        		<div class="animate-box">
	        		<a href="images/featured-work/7.jpg" class="image-popup fh5co-board-img"><img src="images/featured-work/7.jpg" alt="Free HTML5 Bootstrap template"></a>
	        		<div class="fh5co-desc">
						<div class="title">文学少女</div>
						<span class="name">caobandc</span>
						<span class="time">2017-12-25 12：16</span>
					</div>
        		</div>
        	</div>
        </div>
        </div>
       </div>
	</div>


	<!-- jQuery -->
	<script src="http://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<!-- jQuery Easing -->
	<script src="js/jquery.easing.js"></script>
	<!-- Bootstrap -->
	<script src="http://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Magnific Popup -->
	<script src="js/jquery.magnific-popup.min.js"></script>
	<!-- Salvattore -->
	<script src="js/salvattore.min.js"></script>
	<!-- Main JS -->
	<script src="js/main.js"></script>

	

	
	</body>
</html>
