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
<title>HomeSauDangNhap</title>
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
			<!--/.navbar-collapse -->



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
									href="HomeSauDangNhap.jsp"><strong>Trang Chủ</strong></a></li>							
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


			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class=""></li>
					<li data-target="#myCarousel" data-slide-to="1" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="2" class=""></li>
				</ol>
				<div class="carousel-inner" role="listbox">
					<div class="item">
						<img class="first-slide" src="Image/hinh1.jpg" alt="First slide">
						<div class="container">
							<div class="carousel-caption">
								<h1></h1>
								<p></p>
							</div>
						</div>
					</div>
					<div class="item active">
						<img class="second-slide" src="Image/hinh2.jpg" alt="Second slide">
						<div class="container">
							<div class="carousel-caption">
								<h1></h1>
								<p></p>
							</div>
						</div>
					</div>
					<div class="item">
						<img class="third-slide" src="Image/hinh3.jpg" alt="Third slide">
						<div class="container">
							<div class="carousel-caption">
								<h1></h1>
								<p></p>
							</div>
						</div>
					</div>
				</div>
				<a class="left carousel-control" href="#myCarousel" role="button"
					data-slide="prev"> <span
					class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					<span class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel" role="button"
					data-slide="next"> <span
					class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>
			</div>



			<div id="Main">
				<div class="row">
					<!--cột trái-->
					<div class="col-md-2">
						<div class="panel panel-success">
							<div class="panel-heading">
								<h3 class="panel-title">
									<strong>Topic </strong>
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
					<!--end cột trái-->

					<!--cột giữa-->
					<div class="col-md-7">
						<div class="panel panel-info">
							<div class="panel-heading">
								<h3 class="panel-title">
									<strong>Kênh hỗ trợ luyện thi TOEIC online</strong>
								</h3>
							</div>
							<div class="panel-body">
								<div class="row "></div>
								<div class="row">
									<p>
										Các em thân mến, sau bao trăn trở, website mshoatoeic.com của
										cô ra đời – hoàn toàn miễn phí, dành cho những ai yêu thích
										tiếng Anh, muốn chinh phục đỉnh cao TOEIC.<br> Cô tâm
										niệm: nếu muốn nhận lại, chúng ta phải cho đi. Niềm vui nối
										tiếp niềm vui chính là điều tuyệt vời nhất cô nhận được. Là
										bức email cảm ơn từ một người xa cách hàng trăm cây số - báo
										rằng nhờ học trên web của cô mà đạt điểm cao; là một comment
										ngắn gọn – cảm ơn cô rất nhiều, là nụ cười của các em, là niềm
										tự hào khi thấy những gì các em đạt được... Mỗi khoảnh khắc
										đáng trân quý đó đều được lưu lại, giản dị và chân thành, như
										chú ong - chắt chiu từng giọt mật.<br> Với niềm tin vững
										chắc ấy, cô cùng các Sứ giả tiếp tục cho ra mắt Kênh bài giảng
										online trên youtube để có thể giúp đỡ các bạn không có cơ hội
										đến học với cô nhưng luôn tìm tòi, tự học hỏi. Các em có thể
										tiếp cận những bài giảng Luyện thi TOEIC, bài giảng tiếng Anh
										giao tiếp của cô không chỉ qua câu chữ nữa mà còn là hình ảnh
										trực quan, giống như học trên lớp với cô vậy. Hãy nhấp vào nút
										"Đăng ký" - "Subscribe" để dễ dàng theo dõi, cập nhật các bài
										giảng của cô nhé!<br>
									<div class="media">
										<video width="500" height="380" controls> <source
											src="Video/video.mp4" type="video/mp4"> <source
											src="Video/video.ogg" type="video/ogg"></video>
									</div>
									<br> Hiện nay, mshoatoeic.com là website TOEIC 4 kỹ năng -
									ĐẦU TIÊN TẠI Việt Nam sẽ giúp các em có cơ hội hoàn thiện thêm
									kỹ năng giao tiếp Nói, Viết của mình (Các em xem TẠI ĐÂY). Đồng
									thời, cô mở thêm Khóa Tiếng Anh giao tiếp Công việc - Format
									TOEIC Speaking, Writing (TẠI ĐÂY) để cùng các em trải nghiệm,
									học Tiếng Anh Giao tiếp một cách CHUYÊN NGHIỆP hơn bao giờ hết.
									Chính vì thế, bên cạnh các bài giảng Luyện thi TOEIC, kênh của
									cô còn có rất nhiều bài giảng tiếng Anh giao tiếp nữa.
									</p>
								</div>
								<!--!endrow 2-->


							</div>

						</div>
						<!--end panel-->
						<!--end panel-->
					</div>
					<!--end cột giữa-->

					<!--cột 3-->
					<div class="col-md-3">
						<div class="panel panel-warning">
							<div class="panel-heading">
								<h3 class="panel-title">
									<strong>Các bài kiểm tra gần nhất</strong>
								</h3>
							</div>
							<div class="panel-body">
								<marquee scrolldelay="6" scrollamount="2"
									onmouseover="this.stop()" " onmouseout="this.start()"
									direction="up" height="300" style="height: 300px;" behavior=""
									direction="">
									<div class="media">
										<a class="pull-left" href="Reading.jsp"> </a>
										<div class="media-body">
											<h6 class="media-heading">
												<a href="Reading.jsp">Reading</a>
											</h6>
											A clean home (1)……….. rates
										</div>
									</div>
									<!--continute-->
									<div class="media">
										<a class="pull-left" href="Listening.jsp"> </a>
										<div class="media-body">
											<h6 class="media-heading">
												<a href="#">Listening</a>
											</h6>
											Select the name of the song in the audio later:
										</div>
									</div>
									<!--continute-->
									<div class="media">
										<a class="pull-left" href="Test.jsp"> </a>
										<div class="media-body">
											<h6 class="media-heading">
												<a href="#">Listening Test</a>
											</h6>
											Select the name of the song in the audio later:
										</div>
									</div>

									<div class="media">
										<a class="pull-left" href="#"> </a>
										<div class="media-body">
											<h6 class="media-heading">
												<a href="#">Full Test</a>
											</h6>
											Select the name of the song in the audio later:
										</div>
									</div>
								</marquee>
							</div>
						</div>
						<!--end panel-->
					</div>
					<!--end cột 3-->
				</div>
				<!--endrow chinh-->
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