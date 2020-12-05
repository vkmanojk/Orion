<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="com.orion.user.*"%>

<!DOCTYPE html>
<html lang="en">
<head>
<title>Orion | Login</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="icon" type="image/png" href="images/icons/favicon.ico" />
<link rel="stylesheet" type="text/css"
	href="js/bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="js/animate/animate.css">
<link rel="stylesheet" type="text/css"
	href="js/css-hamburgers/hamburgers.min.css">
<link rel="stylesheet" type="text/css" href="js/select2/select2.min.css">
<link rel="stylesheet" type="text/css" href="css/util.css">
<link rel="stylesheet" type="text/css" href="css/main.css">

<style>
body {
	margin: 0;
	font-family: Arial, Helvetica, sans-serif;
}

.topnav {
	overflow: hidden;
	background-color: #333;
}

.nav {
	float: right;
}

.topnav a {
	float: left;
	color: #f2f2f2;
	text-align: center;
	padding: 14px 16px;
	text-decoration: none;
	font-size: 17px;
}

.topnav a:hover {
	background-color: #ddd;
	color: black;
}

.topnav a.active {
	font-size: 25px;
	color: white;
}
</style>

</head>
<body>
	<!--  <div class="topnav">
		<a class="active" href="index.jsp">Orion</a>
		<div class="nav">

			<a href="exams.jsp">Competitive exams </a> <a href="colleges.jsp">Colleges
				and Universities</a> <a class="nav-item nav-link px-3 active"
				href="scholarships.jsp">Scholarships</a>
		</div>
	</div>-->

	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="images/img-01.png" alt="IMG">
				</div>

				<form action="UserLogin" method="POST"
					class="login100-form validate-form">
					<span class="login100-form-title"> Login </span>

					<div class="wrap-input100 validate-input"
						data-validate="Valid email is required: ex@abc.xyz">
						<input class="input100" type="text" id="email" name="email"
							placeholder="Email" onblur="ValidateEmail()"> <span
							class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input"
						data-validate="Password is required">
						<input class="input100" type="password" name="pass"
							placeholder="Password"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-lock"
							aria-hidden="true"></i>
						</span>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn" name="login-button">Login</button>
					</div>

					<div class="text-center p-t-12">
						<a class="txt2" href="resetpass.jsp">Forgot/Reset Password? </a>
					</div>
					<div class="text-center p-t-12">
						<span class="txt1"> </span> <a class="txt2"
							href="changepassword.jsp"> Change Password? </a>
					</div>
					<div class="text-center p-t-136">
						<a class="txt2" href="signup.jsp"> Create your Account <i
							class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
			<footer class="ftco-footer ftco-section">
				<div class="row">
					<div class="col-md-12 text-center">
						<p style="color: white; text-align: center;">
							<br>Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This is made with ❤️ by <a href="#"
								target="_blank" style="color: white;">Orion</a>
						</p>
					</div>
				</div>
			</footer>
		</div>

	</div>
	<%if(request.getAttribute("loginMsg")!=null) { %>
		<script>
			alert('<%=request.getAttribute("loginMsg")%>');
		</script>
	<%} %>
	<script src="js/jquery/jquery-3.2.1.min.js"></script>
	<script src="js/bootstrap/js/popper.js"></script>
	<script src="js/bootstrap/js/bootstrap.min.js"></script>
	<script src="js/select2/select2.min.js"></script>
	<script src="js/tilt/tilt.jquery.min.js"></script>
	<script>
		$('.js-tilt').tilt({
			scale : 1.1
		})
	</script>
	<script src="js/main.js"></script>

</body>
</html>