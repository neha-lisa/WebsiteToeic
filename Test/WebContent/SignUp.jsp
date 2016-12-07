<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
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
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-theme.min.css" rel="stylesheet">
<style type="text/css">
p.groove {
	border-style: groove;
}

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
	width: auto;
	padding: 10px 18px;
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
</style>
<title>Home</title>
</head>
<body>
	<div class="container">

		<div class="well well-lg">


			<div id="navbar" class="navbar-collapse collapse">
				<div class="col-md-8">
					<div class="container">
						<div class="media">
							<img src="Image/MsHoa.jpg">
						</div>
					</div>
				</div>
				<div class="col-md-4">
					</ul>

					<ul class="nav navbar-nav navbar-right">
						<a class="btn btn-success " href="Login.jsp" type="submit">Đăng
							Nhập</a>

						<ul class="nav navbar-nav navbar-right">
							<a class="btn btn-success " href="SignUp.jsp" type="submit">Đăng
								Ký</a>
				</div>
</body>


<script>
// Get the modal
var modal = document.getElementById('id02');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>



<div class="navbar-collapse collapse"></div>
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
						href="DangNhap.jsp"><strong>Home</strong></a></li>
					<li class="dropdown"><a style="color: black"
						class="dropdown-toggle" data-toggle="dropdown" href="#">Up
							Load<span class="caret"></span>
					</a>
						<ul class="dropdown-menu">
							<li><a href="TaiFile.jsp">Đăng bài</a></li>
							<li><a href="UpLoad2.jsp">Những bài đã đăng </a></li>
						</ul>
					<li><a class="textcolor" style="color: black" href="Share.jsp"><strong>Share</strong></a></li>
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
	</div>
</div>
<div id="Main">
	<div class="row">
		<!--cột trái-->
		<div class="col-md-2">
			<div class="panel panel-success">
				<div class="panel-heading">
					<h3 class="panel-title">
						<strong> Topic </strong>
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
		<!--cột giữa-->
		<div class="container">
			<div class="col-md-7">
				<div class="panel panel-info">
					<div class="panel-heading">
						<h3 class="panel-title">
							<strong>Đăng Ký Tài Khoản</strong>
						</h3>
					</div>
					<div class="panel-body">
						<div class="box_register">
							<form method="post" action="registration.jsp">
								<div class="form_item">
									<span>Full name:</span> <br>
									<input type="text" name="fullname"
										placeholder="Ex:Trần Công Minh" value="">
								</div>
								<div class="form_item">
									<span>Username</span> <br>
									<input type="text" name="username" placeholder="Ex:Kinect"
										value="">
								</div>
								<div class="form_item">
									<span>Password</span> <br>
									<input type="password" name="password" value="">
								</div>
								<div class="form_item">
									<span>Confirm password</span> <br>
									<input type="password" name="cpw" value="">
								</div>
								<div class="form_item">
									<span>Email</span> <br>
									<input type="email" name="email" placeholder="Enter your mail"
										value="">
								</div>
								<div class="form_item">
									<span>Mobile</span> <br>
									<input type="text" name="mobile" placeholder="Enter your phone"
										value="">
								</div>

								<div class="form_item">
									<span>Where do you live ?</span><select name="address">
										<option value="1">Hà Nội</option>
										<option value="2">Hồ Chí Minh</option>
										<option value="3">Đà Nẵng</option>
										<option value="0">Khác</option>
									</select>
								</div>
								<br>
								<div class="form_item">
									<span>Your birth day</span> <br> Date: <select
										name="birthday">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
										<option value="13">13</option>
										<option value="14">14</option>
										<option value="15">15</option>
										<option value="16">16</option>
										<option value="17">17</option>
										<option value="18">18</option>
										<option value="19">19</option>
										<option value="20">20</option>
										<option value="21">21</option>
										<option value="22">22</option>
										<option value="23">23</option>
										<option value="24">24</option>
										<option value="25">25</option>
										<option value="26">26</option>
										<option value="27">27</option>
										<option value="28">28</option>
										<option value="29">29</option>
										<option value="30">30</option>
										<option value="31">31</option>
									</select> Month: <select name="birthmonth">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
										<option value="4">4</option>
										<option value="5">5</option>
										<option value="6">6</option>
										<option value="7">7</option>
										<option value="8">8</option>
										<option value="9">9</option>
										<option value="10">10</option>
										<option value="11">11</option>
										<option value="12">12</option>
									</select> Year: <select name="birthyear">
										<option value="1960">1960</option>
										<option value="1961">1961</option>
										<option value="1962">1962</option>
										<option value="1963">1963</option>
										<option value="1964">1964</option>
										<option value="1965">1965</option>
										<option value="1966">1966</option>
										<option value="1967">1967</option>
										<option value="1968">1968</option>
										<option value="1969">1969</option>
										<option value="1970">1970</option>
										<option value="1971">1971</option>
										<option value="1972">1972</option>
										<option value="1973">1973</option>
										<option value="1974">1974</option>
										<option value="1975">1975</option>
										<option value="1976">1976</option>
										<option value="1977">1977</option>
										<option value="1978">1978</option>
										<option value="1979">1979</option>
										<option value="1980">1980</option>
										<option value="1981">1981</option>
										<option value="1982">1982</option>
										<option value="1983">1983</option>
										<option value="1984">1984</option>
										<option value="1985">1985</option>
										<option value="1986">1986</option>
										<option value="1987">1987</option>
										<option value="1988">1988</option>
										<option value="1989">1989</option>
										<option value="1990">1990</option>
										<option value="1991">1991</option>
										<option value="1992">1992</option>
										<option value="1993">1993</option>
										<option value="1994">1994</option>
										<option value="1995">1995</option>
										<option value="1996">1996</option>
										<option value="1997">1997</option>
										<option value="1998">1998</option>
										<option value="1999">1999</option>
										<option value="2000">2000</option>
										<option value="2001">2001</option>
										<option value="2002">2002</option>
										<option value="2003">2003</option>
										<option value="2004">2004</option>
										<option value="2005">2005</option>
										<option value="2006">2006</option>
									</select>
								</div>
								<br>
								<td><input type="submit" value="Đăng ký" /></td>
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
</body>
<footer>
	<div class="container">
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
	</div>
</footer>
</html>
