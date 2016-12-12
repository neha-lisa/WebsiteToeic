<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="s"%>
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
table {
	font-family: arial, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

td, th {
	border: 1px solid #dddddd;
	text-align: left;
	padding: 8px;
}

tr:nth-child(even) {
	background-color: #dddddd;
}
</style>
<title>Personal info</title>
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
						<li class="active"><a
							href="Personalinfo.jsp?username=<c:out value="${sessionScope['loginUser']}" />">
								<c:out value="${sessionScope['loginUser']}" /> <span
								class="sr-only"></span>
						</a></li>
						<li class="active"><a href="Login.jsp">Đăng Xuất<span
								class="sr-only"></span></a></li>
					</ul>

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
								<li><a class="textcolor" style="color: black"
									href="TaiFile.jsp"><strong>Up Load</strong></a></li>
									<li class="dropdown"><a style="color: black"
									class="dropdown-toggle" data-toggle="dropdown" href="#">Tài Liệu<span class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="UpLoad2.jsp">Cá Nhân</a></li>
										<li><a href="fileshare.jsp">Được Chia Sẻ </a></li>
									</ul>
								<li class="dropdown"><a style="color: black"
									class="dropdown-toggle" data-toggle="dropdown" href="#">Test<span
										class="caret"></span></a>
									<ul class="dropdown-menu">
										<li><a href="Reading.jsp">Reading Test</a></li>
										<li><a href="Listening.jsp">Listening Test</a></li>
										<li><a href="Test.jsp">Full Test</a></li>
									</ul>
									<li><a class="textcolor" style="color: black"
									href="hotro.jsp"><strong>Hỗ Trợ</strong></a></li>	
							</ul>
						</div>
				</div>
			</div>

			<div id="Main">
				<div class="row">
					<div class="col-md-10">
					  <div class="col-md-offset-1">
						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">Thông Tin Tài Khoản</h3>
							</div>
							<div class="panel-body">
								<!--cot trái-->
								<div class="col-md-12">
								<form action="chinhsuathongtin.jsp" method="post">
									<s:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
										url="jdbc:mysql://localhost/laptrinhweb" user="root"
										password="Thief1996" />
									<s:query dataSource="${dbsource}" var="thongtin">
								        SELECT * from account
								        where account.username='${param.username}'				    
						           </s:query>
									
										
										<c:forEach var="rows" items="${thongtin.rows}">
											<div class="form-group">
												<label class="col-sm-2">Full Name</label>
												<input type="text" value="${rows.fullname }" name="fullname">
											</div>
											
											<div class="form-group">
												<label class="col-sm-2">User Name</label>
												<input type="text" value="${rows.username }" name="username">
											</div>
											
											<div class="form-group">
												<label class="col-sm-2">Password</label>
												<input type="password" value="${rows.password }" name="password">
											</div>
											
											<div class="form-group">
												<label class="col-sm-2">Confirm Password</label>
												<input type="password" value="${rows.cpw }" name="cpw">
											</div><br>
											
											<div class="form-group">
												<label class="col-sm-2">Email</label>
												<input type="text" value="${rows.email }" name="email">
											</div>
											
											<div class="form-group">
												<label class="col-sm-2">Mobile</label>
												<input type="text" value="${rows.mobile }" name="mobile">
											</div>
										</c:forEach>
									
									<input type="submit" value="Sửa">
                                   </form>

								</div>

							</div>

						</div>
					</div>

				</div>
				<!--end cột giữa-->
			</div>
			<!--endrow chinh-->
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