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
          
          document.getElementById("liindex").innerHTML = `<a href="/Orion-Inc/college_details_index/${curcollege}">Home</a>`;
          document.getElementById("licourse").innerHTML = `<a href="/Orion-Inc/college_details_course/${curcollege}">Courses</a>`;
          document.getElementById("licontact").innerHTML = `<a href="/Orion-Inc/college_details_contact/${curcollege}">Contact</a>`;
          
          d = cur.getElementsByTagName('courseDetails');
          
          document.getElementById("book1").setAttribute("src",d[0].childNodes[3].attributes[0].value);
          document.getElementById("book2").setAttribute("src",d[0].childNodes[5].attributes[0].value);
          document.getElementById("book3").setAttribute("src",d[0].childNodes[7].attributes[0].value);
          document.getElementById("book4").setAttribute("src",d[0].childNodes[9].attributes[0].value);
          
          document.getElementById("book5").setAttribute("src",d[0].childNodes[11].attributes[0].value);
          document.getElementById("book6").setAttribute("src",d[0].childNodes[13].attributes[0].value);
          document.getElementById("book7").setAttribute("src",d[0].childNodes[15].attributes[0].value);
          document.getElementById("book8").setAttribute("src",d[0].childNodes[17].attributes[0].value);

        }
    };
    xhttp.open("GET", "../xml/fullcollegedetails.xml", true);
    xhttp.send(); 
    }
    
    first()