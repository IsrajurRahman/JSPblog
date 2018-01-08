<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">

<head>

<!-- Meta Tag -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="IE=edge">


<title>My Personal Blog</title>

<!-- Favicon -->
<link rel="shortcut icon" href="assets/images/favicon/favicon.ico">
<link rel="apple-touch-icon" sizes="144x144" type="image/x-icon"
	href="images/favicon/apple-touch-icon.png">

<!-- All CSS Plugins -->
<link rel="stylesheet" type="text/css" href="assets/css/plugin.css">

<!-- Main CSS Stylesheet -->
<link rel="stylesheet" type="text/css" href="assets/css/style.css">

<!-- Google Web Fonts  -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Poppins:400,300,500,600,700">


<!-- HTML5 shiv and Respond.js support IE8 or Older for HTML5 elements and media queries -->
<!--[if lt IE 9]>
	   <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
	   <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->


</head>

<body>

	<%@page import="java.sql.DriverManager"%>
	<%@page import="java.sql.ResultSet"%>
	<%@page import="java.sql.Statement"%>
	<%@page import="java.sql.Connection"%>



	<!-- Preloader Start -->
	<div class="preloader">
		<div class="rounder"></div>
	</div>
	<!-- Preloader End -->




	<div id="main">
		<div class="container">
			<div class="row">



				<!-- About Me (Left Sidebar) Start -->
				<div class="col-md-3">
					<div class="about-fixed">

						<div class="my-pic">
							<img src="assets/images/pic/photo.jpg" alt="" style="hight: 270px; width: 229px"> <a
								href="javascript:void(0)" class="collapsed" data-target="#menu"
								data-toggle="collapse"><i class="icon-menu menu"></i></a>
							<div id="menu" class="collapse">
								<ul class="menu-link">
									<li><a href="home.jsp">Home</a></li>
									<li><a href="#">About</a></li>
									<li><a href="post.jsp">Post Blog</a></li>
								</ul>
							</div>
						</div>



						<div class="my-detail">

							<div class="white-spacing">
								<h1>Israjur Rahman</h1>
								<span>Web Developer</span>
							</div>

							<ul class="social-icon">
								<li><a href="#" target="_blank" class="facebook"><i
										class="fa fa-facebook"></i></a></li>
								<li><a href="#" target="_blank" class="twitter"><i
										class="fa fa-twitter"></i></a></li>
								<li><a href="#" target="_blank" class="linkedin"><i
										class="fa fa-linkedin"></i></a></li>
								<li><a href="#" target="_blank" class="github"><i
										class="fa fa-github"></i></a></li>
							</ul>

						</div>
					</div>
				</div>
				<!-- About Me (Left Sidebar) End -->

				<%
					String id = request.getParameter("userId");
					String driverName = "com.mysql.jdbc.Driver";
					String connectionUrl = "jdbc:mysql://localhost/";
					String dbName = "my_blog";
					String userId = "root";
					String password = "";

					try {
						Class.forName(driverName);
					} catch (ClassNotFoundException e) {
						e.printStackTrace();
					}

					Connection connection = null;
					Statement statement = null;
					ResultSet resultSet = null;
				%>





				<!-- Blog Post (Right Sidebar) Start -->
				<div class="col-md-9">
					<div class="col-md-12 page-body">
						<div class="row">


							<div class="sub-title">
								<h2>My Blog</h2>
								<a href="contact.html"><i class="icon-envelope"></i></a>
							</div>


							<div class="col-md-12 content-page">

								<%
									try {
										connection = DriverManager.getConnection(connectionUrl + dbName, userId, password);
										statement = connection.createStatement();
										String sql = "SELECT * FROM content";

										resultSet = statement.executeQuery(sql);
										while (resultSet.next()) {
								%>


								<!-- Blog Post Start -->
								<div class="col-md-12 blog-post">
									<div class="post-title">
										<a href="single.html"><h1><%=resultSet.getString("title")%></h1></a>
									</div>
									<div class="post-info">
										<span><%=resultSet.getString("date")%> / by <a href="#"
											target="_blank">Israjur Rahman</a></span>
									</div>
									<p><%=resultSet.getString("description")%></p>
									<a href="single.html"
										class="button button-style button-anim fa fa-long-arrow-right"><span>Read
											More</span></a>
								</div>
								<!-- Blog Post End -->

								<%
									}
										connection.close();
									} catch (Exception e) {
										e.printStackTrace();
									}
								%>



								<div class="col-md-12 text-center">
									<a href="javascript:void(0)" id="load-more-post"
										class="load-more-button">Load</a>
									<div id="post-end-message"></div>
								</div>

							</div>

						</div>



						<!-- Subscribe Form Start -->
						<div class="col-md-8 col-md-offset-2">
							<form id="mc-form" method="post" action=" ">

								<div class="subscribe-form margin-top-20">
									<input id="mc-email" type="email" placeholder="Email Address"
										class="text-input">
									<button class="submit-btn" type="submit">Submit</button>
								</div>
								<p>Subscribe to my weekly newsletter</p>
								<label for="mc-email" class="mc-label"></label>
							</form>

						</div>
						<!-- Subscribe Form End -->

					</div>


					<!-- Footer Start -->
					<div class="col-md-12 page-body margin-top-50 footer">
						<footer>
							<ul class="menu-link">
								<li><a href="index.html">Home</a></li>
								<li><a href="about.html">About</a></li>
								<li><a href="work.html">Work</a></li>
								<li><a href="contact.html">Contact</a></li>
							</ul>

							<p>© Copyright 2017 JspProject. All rights reserved</p>




						</footer>
					</div>
					<!-- Footer End -->


				</div>
				<!-- Blog Post (Right Sidebar) End -->

			</div>
		</div>
	</div>



	<!-- Back to Top Start -->
	<a href="#" class="scroll-to-top"><i class="fa fa-long-arrow-up"></i></a>
	<!-- Back to Top End -->


	<!-- All Javascript Plugins  -->
	<script type="text/javascript" src="assets/js/jquery.min.js"></script>
	<script type="text/javascript" src="assets/js/plugin.js"></script>

	<!-- Main Javascript File  -->
	<script type="text/javascript" src="assets/js/scripts.js"></script>


</body>
</html>
