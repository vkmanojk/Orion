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
      <li id="liindex"><a href="college_details_index.jsp">Home</a></li>
      <li id="licourse"><a href="college_details_course.jsp">Courses</a></li>
      <li id="licontact"><a href="college_details_contact.jsp">Contact</a></li>
    </ul> 
  </nav>
</header>
<iframe id="map" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3917.801510459604!2d76.89843921428792!3d10.902684359832966!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3ba85c95d3e828eb%3A0x2785cb4510629029!2sAmrita%20Vishwa%20Vidyapeetham%20University!5e0!3m2!1sen!2sin!4v1600349708925!5m2!1sen!2sin" width="250" height="250" frameborder="0" style="border:0; margin: 2% auto;" allowfullscreen="true" aria-hidden="false" tabindex="0" allowfullscreen></iframe>
<h3>Contact</h3>
<h3 id="fullname">Amrita Vishwa Vidyapeetham<br></h3>
<h4 id="address">
  Amritanagar
  Coimbatore - 641 112 Tamil Nadu, India
</h4>
<pre>
  <p id="phone">Phone:  +91-422-2685000</p>
  <p id="fax">Fax:  +91-422-2686274</p>
  <p id="email">Email: univhq@amrita.edu</p>
</pre>


<!DOCTYPE html>
<html>
<body>

<br>
<br>

<p id="demo"></p>

<hr>
<footer class="mainFooter">
  <p>Copyright &copy <a href="#">Orion Inc</a></p>
</footer>
<script>
function myFunction() {
    var x, text;

    // Get the value of the input field with id="numb"
    x = document.getElementById("numb").value;

    // If x is Not a Number or less than one or greater than 10
    if (isNaN(x) || x < 1 || x > 1000) {
        text = "Input not valid";
    } else {
        text = "Input OK";
    }
    document.getElementById("demo").innerHTML = text;
}
</script>

</body>
</html> 
<script type="text/javascript">
  document.title="Contact";
</script>
<script src="../js/college_details_contact_app.js"></script>
</body>
</html>