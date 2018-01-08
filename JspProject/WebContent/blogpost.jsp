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

<style type="text/css">
.form-style-6 {
	font: 95% Arial, Helvetica, sans-serif;
	max-width: 810px;
	margin-left: 350px;;
	padding: 16px;
	background: #F7F7F7;
}

.form-style-6 h1 {
	background: #43D1AF;
	padding: 20px 0;
	font-size: 140%;
	font-weight: 300;
	text-align: center;
	color: #fff;
	margin: -16px -16px 16px -16px;
}

.form-style-6 input[type="text"], .form-style-6 input[type="date"],
	.form-style-6 input[type="datetime"], .form-style-6 input[type="email"],
	.form-style-6 input[type="number"], .form-style-6 input[type="search"],
	.form-style-6 input[type="time"], .form-style-6 input[type="url"],
	.form-style-6 textarea, .form-style-6 select {
	-webkit-transition: all 0.30s ease-in-out;
	-moz-transition: all 0.30s ease-in-out;
	-ms-transition: all 0.30s ease-in-out;
	-o-transition: all 0.30s ease-in-out;
	outline: none;
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	width: 100%;
	background: #fff;
	margin-bottom: 4%;
	border: 1px solid #ccc;
	padding: 3%;
	color: #555;
	font: 95% Arial, Helvetica, sans-serif;
}

.form-style-6 input[type="text"]:focus, .form-style-6 input[type="date"]:focus,
	.form-style-6 input[type="datetime"]:focus, .form-style-6 input[type="email"]:focus,
	.form-style-6 input[type="number"]:focus, .form-style-6 input[type="search"]:focus,
	.form-style-6 input[type="time"]:focus, .form-style-6 input[type="url"]:focus,
	.form-style-6 textarea:focus, .form-style-6 select:focus {
	box-shadow: 0 0 5px #43D1AF;
	padding: 3%;
	border: 1px solid #43D1AF;
}

.form-style-6 input[type="submit"], .form-style-6 input[type="button"] {
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
	width: 100%;
	padding: 3%;
	background: #43D1AF;
	border-bottom: 2px solid #30C29E;
	border-top-style: none;
	border-right-style: none;
	border-left-style: none;
	color: #fff;
}

.form-style-6 input[type="submit"]:hover, .form-style-6 input[type="button"]:hover
	{
	background: #2EBC99;
}
</style>


</head>

<body>




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
							<img src="assets/images/pic/photo.jpg" alt=""
								style="hight: 270px; width: 229px"> <a
								href="javascript:void(0)" class="collapsed" data-target="#menu"
								data-toggle="collapse"><i class="icon-menu menu"></i></a>
							<div id="menu" class="collapse">
								<ul class="menu-link">
									<li><a href="home.jsp">Home</a></li>
									<li><a href="#">About</a></li>
									<li><a href="blogpost.jsp">Post Blog</a></li>
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

				<div class="form-style-6">
					<h1>POST BLOG</h1>
					<form method="post" action="BlogP">
						<input type="text" name="title" placeholder="Enter Title" /> <input
							type="text" name="date" placeholder="Date: December 27,2017" />
						<textarea name="description" placeholder="Description"></textarea>
						<input type="submit" value="POST" />
					</form>
				</div>

			</div>

		</div>


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
