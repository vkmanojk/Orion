<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.regex.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="css/exams.css">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css"
	integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
	integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
	crossorigin="anonymous"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
	integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
	crossorigin="anonymous"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"
	integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI"
	crossorigin="anonymous"></script>

<title>Orion Inc.</title>
</head>
<body>
	<%
	String msg = (String) request.getAttribute("sessionName");
	System.out.println("Index");
	System.out.println(msg);
		if (msg != null) {
			String[] sessName = msg.split(".");
	%>
	<div>
		<div id="#nav">
			<div class="navbar fixed-top">
				<nav
					class="container-fluid navbar navbar-dark bg-dark navbar-expand-lg rounded-lg shadow">
					<a class="navbar-brand" href="index.jsp">
						<h3>
							<b>Orion</b>
						</h3>
					</a>
					<button class="navbar-toggler btn btn-dark" type="button"
						data-toggle="collapse" data-target="#navbarNavAltMarkup"
						aria-controls="navbarNavAltMarkup" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div
						class="collapse navbar-collapse justify-content-end text-right"
						id="navbarNavAltMarkup">
						<div class="navbar-nav">
							<a class="nav-item nav-link px-3" href="exams.jsp">Competitive
								Exams</a> <a class="nav-item nav-link px-3" href="colleges.jsp">Colleges
								and Universities</a> <a class="nav-item nav-link px-3"
								href="scholarships.jsp">Scholarships</a> <a
								class="btn btn-primary" href=<%="userprofile.jsp?sess="+msg.replace(" ", "-")%> >Profile</a>

						</div>
					</div>
				</nav>
			</div>

		</div>
	</div>
	<%
		}
	%>
	<!--  -->
	<div class="d-flex h-100">
		<div class="container m-auto bg-light rounded w-50">
			<div class="container text-center p-5">
				<span class="display-1 font-weight-bold">Orion</span>
			</div>
			<div class="container text-center">
				<span>Your one stop destination for Higher Education</span>
			</div>
			<%
				if (msg != null) {
				
			%>
			<div class="container text-center">
				<p>
					<b> Hello <%=msg.split("\\.")[1] +"." +msg.split("\\.")[2] %></b>
				</p>
			</div>
			<%} %>
			<div class="container text-center p-5">
				<%
					if (msg == null) {
				%>

				<a class="btn btn-outline-dark btn-lg" href="UserRegistration">Register</a>
				<a class="btn btn-dark btn-lg" href="UserLogin">Login</a>

				<%
					}
				%>
				<%
					if (msg != null) {
				%>
				<a class="btn btn-outline-dark btn-lg" href="exams.jsp">&nbsp;&nbsp;&nbsp;Exams&nbsp;&nbsp;&nbsp;</a>
				<a class="btn btn-outline-dark btn-lg" href="colleges.jsp">&nbsp;&nbsp;Colleges&nbsp;&nbsp;</a>
				<a class="btn btn-outline-dark btn-lg" href="scholarships.jsp">Scholarships</a>
				<%
					}
				%>
			</div>
		</div>
	</div>
</body>
</html>