function first(){

    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
          
          var data=this.responseXML
          let colleges=data.getElementsByTagName('collegeDetails')
          var total=colleges.length
          console.log(total);
          let i=0
          while(i<total){
              var cur=colleges[i]
              var cid=cur.getElementsByTagName("cid")[0].innerHTML
              var imgUrl=cur.getElementsByTagName("imgUrl")[0].innerHTML
              var name=cur.getElementsByTagName("name")[0].innerHTML
              var desc=cur.getElementsByTagName("desc")[0].innerHTML

              document.getElementById("mainlist").insertAdjacentHTML("beforeend",`
              <div class="card" id=${cid}>
                <div class="image">
                    <img src="${imgUrl}">
                </div>
                <div class="title">
                    <h1>${name}</h1>
                </div>
                <div class="des">
                    
                    <p ><a href="college_details_index/${cid}">Read More...</a></p>
                </div>
            </div>
              `
            //   <p>${desc}</p>
              )

              i+=1
          }
        }
    };
    xhttp.open("GET", "./xml/listofcolleges.xml", true);
    xhttp.send(); 
}


window.onload = function() {
  first()
};