function first(){

	var l = window.location.pathname.split("/").length;
    var curcollege = window.location.pathname.split("/")[l-1];
    
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          var data=this.responseXML;
          var colleges=data.getElementsByTagName('collegeWise');
          var total=colleges.length;
          console.log(total);
          let i=0;
          var cur = null;

          while(i<total){
              cur = colleges[i];
              var cname=cur.getAttribute('collegeName');

              if(cname==curcollege){
                  i = total;
              }

              i+=1;
          }
          data = cur.getElementsByTagName('homeDetails');
          var d = cur.getElementsByTagName('homeDetails');
          document.getElementById("collegeLogo").setAttribute("src",d[0].childNodes[1].innerHTML);
          
          document.getElementById("liindex").innerHTML = `<a href="/Orion-Inc/college_details_index/${curcollege}">Home</a>`;
          document.getElementById("licourse").innerHTML = `<a href="/Orion-Inc/college_details_course/${curcollege}">Courses</a>`;
          document.getElementById("licontact").innerHTML = `<a href="/Orion-Inc/college_details_contact/${curcollege}">Contact</a>`;

          var slider1 = d[0].childNodes[3].innerHTML;
          var slider2 = d[0].childNodes[5].innerHTML;
          var slider3 = d[0].childNodes[7].innerHTML;
          document.getElementById('_slider').insertAdjacentHTML('beforeend',`
            <div class="iambrpslides fade">
                <div class="numbertext">01 / 03</div>
                <img src="${slider1}">
            </div>

            <div class="iambrpslides fade">
                <div class="numbertext">02 / 03</div>
                <img src="${slider2}">
            </div>

            <div class="iambrpslides fade">
                <div class="numbertext">03 / 03</div>
                <img src="${slider3}">
            </div>
          `)

          document.getElementById('aboutPara').innerHTML = d[0].childNodes[9].innerHTML;
          document.getElementById('researchPara').innerHTML = d[0].childNodes[11].innerHTML;
          document.getElementById('campuslifePara').innerHTML = d[0].childNodes[13].innerHTML;
        }
    };
    xhttp.open("GET", "../xml/fullcollegedetails.xml", true);
    xhttp.send(); 
    }
    window.addEventListener('load', (event) => {
    first();
});
	
    