<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Colleges For You</title>
	<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="Keywords" content="College, Amrita, college in Coimbatore">
<meta name="author" content="Sudharshan Shanmugasundaram">
<link href="../css/college_details_style.css" rel="stylesheet"  type="text/css"/>

</head>
<body class="body">
<header class="mainheader">
	<img id="collegeLogo" src="../images/logo.png">
	<content id="search">
		<form>
  			<input type="text" name="search" placeholder="Search anything..." onclick="window.location.href='college_details_search.html'">
		</form>
	</content>
	<nav>
		<ul>
			<li id='liindex'><a href="college_details_index.jsp">Home</a></li>
			<li id='licourse'><a href="college_details_course.jsp">Courses</a></li>
			<li id='licontact'><a href="college_details_contact.jsp">Contact</a></li>
		</ul> 
	</nav>
</header>
<br>
<div id="_slider" class="slideshow-container">

<div class="iambrpslides fade">
  <div class="numbertext">01 / 03</div>
  <img src="../images/a.jpg">
 </div>

<div class="iambrpslides fade">
  <div class="numbertext">02 / 03</div>
  <img src="../images/b.jpg">
  </div>

<div class="iambrpslides fade">
  <div class="numbertext">03 / 03</div>
  <img src="../images/c.jpg">
</div>

</div>

<div style="text-align:center">
  <span class="dot"></span> 
  <span class="dot"></span> 
  <span class="dot"></span> 
</div>

<br>

<div class="mainContent">
	<div class="Content">
		<article class="topContent">
			<header>
			 <h3><a href="#" title="My First Post">About </a></h3>  
			</header>

			<content>
				<p id="aboutPara">The beginnings of Amrita Vishwa Vidyapeetham can be traced to 1994 when a School of Engineering was started in an obscure village named Ettimadai, at the foothills of Bouluvanpatty ranges of the Western Ghats in the Coimbatore district of Tamil Nadu.

					At that time there were 120 students and 13 faculty members. Today, Amrita Vishwa Vidyapeetham has five campuses in three different states of India. There is a student population of over 12,000 and faculty strength of nearly 1500. Over 120 UG, PG and doctoral programs are offered.
					
					When Amrita became a “deemed to be University” in January 2003, it was the youngest group of institutions to be conferred this status. As Amrita's first campus, Coimbatore is home to the administrative headquarters of Amrita Vishwa Vidyapeetham.
					
					Schools of Engineering and Business, in addition to Departments of Social Work and Communication, are located on this campus. Research centers include AMBE, CEN, CES and Cybersecurity. The campus has nearly 3500 students and about 600 faculty and staff members.
					
					This sprawling 400-acre campus is often likened to an oasis in a desert. Massive tree-planting and forestation activities undertaken over the past decade have converted the once-barren land into a lush green and beautiful place.
					
					A lot of emphasis is placed on eco-friendly and conservation practices. Waste water from the hostels and faculty and staff quarters is treated using EM; no chemicals are used in the process. Organic fertilizers are made using vermi-compost, pesticides have been avoided since the very beginning. The tranquil surroundings, away from the pollution and the bustle of city life, are home to several exotic birds, including parrots and peacocks.
				</p>
			</content>
		</article>

		<article class="bottomContent">
			<header>
			<h3><a href="#" title="Pathway Programme">Research</a>	</h3>  
			</header>
			<content>
				<p id="researchPara">Amrita Vishwa Vidyapeetham is a world class, research intensive institution with national and international reputation as an educational institution providing higher education in an ambience rooted in rich Indian culture and heritage. Based in the Coimbatore campus, the research centers are envisioned as a platform to encourage and enhance research among the faculty of Amrita Schools of Business, Communication, Engineering and Social Work.
				</p>
			</content>
		</article>

		<article class="bottomContent">
			<header>
			<h3><a href="#" title="Pathway Programme">Campus Life - Join Our Students on a Day Out!</a>	</h3>  
			</header>
			<content id="campuslifePara">
				<p>"My life at Amrita has etched such subtle memories that it has been difficult realize the impact during my actual process as a student during a four year course. I know, however, that years later I will reflect and cherish the opportunities I gained. At one of the most crucial and formative stages of my life, I consider myself most fortunate to be exposed to such a richly, multifaceted and educative influence. I know that I am evolving in a way that determines my future positively; our campus offers a diverse, dynamic platform for personality development.

					The ambience on Amrita's campus needs no description for those who have experienced it. Placed in a serene setting right in the lap of nature, we are provided with an environment that in so many ways is so conducive for growth. As it is secluded from all sources of pollution, its pristine atmosphere soothes the mind, facilitates good health and whets one's appetite for learning."
				</p>
			</content>
		</article>

		
	</div>
</div>
<aside class="top-sidebar">
	<article>
		<h3>Join us today!</h3>
		<p>Embark on an exciting learning journey with Informatics</p>
	</article>
</aside>

<aside class="middle-sidebar">
	<article>
		<h3>Your Boardroom Qualification</h3>
		<p>A Degree to stand out from the crowd…...</p>
	</article>
</aside>

<aside class="buttom-sidebar">
	<article>
		<h3>Be ahead of your peers</h3>
		<p>Fast track your education with Informatics</p>
	</article>
</aside>
<footer class="mainFooter">
	<p style="align-items: center;text-align: center;">Copyright &copy <a href="#">Orion Inc</a> </p>
</footer>


<script type="text/javascript">
var slideIndex = 0;
showSlides();

function showSlides() {
    var i;
    var slides = document.getElementsByClassName("iambrpslides");
    var dots = document.getElementsByClassName("dot");
    for (i = 0; i < slides.length; i++) {
       slides[i].style.display = "none";  
    }
    slideIndex++;
    if (slideIndex> slides.length) {slideIndex = 1}    
    for (i = 0; i < dots.length; i++) {
        dots[i].className = dots[i].className.replace(" active", "");
    }
    slides[slideIndex-1].style.display = "block";  
    dots[slideIndex-1].className += " active";
    setTimeout(showSlides, 2000); // Change image every 2 seconds
}
</script>

<script type="text/javascript">
  document.title="Home";
</script>
<script src="../js/college_details_index_app.js" ></script>
</body>

</html>