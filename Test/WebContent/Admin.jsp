<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

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
<title>Admin</title>
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
				 
					<ul class="nav navbar-nav navbar-right">
						<a
							href="Personalinfo.jsp?username=<c:out value="${sessionScope['loginUser']}" />">
							<c:out value="${sessionScope['loginUser']}" />
						</a>

						<a href="Login.jsp">Đăng Xuất</a>
					</ul>

				</div>
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
						</ul>
					</div>
				</div>
			</div>

			<div id="Main">
				<div class="row">


					<!--cột giữa-->
					<div class="col-md-11">
					<div class="col-md-offset-1">
						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">
									<strong>Quản Lý Tài Khoản User</strong>
									
								</h3>
							</div>
							<div class="panel-body">
							     <table class="table table-bordered table-hover">
							          <thead>
							                <tr>
							                     <th>Full Name</th>
							                     <th>Username</th>
							                     <th>Email</th>
							                     <th>Mobile</th>
							                     <th>Regdate</th>
							                     <th>Active</th>
							                     <th>Messenger</th>
							                </tr>
							          </thead>
							          <tbody>
													<sql:setDataSource var="con" driver="com.mysql.jdbc.Driver" 
													url="jdbc:mysql://localhost/laptrinhweb" user="root" password="Thief1996"/>
													<sql:query dataSource="${con}" var="result">
														select *
														from account inner join tinnhan
														on account.username=tinnhan.username_tinnhan
														where account.quyen!=0

													</sql:query>
													
													<c:forEach var="rows" items="${result.rows }">
														<tr>
															<td>${rows.fullname }</td>
															<td>${rows.username }</td>
															<td>${rows.email }</td>
															<td>${rows.mobile }</td>
															<td>${rows.regdate }</td>
															<td><a href="chitiettaikhoan.jsp?id=<c:out value="${rows.id }"/>">Chi tiết</a></td>
															<td><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal">Xem</button>
																
																  <!-- Modal -->
																  <div class="modal fade" id="myModal" role="dialog">
																    <div class="modal-dialog">
																    
																      <!-- Modal content-->
																      <div class="modal-content">
																        <div class="modal-header">
																          <button type="button" class="close" data-dismiss="modal">&times;</button>
																          <h4 class="modal-title">Tin Nhắn</h4>
																        </div>
																        <div class="modal-body">
																          <p>${rows.noidung }</p>
																        </div>
																        <div class="modal-footer">
																          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
																        </div>
																      </div>
																      
																    </div>
																  </div></td>
															
														</tr>
													</c:forEach>		
											</tbody>
							     </table>
							     
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