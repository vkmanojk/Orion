<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <title>Orion | Colleges</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
</head>

<style type="text/css">

*{
 margin: 0px;
 padding: 0px;

}
body{
 font-family: arial;
 background: -webkit-linear-gradient(-135deg, #c850c0, #4158d0);
 background: -o-linear-gradient(-135deg, #c850c0, #4158d0);
 background: -moz-linear-gradient(-135deg, #c850c0, #4158d0);
 background: linear-gradient(-135deg, #c850c0, #4158d0);
}
.main{

 margin: 2%;
}

.card{
     width: 20%;
     display: inline-block;
     box-shadow: 2px 2px 20px black;
     border-radius: 5px; 
     margin: 2%;
    }

.image img{
  width: 100%;
  height: 100px;
  border-top-right-radius: 5px;
  border-top-left-radius: 5px; 
 }

.title{
  color: white;
  text-align: center;
  padding: 10px;
  
 }

h1{
  font-size: 20px;
  color: #000;
 }

.card {
  background-color: white;
}
.des{
  padding: 3px;
  text-align: center;
  padding-top: 10px;
  border-bottom-right-radius: 5px;
  border-bottom-left-radius: 5px;
}
button{
  color: black;
  margin-top: 40px;
  margin-bottom: 10px;
  background-color: white;
  border: 1px solid black;
  border-radius: 5px;
  padding:10px;
}
button:hover{
  background-color: black;
  color: white;
  transition: .5s;
  cursor: pointer;
}



body,html{
    height: 100%;
    width: 100%;
    margin: 0;
    padding: 0;
    /* background: #8dc0dd !important; */
    }

    .searchbar{
    margin-bottom: auto;
    margin-top: auto;
    height: 60px;
    background-color: #363636;
    border-radius: 30px;
    padding: 10px;
    }

    .search_input{
    color: white;
    border: 0;
    outline: 0;
    background: none;
    width: 0;
    caret-color:transparent;
    line-height: 40px;
    transition: width 0.4s linear;
    }

    .searchbar:hover > .search_input{
    padding: 0 10px;
    width: 450px;
    caret-color:red;
    transition: width 0.4s linear;
    }

    .searchbar:hover > .search_icon{
    background: white;
    color: #e74c3c;
    }

    .search_icon{
    height: 40px;
    width: 40px;
    float: right;
    display: flex;
    justify-content: center;
    align-items: center;
    border-radius: 50%;
    color:white;
    text-decoration:none;
    }
</style>
<body>
    <div class="container">
        <div class="header">
            <nav>
                <ul class="nav nav-pills pull-right">
                    <li role="presentation" class="active"><a href="/Orion-Inc/index.jsp">Logout</a>
                    </li>
                </ul>
            </nav>
            <h3 class="text-muted" style="color: white;">Welcome</h3>
        </div>

    <div class="jumbotron" style="margin-top: 5%;text-align: center;">
        <h1>Orion Ltd</h1>
        <p class="lead"></p>
        
        <p>

            <div class="container h-100">
                <div class="d-flex justify-content-center h-100">
                  <div class="searchbar">
                    <input class="search_input" type="text" name="" placeholder="Search For Colleges" style="font-size: xx-large;">
                    <a href="#" class="search_icon"><i class="fas fa-search"></i></a>
                  </div>
                </div>
              </div>
              
        </p>

    </div>

<div class="main" id="mainlist">

    <!-- <div class="card">
      <div class="image">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/8/85/Gfp-missouri-st-louis-clubhouse-pond-and-scenery.jpg/1199px-Gfp-missouri-st-louis-clubhouse-pond-and-scenery.jpg">
      </div>
      <div class="title">
        <h1>Amrita Vishwa Vidhyapeetham</h1>
      </div>
      <div class="des">
        <p>Home Away From Home</p>
        <p ><a href="college_details_index.html">Read More...</a></p>
      </div>
    </div> -->
</div>

<script src="./js/listofcollegesapp.js"></script>
</body>

</html>
