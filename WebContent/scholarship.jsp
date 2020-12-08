<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*,java.sql.DriverManager"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Orion | Scholarships</title>

        <link
        rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

        <!-- JS, Popper.js, and jQuery -->
        <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>

        <script src="js/scholarships.js"></script>
    </head>
    <style>
    	body, html {
			    min-height: 100%;
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
			Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/Orion","root","manojkumar");
			Statement stmt = null;
			ResultSet rs = null;
		
			stmt = conn.createStatement();
			String sql = "select * from scholarships";
			rs = stmt.executeQuery(sql);
			int rowCount = 0;
			while (rs.next()) {
				rowCount++;
			}
		%>
        <nav class="d-flex navbar navbar-dark bg-dark m-3 navbar-expand-lg rounded-lg shadow fixed-top">
            <a class="navbar-brand" href="index.jsp">
                <span class="h3 font-weight-bold">Orion</span>
            </a>
            <span class="text-light">
                Scholarships
            </span>
            <button class="navbar-toggler btn btn-dark" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end text-right" id="navbarNavAltMarkup">
                <div class="navbar-nav">
                    <a class="nav-item nav-link px-3" href="exams.jsp">Competitive Exams</a>
                    <a class="nav-item nav-link px-3" href="colleges.jsp">Colleges and Universities</a>
                    <a class="nav-item nav-link px-3 active" href="scholarship.jsp">Scholarships</a>
                </div>
            </div>
        </nav>
        <div class="py-5 mt-5">
            <div class="container text-center mb-5 p-4 rounded-lg bg-dark shadow-lg">
                <span class="display-4 font-weight-bold text-light">Scholarships</span>
            </div>
            <div class="container my-5">
                <input class="form-control" type="text" id="myInput" onkeyup="searchScholarship()" placeholder="Search for a scholarship">
            </div>
            <div class="container my-5">
                <hr>
            </div>
            <div id="myUL" class="row px-5">
            	<% 
            		rs = stmt.executeQuery(sql);	
            		while (rs.next()) {
            	%>
               		<a class="container my-4 mx-2 py-2 col btn btn-dark text-light" onclick="showScholarship(<%out.print(rowCount);%>,<%out.println(rs.getString("scholarshipsID"));%>)"><%out.println(rs.getString("SC-Name"));%></a>
         		<%}%>
            </div>
            <%  
				rs = stmt.executeQuery(sql);
            	
				while (rs.next()) {
			%>
            	<div id="Scholarship-<%out.print(rs.getString("scholarshipsID"));%>" class="py-5" style="display:none;">
        			<div class="container text-center my-5 p-4 rounded-lg bg-dark shadow-lg">
            			<span class="h2 font-weight-bold text-light" id="name"><%out.println(rs.getString("SC-Name"));%></span>
       	 			</div>
        			<div class="container my-2 p-5 bg-light text-dark rounded">
        				<h3>Description</h3>
            			<span id="description"><%out.println(rs.getString("Covered Expenses"));%></span>
        			</div>
        			<div class="container my-2 p-5 bg-dark text-light rounded">
        				<h3>Eligibility</h3>
        				<span id="elegibilty"><%out.println(rs.getString("Eligibility"));%></span>
        			</div>
    			</div>
    		<% }%>
          
        </div>
    </body>
</html>