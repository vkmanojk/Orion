function first(){
    var l = window.location.pathname.split("/").length;
    var curcollege = window.location.pathname.split("/")[l-1];
    
    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          var data=this.responseXML
          colleges=data.getElementsByTagName('collegeWise')
          var total=colleges.length
           
          let i=0
          var cur = null;

          while(i<total){
              cur = colleges[i]
              var cname=cur.getAttribute("collegeName")

              if(cname==curcollege){
                  i = total
              }

              i+=1
          }
          data = cur.getElementsByTagName('homeDetails');
          var d = cur.getElementsByTagName('homeDetails');
          document.getElementById("collegeLogo").setAttribute("src",d[0].childNodes[1].innerHTML);
          
          document.getElementById("liindex").innerHTML = `<a href="/Orion/college_details_index/${curcollege}">Home</a>`;
          document.getElementById("licourse").innerHTML = `<a href="/Orion/college_details_course/${curcollege}">Courses</a>`;
          document.getElementById("licontact").innerHTML = `<a href="/Orion/college_details_contact/${curcollege}">Contact</a>`;
          
          d = cur.getElementsByTagName('contactDetails');
          document.getElementById("map").setAttribute("src",d[0].childNodes[11].innerHTML);

          document.getElementById('fullname').innerHTML = d[0].childNodes[13].innerHTML;
          document.getElementById('address').innerHTML = d[0].childNodes[3].innerHTML;
          document.getElementById('phone').innerHTML = "Phone: "+d[0].childNodes[5].innerHTML;
          document.getElementById('fax').innerHTML = "Fax: "+d[0].childNodes[7].innerHTML;
          document.getElementById('email').innerHTML = "Email: "+d[0].childNodes[9].innerHTML;
        }
    };
    xhttp.open("GET", "../xml/fullcollegedetails.xml", true);
    xhttp.send(); 
    }
    
    first()