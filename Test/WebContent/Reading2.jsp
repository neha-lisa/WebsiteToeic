<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Bootstrap Example</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<head>
<title>Bootstrap Case</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<style type="text/css">
<
body
>
{
padding-bottom
:
 
40
px
;

        
color
:
 
#5a5a5a
;

      
}
.carousel {
	height: 200px;
	margin-bottom: 60px;
	margin-left: 150px;
	margin-right: 150px;
}
/* Since positioning the image, we need to help out the caption */
.carousel-caption {
	z-index: 10;
}

/* Declare heights because of positioning of img element */
.carousel .item {
	height: 200px;
	background-color: #777;
	margin-left: 150px;
	margin-right: 150px;
}

.carousel-inner>.item>img {
	position: absolute;
	top: 0;
	left: 0;
	min-width: 100%;
	height: 200px;
}

.nav-sidebar {
	margin-right: 10px; /* 20px padding + 1px border */
	margin-bottom: 20px;
	margin-left: 10px;
}

.nav-sidebar>li>a {
	padding-right: 20px;
	padding-left: 20px;
}

.nav-sidebar>.active>a, .nav-sidebar>.active>a:hover, .nav-sidebar>.active>a:focus
	{
	color: #fff;
	background-color: #428bca;
}
</
body
>
</style>
<style>
/* Full-width input fields */
input[type=text], input[type=password] {
	width: 50%;
	padding: 6px 10px;
	margin: 8px 0;
	display: inline-block;
	border: -1px solid #ccc;
	box-sizing: border-box;
}

/* Set a style for all buttons */
button {
	background-color: #4CAF50;
	color: white;
	padding: 14px 20px;
	margin: 8px 0;
	border: none;
	cursor: pointer;
	width: 10%;
}

/* Extra styles for the cancel button */
.cancelbtn {
	width: 20%;
	padding: 5px 9px;
	background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
	text-align: center;
	margin: 24px 0 12px 0;
	position: relative;
}

img.avatar {
	width: 40%;
	border-radius: 50%;
}

.container {
	padding: 16px;
}

span.psw {
	float: right;
	padding-top: 16px;
}

/* The Modal (background) */
.modal {
	display: none; /* Hidden by default */
	position: fixed; /* Stay in place */
	z-index: 1; /* Sit on top */
	left: 0;
	top: 0;
	width: 100%; /* Full width */
	height: 100%; /* Full height */
	overflow: auto; /* Enable scroll if needed */
	background-color: rgb(0, 0, 0); /* Fallback color */
	background-color: rgba(0, 0, 0, 0.4); /* Black w/ opacity */
	padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
	background-color: #fefefe;
	margin: 5% auto 15% auto;
	/* 5% from the top, 15% from the bottom and centered */
	border: 1px solid #888;
	width: 50%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
	position: absolute;
	right: 25px;
	top: 0;
	color: #000;
	font-size: 35px;
	font-weight: bold;
}

.close:hover, .close:focus {
	color: red;
	cursor: pointer;
}

/* Add Zoom Animation */
.animate {
	-webkit-animation: animatezoom 0.6s;
	animation: animatezoom 0.6s
}

@
-webkit-keyframes animatezoom {
	from {-webkit-transform: scale(0)
}

to {
	-webkit-transform: scale(1)
}

}
@
keyframes animatezoom {
	from {transform: scale(0)
}

to {
	transform: scale(1)
}

}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
	span.psw {
		display: block;
		float: none;
	}
	.cancelbtn {
		width: 40%;
	}
}

.cancelbtn {
	width: auto;
	padding: 10px 18px;
	background-color: #f44336;
}
</style>
<title>Reading</title>
</head>
<body>

	<div class="container">

		<div class="well well-lg">

			<div id="navbar" class="navbar-collapse collapse">

				<div class="col-md-8">
					<div class="container">
						<div class="media">
							<img src="Image/hinh1.jpg">
						</div>
					</div>
				</div>
				<div class="col-md-4">
					</ul>
					<ul class="nav navbar-nav navbar-right">
						<a
							href="Personalinfo.jsp?username=<c:out value="${sessionScope['loginUser']}" />">
							<c:out value="${sessionScope['loginUser']}" />
						</a>

						<a href="Login.jsp">Đăng Xuất</a>
					</ul>

				</div>
				<div class="navbar-collapse collapse">
					<form class="navbar-form navbar-right">
				</div>
				<!--/.navbar-collapse -->
			</div>

			<div class="row">
				<div class="col-md-12">
					<nav class="navbar navbar-default" style="background: #07E5F5;">
						<div class="navbar-header">
							<button class="navbar-toggle" data-toggle="collapse"
								data-target="#main-menu">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						<div class="navbar-collapse collapse" id="main-menu">
							<ul class="nav nav-justified ">
								<li><a class="textcolor" style="color: black"
									href="HomeSauDangNhap.jsp"><strong>Home</strong></a></li>
								<li class="dropdown"><a style="color: black"
									class="dropdown-toggle" data-toggle="dropdown" href="#">Up
										Load<span class="caret"></span>
								</a>
									<ul class="dropdown-menu">
										<li><a href="TaiFile.jsp">Đăng bài</a></li>
										<li><a href="UpLoad2.jsp">Những bài đã đăng </a></li>
									</ul>
								<li><a class="textcolor" style="color: black"
									href="Share.jsp"><strong>Share</strong></a></li>
								<li class="dropdown"><a style="color: black"
									class="dropdown-toggle" data-toggle="dropdown" href="#">Test<span
										class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="Reading.jsp">Reading Test</a></li>
										<li><a href="Listening.jsp">Listening Test</a></li>
										<li><a href="Test.jsp">Full Test</a></li>
									</ul>
							</ul>
						</div>


					</nav>
				</div>
			</div>






			<div id="Main">
				<div class="row">
					<!--cột trái-->
					<div class="col-md-2">
						<div class="panel panel-success">
							<div class="panel-heading">
								<h3 class="panel-title">
									<strong>Topic</strong>
								</h3>
							</div>
							<ul class="list-group">
								<a href="#" class="list-group-item"><strong>Reading</strong></a>
								<div class="container">
									<a href="Reading.jsp">Reading 1</a><br> <a
										href="Reading2.jsp">Reading 2</a><br> <a href="Test4.jsp">Reading
										3</a><br>
								</div>
								<a href="Listening.jsp" class="list-group-item"><strong>Listening</strong></a>
								<div class="container">
									<a href="Listening.jsp">Listening 1</a><br> <a
										href="Test.jsp">Listening 2</a><br>
								</div>
							</ul>
						</div>

						<!--quang cao-->

					</div>


					<script type="text/javascript" src="jquery-3.1.1.min.js"></script>
					<script type="text/javascript" src="bootstrap.min.js"></script>
