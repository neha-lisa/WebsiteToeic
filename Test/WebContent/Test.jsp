<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*"%>


<!DOCTYPE html>
<html>
<head>
  <title>Thi Thu</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<head>
  <title>Thi Thu</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <link href="css/bootstrap-theme.min.css" rel="stylesheet">
  <style type="text/css">
    <body>
      {
        padding-bottom: 40px;
        color: #5a5a5a;
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
      .carousel-inner > .item > img {
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
        .nav-sidebar > li > a {
          padding-right: 20px;
          padding-left: 20px;
}
.nav-sidebar > .active > a,
.nav-sidebar > .active > a:hover,
.nav-sidebar > .active > a:focus {
  color: #fff;
  background-color: #428bca;
}
    </body>
  </style>
  <style>
/* Full-width input fields */
input[type=text], input[type=password]{
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
    background-color: rgb(0,0,0); /* Fallback color */
    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
    padding-top: 60px;
}
/* Modal Content/Box */
.modal-content {
    background-color: #fefefe;
    margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
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
.close:hover,
.close:focus {
    color: red;
    cursor: pointer;
}
/* Add Zoom Animation */
.animate {
    -webkit-animation: animatezoom 0.6s;
    animation: animatezoom 0.6s
}
@-webkit-keyframes animatezoom {
    from {-webkit-transform: scale(0)}
    to {-webkit-transform: scale(1)}
}
    
@keyframes animatezoom {
    from {transform: scale(0)}
    to {transform: scale(1)}
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
    <title>Test</title>
</head>
<body>
<div class="container">
  
 <div class="well well-lg">


  <div id="navbar" class="navbar-collapse collapse">
	<%
		HttpSession sess = request.getSession(false);
	%>
	<sql:setDataSource var="data" driver="com.mysql.jdbc.Driver"
		url="jdbc:mysql://localhost:3306/doanweb" user="root"
		password="khongbiet123456789" />
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
             <a href="Personalinfo.jsp?username=<c:out value="${sessionScope['loginUser']}" />"> 
            <c:out value="${sessionScope['loginUser']}" />
            </a>
            <a href="index.jsp">Đăng Xuất</a>
          </ul>
          
        </div>
        <div class="navbar-collapse collapse">
          <form class="navbar-form navbar-right">
          <form class="navbar-form navbar-right">
          </form>
        </div><!--/.navbar-collapse -->
    </div>

   <div class="row">
          <div class="col-md-12">
            <nav class="navbar navbar-default" style="background: #07E5F5;">
              <div class="navbar-header">
                <button class="navbar-toggle" data-toggle="collapse" data-target="#main-menu">
                       <span class="sr-only">Toggle navigation</span>
                       <span class="icon-bar"></span>
                       <span class="icon-bar"></span>
                       <span class="icon-bar"></span>
                    </button>
              </div>
              <div class="navbar-collapse collapse" id="main-menu">
                <ul class="nav nav-justified " >
                    <li><a class="textcolor" style="color: white" href="HomeSauDangNhap.jsp"><strong>Home</strong></a></li>
                    <li class="dropdown"><a style="color: white" class="dropdown-toggle" data-toggle="dropdown" href="#">Up Load<span class="caret"></span></a>
                        <ul class="dropdown-menu">
                          <li><a href="UpLoad.jsp">Đăng bài</a></li>
                          <li><a href="UpLoad2.jsp">Những bài đã đăng </a></li>
                        </ul>  
                    <li><a class="textcolor" style="color: white" href="Share.jsp"><strong>Share</strong></a></li>
                     <li class="dropdown"><a style="color: white" class="dropdown-toggle" data-toggle="dropdown" href="#">Test<span class="caret"></span></a>
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
              <div class="panel panel-success" >
                <div class="panel-heading">
                  <h3 class="panel-title" ><strong>Topic</strong></h3>
                </div >
                   <ul class="list-group">
                  <a href="#" class="list-group-item"><strong>Reading</strong></a>
                  <div class="container">
                  <a href="Reading.jsp">Reading 1</a><br>
                  <a href="Reading2.jsp">Reading 2</a><br>
                  <a href="Test4.jsp">Reading 3</a><br>
                  </div>
                  <a href="Listening.jsp" class="list-group-item"><strong>Listening</strong></a>
                  <div class="container">
                    <a href="Listening.jsp">Listening 1</a><br>
                    <a href="Test.jsp">Listening 2</a><br>
                  </div>
                </ul>               
              </div>
              
              <!--quang cao-->
              
            </div>
          <!--end cột trái-->

          <!--cột giữa-->
            <div class="col-md-10">
              <div class="container">


    <script type="text/javascript" src="jquery-3.1.1.min.js"></script>
    <script type="text/javascript" src="bootstrap.min.js"></script>
	
</body>

	 <div align="justify" class="col-md-9">
	     <div class="col-md-3">
			<form name="counter"><input type="text" size="8" name="d2" disabled ></form> 
			<script> 
			 var minutes=15
			 var seconds=0 
			 document.counter.d2.value='0.20' 
			function display()
			{ 
				   
				 if(seconds<=0 && seconds<0)
					 {
					 	XuatDiem();
					 	return;
					 }
					 else
						 {
						 	document.counter.d2.value="00:"+minutes+":"+seconds 
						    setTimeout("display()",1000) 
							 if (seconds<=0)
							 { 
								 seconds=59 
								 minutes-=1 
							 } 
							 if (minutes<=-1)
							 { 
								 seconds=-1 
								 minutes+=1 
							 } 
							 else
								 seconds-=1 
								
					 	}
			} 
			display() 
			
			</script> 
		</div> 

	
	<form id="formlambai">	  
		              
	                <div class="panel-body"></div>
	                    <div class="well">
	                        <div class="panel panel-default">
	                          <div class="panel-heading">
	                           <div class="container">

	        <p align="left">1.Look at the picture and listen to the sentences. Choose the sentence that best describes the picture: </p>
	        <p align="justify">
	   <br >
	     <img src="Image/Test.jpg"> <br>
	     <audio controls>
	  <source src="Test.ogg" type="audio/ogg">
	  <source src="audio/Test.mp3" type="audio/mpeg">
	</audio>     
	
	        </p>
	<form id="formthi">
	  <input type="radio" class="checkCauHoi" name="1" value="A">A<br>
	  <input type="radio" class="checkCauHoi" name="1" value="B">B<br>
	  <input type="radio" class="checkCauHoi" name="1" value="C">C<br>
	  <input type="radio" class="checkCauHoi" name="1" value="D">D <br>
	  </form>
	<form id="formthi">
	</div>
	<p align="left">2. <br>
	<img src="Image/Test2.jpg"><br>
	<audio controls>
	  <source src="Test2.ogg" type="audio/ogg">
	  <source src="audio/Test2.mp3" type="audio/mpeg">
	</audio>
	</p>
	  <input type="radio" class="checkCauHoi" name="2" value="A" >A<br>
	  <input type="radio" class="checkCauHoi" name="2" value="B">B<br>
	  <input type="radio" class="checkCauHoi" name="2" value="C">C<br>
	  <input type="radio" class="checkCauHoi" name="2" value="D">D<br>
	</form>
	<br>
	 <p align="left">Listen to the dialogue in the . Then read each question and choose the best answer: </p>
        <br>
        <audio controls>
          <source src="Test3.ogg" type="audio/ogg">
          <source src="audio/Test3.mp3" type="audio/mpeg">
        </audio>
        <p align="justify">
    3. What are they discussing?<br>
     
       

        </p>
<form id="formthi">
  <input type="radio" class="checkCauHoi" name="3" value="A" >A. A movie they saw<br>
  <input type="radio" class="checkCauHoi" name="3" value="B">B. Their evening plans<br>
  <input type="radio" class="checkCauHoi" name="3" value="C">C. The new Arts Center<br>
  <input type="radio" class="checkCauHoi" name="3" value="D">D. The meal they just had <br>
  </form>
<form id="formthi">
<p align="left">4. Where will the woman be in the afternoon? <br>

</p>
  <input type="radio" class="checkCauHoi" name="4" value="A" >A. At the mall<br>
  <input type="radio" class="checkCauHoi" name="4" value="B">B. At the theater<br>
  <input type="radio" class="checkCauHoi" name="4" value="C">C. At the Arts Center<br>
  <input type="radio" class="checkCauHoi" name="4" value="D">D. At a restaurant<br>
</form>
<br>
<p align="left">5. When will the speakers likely meet? <br>
<form id="formthi">
</p>
  <input type="radio" class="checkCauHoi" name="5" value="A" >A. At 6:00<br>
  <input type="radio" class="checkCauHoi" name="5" value="B">B. At 6:15<br>
  <input type="radio" class="checkCauHoi" name="5" value="C">C. At 6:30<br>
  <input type="radio" class="checkCauHoi" name="5" value="D">D. At 7:00<br>
</form>
<br>
  <p align="left">Choose the word that best completes the sentence in the Test: </p>
        <br>
        <p align="justify">
    6.  On weekends the Italian restaurant is often busy _________ hours of the day and night.<br>
     
       

        </p>
<form id="formthi">
  <input type="radio" class="checkCauHoi" name="6" value="A" >A. All<br>
  <input type="radio" class="checkCauHoi" name="6" value="B">B. Almost<br>
  <input type="radio" class="checkCauHoi" name="6" value="C">C. Always<br>
  <input type="radio" class="checkCauHoi" name="6" value="D">D. Everywhere<br>
  </form>
<form id="formthi">
<p align="left">7.  Forelli Media Inc. is an internationally ___________ marketing firm noted for its success throughout Europe, <br> East Asia, and the Americas.<br>

</p>
  <input type="radio" class="checkCauHoi" name="7" value="A" >A. Recognized<br>
  <input type="radio" class="checkCauHoi" name="7" value="B">B. Recognizing<br>
  <input type="radio" class="checkCauHoi" name="7" value="C">C. Recognize<br>
  <input type="radio" class="checkCauHoi" name="7" value="D">D. Recognizes<br>
</form>
<br>
<p align="left">8. More than 100 state-owned companies still remain __________ for privatization, according to the Privatization<br> Agency. <br>
<form id="formthi">
</p>
  <input type="radio" class="checkCauHoi" name="8" value="A" >A. Available<br>
  <input type="radio" class="checkCauHoi" name="8" value="B">B. Cooperative<br>
  <input type="radio" class="checkCauHoi" name="8" value="C">C. common<br>
  <input type="radio" class="checkCauHoi" name="8" value="D">D. Direct<br>
</form>
<br>
       
        <p align="left">Choose the word or phrase that best completes the blanks in the Part 6 TOEIC Test:<br>
        Questions 9-11 refer to the following advertisement </p>
        <br>
        <p align="justify">
    Thinking about investing for your future? If so, don’t delay! The earlier you consider your investment options, the<br> more likely it is that you will be prepared for retirement. Consider your family’s future needs and invest now. When<br> it comes to (9) _______, there are multiple options. The best of these options is a mutual fund. Mutual funds are <br>broad and can include a number of options such as stocks and bonds. They are a good choice, being easy to buy<br> and sell. The following will explain how to choose the right type of mutual fund for your needs.<br>
 
    One step that you will need to take is naming your personal investment goals. Depending on your own priorities,<br> the mutual fund that you select will (10) __________. It is most common for investors to purchase mutual funds<br> for retirement funds or to help pay for their children’s education.<br>
 
    The next important step is to determine the level of risk that you are comfortable with. More risky mutual funds<br> could leave you feeling (11) ________, so think about this issue carefully.<br>
 
    Last, do some researchs. Check financial websites and up-to-date magazines to get current information on the<br> types of mutual funds available. If you follow these steps, you should be able to find the mutual fund that fits your<br> needs.<br>
     
       

        </p>
        <p align="left">9.He_______ him everyday</p>
<form id="formthi">
  <input type="radio" class="checkCauHoi" name="9" value="A" >A. Invest<br>
  <input type="radio" class="checkCauHoi" name="9" value="B">B. Ivested<br>
  <input type="radio" class="checkCauHoi" name="9" value="C">C. Investing<br>
  <input type="radio" class="checkCauHoi" name="9" value="D">D. Invests<br>
  </form>
<form id="formthi">
<p align="left">10.I_______ many way, but a can't do it<br>

</p>
  <input type="radio" class="checkCauHoi" name="10" value="A">A. Vary<br>
  <input type="radio" class="checkCauHoi" name="10" value="B">B. Try<br>
  <input type="radio" class="checkCauHoi" name="10" value="C">C. Choose<br>
  <input type="radio" class="checkCauHoi" name="10" value="D">D. Induce<br>
</form>
<br>
<p align="left">11.Sit dow ,___ <br>
<form id="formthi">
</p>
  <input type="radio" class="checkCauHoi" name="11" value="A">A. Disappointed<br>
  <input type="radio"  class="checkCauHoi"name="11" value="B">B. Pleased<br>
  <input type="radio" class="checkCauHoi" name="11" value="C">C. Excited<br>
  <input type="radio" class="checkCauHoi" name="11" value="D">D. Interested<br>
</form>
<br>
      
        <p align="left">Read the passage and choose the correct answer in the Part 7 TOEIC Test:<br>
        Questions 12-13 refer to the following information</p>
        <br>
        <p align="justify">
    FREE!<br>
Freedom Travel Free Bag Offer<br>

We are offering a new great incentive for those customers who sign up for a two-year subscription to Freedom<br> Travel magazine: we are giving away a new FT travel bag. This bag has been designed specifically for the kind of<br> people who read our magazine. Made of durable nylon, it can carry a whole range of items. This bag is ideal for<br> weekend trips and even daily activities. The bag has zippers on the outside pockets and a shoulder strap that can<br> adjust to fit anyone.
     
       <br>

        </p>
        <p align="left">12.  What is the reason Freedom Travel is offering this bag?</p>
<form id="formthi">
  <input type="radio" class="checkCauHoi" name="12" value="A" >A. To advertise their new vacation promotion<br>
  <input type="radio" class="checkCauHoi" name="12" value="B">B. To increase map sales<br>
  <input type="radio" class="checkCauHoi" name="12" value="C">C. To increase the number of magazine subscribers<br>
  <input type="radio" class="checkCauHoi" name="12" value="D">D. To make weekend trips easier<br>
  </form>
<form id="formthi">
<p align="left">13. What is NOT true about the bag?<br>

</p>
  <input type="radio" class="checkCauHoi" name="13" value="A">A.  It is versatile<br>
  <input type="radio" class="checkCauHoi" name="13" value="B">B. It has interior pockets.<br>
  <input type="radio" class="checkCauHoi" name="13" value="C">C. It is made of tough material<br>
  <input type="radio" class="checkCauHoi" name="13" value="D">D. It uses zippers<br>
</form>
<br>


<div class="container">

    <div class="col-md-4">
      </ul>
		
          <ul class="nav navbar-nav navbar-right">
          
            <button type="button" id="show-btn" class="btn btn-info" onclick="AnSubMit()"  style="width:auto;">Submit</button>
            <div id="id01" class="modal">
     </form>        	         
  <form id="formSubmits" class="modal-content animate"  >
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      
    </div>
   <div class="container">
    <h2>Score</h2>
		<label>số câu đúng: </label>
		<div>
		<input id="txtSoCauDung" class=""></input> /
		<input id="txtTongSoCau" class=""></input> 
		</div>
		<div>
		<label>Tổng điểm: 
		<input class="" name="txtDiemSo" id="txtDiemSo"  ></input>
		</label>
		</div>
</div>

      <a type="button" class="btn btn-success " href="Test.jsp" type="submit">Try Again</a>
      <a type="button" class="btn btn-success " href="" type="submit" onclick="XuatDiem()">Review</a> 
      
    </div>

    
  </form>
</div>	
	
<script language="javascript">
			$(document).ready(function()
					{
				var TongCauDung=0;
				$(".checkCauHoi").click(function(){
					var cauhoi = $(this).attr("name");
					var dapan = $(this).val();
					$.post('ChonCauHoi',{cauhoi:cauhoi,dapan:dapan},function(response){
						if(response.CauDung!=0)
							TongCauDung=TongCauDung+1;
					});
					$("#txtSoCauDung").val(TongCauDung);
					var KetQua=0;
					var TongCau=13;
					$("#txtTongSoCau").val(TongCau);
					KetQua=parseInt((10/parseFloat(TongCau))*parseFloat(TongCauDung)*10)
					$("#txtDiemSo").val(KetQua);
				});				
			});
	         function XuatDiem()
            {
            	//document.getElementById('id01').style.display='block';	
            	$("#formlambai input").prop("disabled", "disabled");
            	//ChamDiem();
            };
            function AnSubMit()
            {
            	var r=confirm("bạn có chắc nộp bài")
            	if(r==true)
            		{
            			document.getElementById('id01').style.display='block';
            			$("#formlambai input").prop("disabled", "disabled");	
            			
            		}
            	else
            		{
            		}
            };
            function ChamDiem()
            {
            	
            	$(document).ready(function()
            			{
            	
				var Tongcau = 13;
				var KetQua = 0;
				//KetQua =parseFloat((parseFloat(TongCau) / parseFloat(Tongcau))*10);
				
				$("#txtTongSoCau").val(TongCau);
				$("#txtDiemSo").val(KetQua);
        	   	/*if($(".checkCauHoi").click==true)
        	   		{
        	   			caudung=10;
        	   		}*/
            			});
            	
            }
</script>
	
	</body>
	

</html>