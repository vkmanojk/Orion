<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.orion.user.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>Orion | User Profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
	rel="stylesheet">

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
<style type="text/css">
body {
	font-size: 14px !important;
	background: -webkit-linear-gradient(-135deg, #c850c0, #4158d0);
	background: -o-linear-gradient(-135deg, #c850c0, #4158d0);
	background: -moz-linear-gradient(-135deg, #c850c0, #4158d0);
	background: linear-gradient(-135deg, #c850c0, #4158d0);
}

.form-control {
	font-size: 14px;
}

.btn {
	font-size: 14px;
}

.view-account {
	background: #FFFFFF;
	margin-top: 20px;
}

.view-account .pro-label {
	font-size: 13px;
	padding: 4px 5px;
	position: relative;
	top: -5px;
	margin-left: 10px;
	display: inline-block
}

.view-account .side-bar {
	padding-bottom: 30px
}

.view-account .side-bar .user-info {
	text-align: center;
	margin-bottom: 15px;
	padding: 10px;
	color: #616670;
	border-bottom: 1px solid #f3f3f3
}

.view-account .side-bar .user-info .img-profile {
	width: 200px;
	height: 200px;
	margin-bottom: 15px
}

.view-account .side-bar .user-info .meta li {
	margin-bottom: 10px
}

.view-account .side-bar .user-info .meta li span {
	display: inline-block;
	width: 200px;
	margin-right: 5px;
	text-align: right
}

.view-account .side-bar .user-info .meta li a {
	color: #616670
}

.view-account .side-bar .user-info .meta li.activity {
	color: #a2a6af
}

.view-account .side-bar .side-menu {
	text-align: center
}

.view-account .side-bar .side-menu .nav {
	display: inline-block;
	margin: 0 auto
}

.view-account .side-bar .side-menu .nav>li {
	font-size: 12px;
	margin-bottom: 0;
	border-bottom: none;
	display: inline-block;
	float: left;
	margin-right: 15px;
	margin-bottom: 15px
}

.view-account .side-bar .side-menu .nav>li:last-child {
	margin-right: 0
}

.view-account .side-bar .side-menu .nav>li>a {
	display: inline-block;
	color: #9499a3;
	padding: 5px;
	border-bottom: 2px solid transparent
}

.view-account .side-bar .side-menu .nav>li>a:hover {
	color: #616670;
	background: none
}

.view-account .side-bar .side-menu .nav>li.active a {
	color: #40babd;
	border-bottom: 2px solid #40babd;
	background: none;
	border-right: none
}

.theme-2 .view-account .side-bar .side-menu .nav>li.active a {
	color: #6dbd63;
	border-bottom-color: #6dbd63
}

.theme-3 .view-account .side-bar .side-menu .nav>li.active a {
	color: #497cb1;
	border-bottom-color: #497cb1
}

.theme-4 .view-account .side-bar .side-menu .nav>li.active a {
	color: #ec6952;
	border-bottom-color: #ec6952
}

.view-account .side-bar .side-menu .nav>li .icon {
	display: block;
	font-size: 24px;
	margin-bottom: 5px
}

.view-account .content-panel {
	padding: 30px
}

.view-account .content-panel .title {
	margin-bottom: 15px;
	margin-top: 15px;
	font-size: 18px
}

.view-account .content-panel .fieldset-title {
	padding-bottom: 15px;
	border-bottom: 1px solid #eaeaf1;
	margin-bottom: 30px;
	color: #616670;
	font-size: 16px
}

.view-account .content-panel .avatar .figure img {
	float: right;
	width: 64px
}

.view-account .content-panel .content-header-wrapper {
	position: relative;
	margin-bottom: 30px
}

.view-account .content-panel .content-header-wrapper .actions {
	position: absolute;
	right: 0;
	top: 0
}

.view-account .content-panel .content-utilities {
	position: relative;
	margin-bottom: 30px
}

.view-account .content-panel .content-utilities .btn-group {
	margin-right: 5px;
	margin-bottom: 15px
}

.view-account .content-panel .content-utilities .fa {
	font-size: 16px;
	margin-right: 0
}

.view-account .content-panel .content-utilities .page-nav {
	position: absolute;
	right: 0;
	top: 0
}

.view-account .content-panel .content-utilities .page-nav .btn-group {
	margin-bottom: 0
}

.view-account .content-panel .content-utilities .page-nav .indicator {
	color: #a2a6af;
	margin-right: 5px;
	display: inline-block
}

.view-account .content-panel .mails-wrapper .mail-item {
	position: relative;
	padding: 10px;
	border-bottom: 1px solid #f3f3f3;
	color: #616670;
	overflow: hidden
}

.view-account .content-panel .mails-wrapper .mail-item>div {
	float: left
}

.view-account .content-panel .mails-wrapper .mail-item .icheck {
	background-color: #fff
}

.view-account .content-panel .mails-wrapper .mail-item:hover {
	background: #f9f9fb
}

.view-account .content-panel .mails-wrapper .mail-item:nth-child(even) {
	background: #fcfcfd
}

.view-account .content-panel .mails-wrapper .mail-item:nth-child(even):hover
	{
	background: #f9f9fb
}

.view-account .content-panel .mails-wrapper .mail-item a {
	color: #616670
}

.view-account .content-panel .mails-wrapper .mail-item a:hover {
	color: #494d55;
	text-decoration: none
}

.view-account .content-panel .mails-wrapper .mail-item .checkbox-container,
	.view-account .content-panel .mails-wrapper .mail-item .star-container
	{
	display: inline-block;
	margin-right: 5px
}

.view-account .content-panel .mails-wrapper .mail-item .star-container .fa
	{
	color: #a2a6af;
	font-size: 16px;
	vertical-align: middle
}

.view-account .content-panel .mails-wrapper .mail-item .star-container .fa.fa-star
	{
	color: #f2b542
}

.view-account .content-panel .mails-wrapper .mail-item .star-container .fa:hover
	{
	color: #868c97
}

.view-account .content-panel .mails-wrapper .mail-item .mail-to {
	display: inline-block;
	margin-right: 5px;
	min-width: 120px
}

.view-account .content-panel .mails-wrapper .mail-item .mail-subject {
	display: inline-block;
	margin-right: 5px
}

.view-account .content-panel .mails-wrapper .mail-item .mail-subject .label
	{
	margin-right: 5px
}

.view-account .content-panel .mails-wrapper .mail-item .mail-subject .label:last-child
	{
	margin-right: 10px
}

.view-account .content-panel .mails-wrapper .mail-item .mail-subject .label a,
	.view-account .content-panel .mails-wrapper .mail-item .mail-subject .label a:hover
	{
	color: #fff
}

.view-account .content-panel .mails-wrapper .mail-item .mail-subject .label-color-1
	{
	background: #f77b6b
}

.view-account .content-panel .mails-wrapper .mail-item .mail-subject .label-color-2
	{
	background: #58bbee
}

.view-account .content-panel .mails-wrapper .mail-item .mail-subject .label-color-3
	{
	background: #f8a13f
}

.view-account .content-panel .mails-wrapper .mail-item .mail-subject .label-color-4
	{
	background: #ea5395
}

.view-account .content-panel .mails-wrapper .mail-item .mail-subject .label-color-5
	{
	background: #8a40a7
}

.view-account .content-panel .mails-wrapper .mail-item .time-container {
	display: inline-block;
	position: absolute;
	right: 10px;
	top: 10px;
	color: #a2a6af;
	text-align: left
}

.view-account .content-panel .mails-wrapper .mail-item .time-container .attachment-container
	{
	display: inline-block;
	color: #a2a6af;
	margin-right: 5px
}

.view-account .content-panel .mails-wrapper .mail-item .time-container .time
	{
	display: inline-block;
	text-align: right
}

.view-account .content-panel .mails-wrapper .mail-item .time-container .time.today
	{
	font-weight: 700;
	color: #494d55
}

.drive-wrapper {
	padding: 15px;
	background: #f5f5f5;
	overflow: hidden
}

.drive-wrapper .drive-item {
	width: 130px;
	margin-right: 15px;
	display: inline-block;
	float: left
}

.drive-wrapper .drive-item:hover {
	box-shadow: 0 1px 5px rgba(0, 0, 0, .1);
	z-index: 1
}

.drive-wrapper .drive-item-inner {
	padding: 15px
}

.drive-wrapper .drive-item-title {
	margin-bottom: 15px;
	max-width: 100px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis
}

.drive-wrapper .drive-item-title a {
	color: #494d55
}

.drive-wrapper .drive-item-title a:hover {
	color: #40babd
}

.theme-2 .drive-wrapper .drive-item-title a:hover {
	color: #6dbd63
}

.theme-3 .drive-wrapper .drive-item-title a:hover {
	color: #497cb1
}

.theme-4 .drive-wrapper .drive-item-title a:hover {
	color: #ec6952
}

.drive-wrapper .drive-item-thumb {
	width: 100px;
	height: 80px;
	margin: 0 auto;
	color: #616670
}

.drive-wrapper .drive-item-thumb a {
	-webkit-opacity: .8;
	-moz-opacity: .8;
	opacity: .8
}

.drive-wrapper .drive-item-thumb a:hover {
	-webkit-opacity: 1;
	-moz-opacity: 1;
	opacity: 1
}

.drive-wrapper .drive-item-thumb .fa {
	display: inline-block;
	font-size: 36px;
	margin: 0 auto;
	margin-top: 20px
}

.drive-wrapper .drive-item-footer .utilities {
	margin-bottom: 0
}

.drive-wrapper .drive-item-footer .utilities li:last-child {
	padding-right: 0
}

.drive-list-view .name {
	width: 60%
}

.drive-list-view .name.truncate {
	max-width: 100px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis
}

.drive-list-view .type {
	width: 15px
}

.drive-list-view .date, .drive-list-view .size {
	max-width: 60px;
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis
}

.drive-list-view a {
	color: #494d55
}

.drive-list-view a:hover {
	color: #40babd
}

.theme-2 .drive-list-view a:hover {
	color: #6dbd63
}

.theme-3 .drive-list-view a:hover {
	color: #497cb1
}

.theme-4 .drive-list-view a:hover {
	color: #ec6952
}

.drive-list-view td.date, .drive-list-view td.size {
	color: #a2a6af
}

@media ( max-width :767px) {
	.view-account .content-panel .title {
		text-align: center
	}
	.view-account .side-bar .user-info {
		padding: 0
	}
	.view-account .side-bar .user-info .img-profile {
		width: 60px;
		height: 60px
	}
	.view-account .side-bar .user-info .meta li {
		margin-bottom: 5px
	}
	.view-account .content-panel .content-header-wrapper .actions {
		position: static;
		margin-bottom: 30px
	}
	.view-account .content-panel {
		padding: 0
	}
	.view-account .content-panel .content-utilities .page-nav {
		position: static;
		margin-bottom: 15px
	}
	.drive-wrapper .drive-item {
		width: 100px;
		margin-right: 5px;
		float: none
	}
	.drive-wrapper .drive-item-thumb {
		width: auto;
		height: 54px
	}
	.drive-wrapper .drive-item-thumb .fa {
		font-size: 24px;
		padding-top: 0
	}
	.view-account .content-panel .avatar .figure img {
		float: none;
		margin-bottom: 15px
	}
	.view-account .file-uploader {
		margin-bottom: 15px
	}
	.view-account .mail-subject {
		max-width: 100px;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis
	}
	.view-account .content-panel .mails-wrapper .mail-item .time-container {
		position: static
	}
	.view-account .content-panel .mails-wrapper .mail-item .time-container .time
		{
		width: auto;
		text-align: left
	}
}

@media ( min-width :768px) {
	.view-account .side-bar .user-info {
		padding: 0;
		padding-bottom: 15px
	}
	.view-account .mail-subject .subject {
		max-width: 200px;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis
	}
}

@media ( min-width :992px) {
	.view-account .content-panel {
		min-height: 800px;
		border-left: 1px solid #f3f3f7;
		margin-left: 200px
	}
	.view-account .mail-subject .subject {
		max-width: 280px;
		white-space: nowrap;
		overflow: hidden;
		text-overflow: ellipsis
	}
	.view-account .side-bar {
		position: absolute;
		width: 200px;
		min-height: 600px
	}
	.view-account .side-bar .user-info {
		margin-top: 100px;
		margin-bottom: 0;
		border-bottom: none;
		padding: 10px
	}
	.view-account .side-bar .user-info .img-profile {
		width: 120px;
		height: 120px
	}
	.view-account .side-bar .side-menu {
		text-align: left
	}
	.view-account .side-bar .side-menu .nav {
		display: block
	}
	.view-account .side-bar .side-menu .nav>li {
		display: block;
		float: none;
		font-size: 14px;
		border-bottom: 1px solid #f3f3f7;
		margin-right: 0;
		margin-bottom: 0
	}
	.view-account .side-bar .side-menu .nav>li>a {
		display: block;
		color: #9499a3;
		padding: 10px 15px;
		padding-left: 30px
	}
	.view-account .side-bar .side-menu .nav>li>a:hover {
		background: #f9f9fb
	}
	.view-account .side-bar .side-menu .nav>li.active a {
		background: #f9f9fb;
		border-right: 4px solid #40babd;
		border-bottom: none
	}
	.theme-2 .view-account .side-bar .side-menu .nav>li.active a {
		border-right-color: #6dbd63
	}
	.theme-3 .view-account .side-bar .side-menu .nav>li.active a {
		border-right-color: #497cb1
	}
	.theme-4 .view-account .side-bar .side-menu .nav>li.active a {
		border-right-color: #ec6952
	}
	.view-account .side-bar .side-menu .nav>li .icon {
		font-size: 24px;
		vertical-align: middle;
		text-align: center;
		width: 40px;
		display: inline-block
	}
}

#values {
	color: grey;
}

.navbar-title {
	font-size: 3rem;
}
</style>
</head>
<%
	//boolean flag = true;
	String sessVar = (String) request.getParameter("sess");
	sessVar = sessVar.replace("-", " ");
	request.getSession().setAttribute("sess",sessVar);
	String[] msg = sessVar.split("\\.");
	String temp;
	if (msg[8] == "0") {
		temp = "Student";
	}

	else if (msg[8] == "1") {
		temp = "Teacher";
	} else {
		temp = "Professional";
	}
%>
<body>
	<div>
		<div id="#nav">
			<div class="navbar">
				<nav
					class="container-fluid navbar navbar-dark bg-dark navbar-expand-lg rounded-lg shadow">
					<a class="navbar-brand" href="index.jsp">
						<h3 class="navbar-title">
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
								class="btn btn-primary" href="">Profile</a>
						</div>
					</div>
				</nav>
			</div>

		</div>
	</div>
	<div class="container">
		<div class="view-account">
			<section class="module">
				<div class="module-inner">
					<div class="side-bar">
						<div class="user-info">
							<img class="img-profile img-circle img-responsive center-block"
								src="https://bootdey.com/img/Content/avatar/avatar1.png" alt="">
							<ul class="meta list list-unstyled">
								<li class="name"><%=msg[2]%><br> <label
									class="label label-info"><%=temp%></label></li>
								<li class="email"><a
									href="mailto:<%=msg[4] + "." + msg[5]%>"><%=msg[4] + "." + msg[5]%></a></li>
								<%
									String logtime = msg[9].replace(" ", "-");
								%>
								<li class="activity">Last updated in:&#10; <%=logtime%></li>
							</ul>
						</div>

					</div>
					<div class="content-panel">
						<h2 class="title">Profile</h2>
						<form class="form-horizontal" action="UserProfile" method="POST">
							<fieldset class="fieldset">
								<h3 class="fieldset-title">Personal Info</h3>
								<!-- <div class="form-group avatar">
									<figure class="figure col-md-2 col-sm-3 col-xs-12">
										<img class="img-rounded img-responsive"
											src="https://bootdey.com/img/Content/avatar/avatar1.png"
											alt="">
									</figure>
									  <div class="form-inline col-md-10 col-sm-9 col-xs-12">
										<input type="file" class="file-uploader pull-left">
										<button type="submit"
											class="btn btn-sm btn-default-alt pull-left">Update
											Image</button>
									</div> 
								</div> -->
								<div class="form-group">
									<label class="col-md-2 col-sm-3 col-xs-12 control-label">User
										ID</label>
									<div class="col-md-10 col-sm-9 col-xs-12">
										<label id="values"
											class="col-md-2 col-sm-4 col-xs-12 control-label"><%=msg[0]%></label>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 col-sm-3 col-xs-12 control-label">Title</label>
									<div class="col-md-10 col-sm-9 col-xs-12">

										<%
											if (sessVar != null) {
										%>
										<input type="text" name="title" class="form-control"
											value=<%=msg[1]%>>
										<%
											}
										%>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 col-sm-3 col-xs-12 control-label">Name</label>
									<div class="col-md-10 col-sm-9 col-xs-12">

										<input type="text" class="form-control" name="name"
											value=<%=msg[2]%>>

									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2 col-sm-3 col-xs-12 control-label">Course
										Interested</label>
									<div class="col-md-10 col-sm-9 col-xs-12">
										<select class="form-control" name="course">
											<option value="engineer" <%if (msg[6] == "engineer") {%>
												selected <%}%>>Engineering</option>
											<option value="medicine" <%if (msg[6] == "medicine") {%>
												selected <%}%>>Medicine</option>
											<option value="teaching" <%if (msg[6] == "teaching") {%>
												selected <%}%>>Teaching</option>
											<option value="music" <%if (msg[6] == "music") {%> selected
												<%}%>>Music</option>
											<option value="law" <%if (msg[6] == "law") {%> selected <%}%>>Law</option>
											<option value="others" <%if (msg[6] == "others") {%> selected
												<%}%>>Others</option>
										</select>
									</div>
								</div>
							</fieldset>
							<fieldset class="fieldset">
								<h3 class="fieldset-title">Contact Info</h3>
								<div class="form-group">
									<label class="col-md-2  col-sm-3 col-xs-12 control-label">Email</label>
									<div class="col-md-10 col-sm-9 col-xs-12">
										<label class="col-md-2  col-sm-3 col-xs-12 control-label"><%=msg[4] + "." + msg[5]%></label>
										<!-- <input type="email" class="form-control"
											value=<%=msg[4] + "." + msg[5]%> name="email" required>
										<p class="help-block">Format: abc@gmail.com</p>  -->

									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2  col-sm-3 col-xs-12 control-label">Phone</label>
									<div class="col-md-10 col-sm-9 col-xs-12">
										<input type="text" class="form-control" name="number"
											value=<%=msg[3]%>>
										<p class="help-block">Your Phone Number</p>
									</div>
								</div>
								<div class="form-group">
									<label class="col-md-2  col-sm-3 col-xs-12 control-label">How
										would you like to be contacted?</label>
									<div class="col-md-10 col-sm-9 col-xs-12">
										<select class="form-control" name="isphone">
											<option value=1 <%if (msg[7] == "1") {%> selected <%}%>>By
												Phone</option>
											<option value=0 <%if (msg[7] != "1") {%> selected <%}%>>By
												Email</option>
										</select>
									</div>
								</div>
							</fieldset>
							<hr>
							<div class="form-group">
								<div id="subButtonPos" style=""
									class="col-md-10 col-sm-9 col-xs-12 col-md-push-2 col-sm-push-3 col-xs-push-0">
									<input style="margin-left: 250px;" class="btn btn-primary"
										type="submit" value="Update Profile">
								</div>
							</div>
						</form>
						<button style="float: left;" class="btn btn-primary"
							onclick="document.location='changepassword.jsp'">Change
							Password</button>
						<button style="float: right;" class="btn btn-primary"
							onclick="document.location='index.jsp'">&nbsp;&nbsp;&nbsp;&nbsp;Log
							Out&nbsp;&nbsp;&nbsp;&nbsp;</button>

					</div>
				</div>
			</section>
		</div>
	</div>
	<script>
		
	<%if (request.getAttribute("changeProfile") != null) {%>
		alert('	<%=request.getAttribute("changeProfile")%>	');
	<%}%>
		
	</script>
	<script src="http://code.jquery.com/jquery-1.10.2.min.js"></script>
	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</body>
</html>