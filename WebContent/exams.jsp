<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,java.sql.DriverManager"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Orion | Competitive Exams</title>

        <link
        rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <!-- JS, Popper.js, and jQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

        <script src="js/exams.js"></script>
    </head>
    <style>
    	body, html {
			    min-height: 100%;
			    scroll-behavior: smooth;
			    -webkit-background-size: cover;
			    -moz-background-size: cover;
			    -o-background-size: cover;
			    background-size: cover;
			    -ms-overflow-style: none; /* IE and Edge */
				scrollbar-width: none; /* Firefox */
			    background: #70bg32;
			    background-repeat:no-repeat;
			    background: -webkit-linear-gradient(-135deg, #c850c0, #4158d0);
				background: -o-linear-gradient(-135deg, #c850c0, #4158d0);
				background: -moz-linear-gradient(-135deg, #c850c0, #4158d0);
				background: linear-gradient(-135deg, #c850c0, #4158d0);
		}
    </style>
    <body>
    	<%
			Class.forName("com.mysql.jdbc.Driver");  
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/competitiveExams","root","");
			Statement stmt = null;
			ResultSet rs = null;
		
			stmt = conn.createStatement();
			String sql = "select * from Exams";
			rs = stmt.executeQuery(sql);
			int examCount = 0;
			while (rs.next()) {
				examCount++;
			}
		%>
        <nav class="d-flex navbar navbar-dark bg-dark m-3 navbar-expand-lg rounded-lg shadow fixed-top">
            <a class="navbar-brand" href="index.jsp">
                <span class="h3 font-weight-bold">Orion</span>
            </a>
            <span class="text-light">
                Competitive Exams
            </span>
            <button class="navbar-toggler btn btn-dark" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end text-right" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-item nav-link px-3 active" href="exams.jsp">Competitive Exams</a>
                    <a class="nav-item nav-link px-3" href="colleges.jsp">Colleges and Universities</a>
                    <a class="nav-item nav-link px-3" href="scholarship.jsp">Scholarships</a>
                </div>
            </div>
        </nav>
        <div class="py-5 mt-5">
            <div class="container text-center mb-5 p-4 rounded-lg bg-dark shadow-lg">
                <span class="display-4 font-weight-bold text-light">Engineering Entrance Exams</span>
            </div>
            <div class="container my-5">
                <input class="form-control" type="text" id="myInput" onkeyup="searchExam()" placeholder="Search for an exam">
            </div>
            <div class="container my-5">
                <hr class="bg-light">
            </div>
            <div id="myUL" class="row px-5 my-5">
            	<% 
            		rs = stmt.executeQuery(sql);
            		while (rs.next()) {
            	%>
               		<a href="#Exam-<%out.print(rs.getString("ExamID"));%>" class="container my-4 mx-2 py-2 col btn btn-dark text-light" onclick="showExam(<%out.print(examCount);%>,<%out.println(rs.getString("ExamID"));%>)"><%out.println(rs.getString("Name"));%></a>
         		<%}%>
            </div>
            <%  
				rs = stmt.executeQuery(sql);
				while (rs.next()) {
			%>
            	<div id="Exam-<%out.print(rs.getString("ExamID"));%>" class="py-5 bg-dark" style="display:none;">
        			<div class="container text-center my-5 p-4 rounded-lg bg-dark shadow-lg">
            			<span class="h2 font-weight-bold text-light" id="name"><%out.println(rs.getString("Name"));%></span>
       	 			</div>
        			<div class="container my-2 p-5 bg-light text-dark rounded shadow-lg">
            			<span id="description"><%out.println(rs.getString("Description"));%></span>
        			</div>
        			<div class="container my-2 p-5 rounded">
            			<img class="container shadow-lg rounded" id="image" src="<%out.println(rs.getString("Image_url"));%>" alt="">
        			</div>
        			<div class="container mb-5 shadow-lg">
            			<a href="<%out.println(rs.getString("link"));%>" target="_blank" class="container btn btn-light" id="link">For more information</a>
        			</div>
    			</div>
    		<% }%>
			<div class="container my-5">
                <hr class="bg-light">
            </div>
            <div class="container">
                <a href="#QuickGlanceTable" class="container h3 btn font-weight-bold btn-dark text-light py-3" onclick="showQuickGlance()">Quick Glance</a>
            </div>
            <div id="QuickGlanceTable" class="container my-5" style="display:none;">
                <table class="table table-dark table-striped table-hover shadow-lg">
                    <tbody>
                        <tr style="height: 29px;">
                            <th style="height: 29px; width: 125px;" valign="top">
                                <p>
                                    <strong>S. No</strong>
                                </p>
                            </th>
                            <th style="height: 29px; width: 417px;" valign="top">
                                <p>
                                    <strong>Exam name
                                    </strong>
                                </p>
                            </th>
                            <th style="height: 29px; width: 563px;" valign="top">
                                <p>
                                    <strong>Exam Date</strong>
                                </p>
                            </th>
                        </tr>
                        <tr style="height: 40px;">
                            <td style="height: 40px; width: 125px;" valign="top">
                                <p>1</p>
                            </td>
                            <td style="height: 40px; width: 417px;" valign="top">
                                <p>JEE Main</p>
                            </td>
                            <td style="height: 40px; width: 563px;" valign="top">
                                <p>January Session: 6-Jan-2020 to 11-Jan-2020 (results are out for this session)</p>
                                <p>April Session:
                                    <span>
                                        <strong>1- Sep-2020 to 6-Sep-2020</strong>
                                    </span>
                                    (exam was postponed due to COVID-19)</p>
                            </td>
                        </tr>
                        <tr style="height: 29px;">
                            <td style="height: 29px; width: 125px;" valign="top">
                                <p>2</p>
                            </td>
                            <td style="height: 29px; width: 417px;" valign="top">
                                <p>JEE Advanced</p>
                            </td>
                            <td style="height: 29px; width: 563px;" valign="top">
                                <p>
                                    <span>
                                        <strong>27-Sep-2020</strong>
                                    </span>
                                </p>
                            </td>
                        </tr>
                        <tr style="height: 29px;">
                            <td style="height: 29px; width: 125px;" valign="top">
                                <p>3</p>
                            </td>
                            <td style="height: 29px; width: 417px;" valign="top">
                                <p>BITSAT</p>
                            </td>
                            <td style="height: 29px; width: 563px;" valign="top">
                                <p>
                                    <strong>Postpone
                                    </strong>(Dates to be out soon)</p>
                            </td>
                        </tr>
                        <tr style="height: 29px;">
                            <td style="height: 29px; width: 125px;" valign="top">
                                <p>4</p>
                            </td>
                            <td style="height: 29px; width: 417px;" valign="top">
                                <p>VITEEE</p>
                            </td>
                            <td style="height: 29px; width: 563px;" valign="top">
                                <p>
                                    <strong>Cancelled</strong>
                                </p>
                            </td>
                        </tr>
                        <tr style="height: 29px;">
                            <td style="height: 29px; width: 125px;" valign="top">
                                <p>5</p>
                            </td>
                            <td style="height: 29px; width: 417px;" valign="top">
                                <p>SRMJEEE</p>
                            </td>
                            <td style="height: 29px; width: 563px;" valign="top">
                                <p>
                                    <strong>Cancelled</strong>
                                </p>
                            </td>
                        </tr>
                        <tr style="height: 29px;">
                            <td style="height: 29px; width: 125px;" valign="top">
                                <p>6</p>
                            </td>
                            <td style="height: 29px; width: 417px;" valign="top">
                                <p>COMEDK</p>
                            </td>
                            <td style="height: 29px; width: 563px;" valign="top">
                                <p>
                                    <strong>19-Aug-2020</strong>
                                </p>
                            </td>
                        </tr>
                        <tr style="height: 29px;">
                            <td style="height: 29px; width: 125px;" valign="top">
                                <p>7</p>
                            </td>
                            <td style="height: 29px; width: 417px;" valign="top">
                                <p>KIITEE</p>
                            </td>
                            <td style="height: 29px; width: 563px;" valign="top">
                                <strong>24-Jul-2020 to 28-Jul-2020
                                </strong>(Result announced)</td>
                        </tr>
                        <tr style="height: 29px;">
                            <td style="height: 29px; width: 125px;" valign="top">
                                <p>8</p>
                            </td>
                            <td style="height: 29px; width: 417px;" valign="top">
                                <p>WBJEE</p>
                            </td>
                            <td style="height: 29px; width: 563px;" valign="top">
                                <strong>Postpone
                                </strong>(Dates to be out soon)</td>
                        </tr>
                        <tr style="height: 29px;">
                            <td style="height: 29px; width: 125px;" valign="top">
                                <p>9</p>
                            </td>
                            <td style="height: 29px; width: 417px;" valign="top">
                                <p>MHTCET</p>
                            </td>
                            <td style="height: 29px; width: 563px;" valign="top">
                                <strong>Postpone
                                </strong>(Dates to be out soon)</td>
                        </tr>
                        <tr style="height: 29px;">
                            <td style="height: 29px; width: 125px;" valign="top">
                                <p>10</p>
                            </td>
                            <td style="height: 29px; width: 417px;" valign="top">
                                <p>BCECE</p>
                            </td>
                            <td style="height: 29px; width: 563px;" valign="top">
                                <p>Scrapped</p>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>