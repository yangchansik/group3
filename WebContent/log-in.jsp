<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="description" content="">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- The above 4 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <!-- Title -->
    <title>Camping Easy</title>

    <!-- Favicon -->
    <link rel="icon" href="img/core-img/favicon.ico">

    <!-- Core Stylesheet -->
    <link href="style.css" rel="stylesheet">

    <!-- Responsive CSS -->
    <link href="css/responsive/responsive.css" rel="stylesheet">

</head>

<jsp:include page="/common/top.jsp"></jsp:include>


<style type="text/css">

section{
	text-align: center;

}
#mydiv {
	margin-top: 10px;
	margin-bottom: 110px;
	padding: 1px;
}

#loginboxdiv {
	position: relative;
	margin: 5px;
	padding: 1px;
	height: 350px;
}

#loginboxinnerbox {
	position: absolute;
	left: 40%;
	top: 10px;
	width: 300px;
	margin: 2px;
}

#footer2 {
	positon: fixed;
	bottom: 1px;
	margin: 1px;
}

#formBtn {
	text-align: center;
}

#myString {
	margin-top: 50px;
	margin-bottom: 1px;
}

button{
     background-color: #6b8e23;
     width: 100px;
     height: 50px;
     text-color: white;
     hover : #deb887;
   }
</style>
</head>
<body>
 <div class="breadcumb-area bg-img bg-overlay" style="background-image: url(img/bg-img/hero.jpg)"> 
 <section  style="padding-top: 200px;">
	<div class="" id="mydiv">

		<div class="animatedParent" id="myString">
			<div class="section-heading text-center animated fadeInDown">
				<h2 class="h-bold">Login Page</h2>
			</div>
		</div>
		<div class="" id="loginboxdiv">
			<div class="login-box well" id="loginboxinnerbox">
				<form action="loginok.do" name="loginForm" id="loginForm"
					role="form" method="post">

					<div class="form-group">
						<label for="username-email">ID</label> 
						<input name="userid" id="userid" placeholder="ID" type="text" class="form-control" />
					</div>
					<div class="form-group">
						<label for="password">Password</label> 
						<input type="password" name="pwd" id="pwd" placeholder="Password" type="password" class="form-control" />
					</div>
					<hr>
					<div id="formBtn">
					<!-- 	<button type="submit" value="LOGIN" class="btn btn-skin btn-scroll">LOGIN</button>
						<button type="reset" value="CANCEL" class="btn btn-skin btn-scroll">CANCEL</button> -->
						<button class="btn dorne-btn" style ="width: 200px;">로그인</button>
                        <button class="btn dorne-btn" style ="width: 200px;">메인으로</button>
				
				   </div>
					
				</form>
			</div>
		</div>

	</div>
	</section>

	<jsp:include page="/common/bottom.jsp"></jsp:include>
</body>
</html>