</body>

<div align="justify" class="col-md-9">

	<div class="panel-body"></div>
	<div class="well">

		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="container">


					<p align="justify">

						Memo <br> To: All staff <br> From: Personnel<br>
						Re: Upcoming vacancies<br> Date: September 30th<br> This
						is just to (1)………..everyone that with the decision to open a third
						branch, we will be needing to increase our<br> staff by at
						least 30. We will be advertising in the Daily Herald this coming
						Friday. We would also like to ask (2)….... <br>.staff if they
						know of any suitable candidates who would be interested in joining
						the Greyford team. If you know of<br> someone who could make
						a useful addition to Greyford, please ask them to (3)……….. copies
						of their resumes.<br> We value your input on our hiring
						decisions since it is important to us that we maintain the current
						harmony and<br> level of cooperation we (4)……….. here at
						Greyford. <br> Thank you.

					</p>
					<form>
						<p align="left">1.</p>
						<input type="radio" name="gender" value="male" checked>A.
						Remember<br> <input type="radio" name="gender" value="female">B.
						Reminder<br> <input type="radio" name="gender" value="other">C.
						Remind<br> <input type="radio" name="gender" value="other">D.
						Reconcile<br>
						<form>
							<p align="left">2.</p>
							<input type="radio" name="gender" value="male" checked>A.
							Already<br> <input type="radio" name="gender" value="female">B.
							Existing<br> <input type="radio" name="gender" value="other">C.
							Essential<br> <input type="radio" name="gender"
								value="other">D. Prospective<br>
						</form>
						<br>
						<form>
							<p align="left">3.</p>
							<input type="radio" name="gender" value="male" checked>A.
							Surrender<br> <input type="radio" name="gender"
								value="female">B. Enters<br> <input type="radio"
								name="gender" value="other">C. Submit<br> <input
								type="radio" name="gender" value="other">D. Seal<br>
						</form>
						<br>
						<form>
							<p align="left">4.</p>
							<input type="radio" name="gender" value="male" checked>A.
							Enjoy<br> <input type="radio" name="gender" value="female">B.
							Celebrate<br> <input type="radio" name="gender"
								value="other">C. Live<br> <input type="radio"
								name="gender" value="other">D. Rejoice<br>
						</form>
						<br>


						<body>
							<div id="navbar" class="navbar-collapse collapse">

								<div class="col-md-4">
									</ul>

									<ul class="nav navbar-nav navbar-right">
										<button
											onclick="document.getElementById('id01').style.display='block'"
											style="width: auto;">Submit</button>
										<div id="id01" class="modal">

											<form class="modal-content animate" action="action_page.php">

												<div class="container">
													<div class="imgcontainer">
														<span
															onclick="document.getElementById('id02').style.display='none'"
															class="close" title="Close Modal">&times;</span>
													</div>
												</div>

												<div class="container">
													<h1>Score</h1>
													<label><b>Tổng Điểm</b></label> <br> <input
														type="text" placeholder="75/100" name="uname" required>
													<br> <label><b>Số Câu Đúng</b></label> <br> <input
														type="text" placeholder="3/4" name="uname" required>
													<br>

												</div>
												<div class="container" style="background-color:">
													<a href="Reading2.jsp" class="btn btn-info" role="button">Again</a>
													<a href="Reading.jsp" class="btn btn-info" role="button">Previous</a>
													<a href="Reading.jsp" class="btn btn-info" role="button">Next</a>

												</div>
										</div>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
<footer>

	<div class="well well-lg">
		<div class="row">
			<div class="col-md-12">
				<div class="text">
					<h6>Copyright © 2013, Trung Tâm Luyện Thi Toeic</h6>
					<h6>Địa chỉ: 69 Võ Văn Ngân, Phường Linh Chiểu, Quận Thủ Đức,
						Thành phố Hồ Chí Minh.</h6>
					<h6>Điện thoại: (+84 - 8) 38968641 - (+84 - 8) 38961333</h6>
					<h6>E-mail: TrungTamToeic@gmail.com</h6>
				</div>
			</div>
		</div>
	</div>

</footer>
</html>