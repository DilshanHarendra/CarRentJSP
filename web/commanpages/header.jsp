
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<% 
 String ID="";
try {
       ID = session.getAttribute("ID").toString();   
    } catch (Exception e) {
        ID="";
    }
 


%>




<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">

  <script src="js/jqueryt.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="js/proper.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="js/boots.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<link rel="icon" href="images/icon.jpg">
<style>
    @media only screen and (max-width: 976px) {
  
		.form-control{
			width: 55%;
		}
		.topimage{
		height: 450px;
                }
                .menubutton{
                    width: 30px;
                    height: 30px;
                }
		
		
	}
</style>

<link rel="stylesheet" href="css/common1.css">
    </head>
    <body>
      <nav class="navbar navbar-expand-lg navbar-dark  " style="position: relative; top: 0; width: 100%; background-color: rgba(0,0,0,0.5);">
  <a class="navbar-brand" href="#" ><lable style="font-size:30px;" >T&V Lanka<lable></a>
 <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">

 	<img src="images/menu.png" class="menubutton" alt="">

 
  </button>
  <div class="collapse navbar-collapse" id="navbarNav">
    <ul class="navbar-nav">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp"><lable class="item"  >Home</lable> </a>
      </li>
     
      
      <%
      if (ID.equals("")) {
              out.print("<li class=\"nav-item\"><a class=\"nav-link\" href=\"login.jsp\"><lable class=\"item\" >Sign in</lable></a></li>");
              out.print("<li class=\"nav-item\"><a class=\"nav-link\" href=\"register.jsp\"><lable class=\"item\" >Sign Up</lable></a></li>");
              
          }else{
           out.print("<li class=\"nav-item\"><a class=\"nav-link\" href=\"bookingPage.jsp\"><lable class=\"item\" >Booking</lable></a> </li>");
          out.print("<li class=\"nav-item\"><a class=\"nav-link\" href=\"logout.jsp\"><lable class=\"item\" >Logout</lable></a> </li>");
         out.print("<li class=\"nav-item\"><a class=\"nav-link\" href=\"userProfile.jsp\"><lable class=\"item\" >Profile</lable></a></li>");
      
         
         if (ID.equals("AdmInCarReNT2019")) {
              out.print("<li class=\"nav-item\"><a class=\"nav-link\" href=\"adashboard.jsp\"><lable class=\"item\" >Admin Dashboard</lable></a></li>");
            
      }
      
      }
     
      
      
      %>
     
        
    
      
    
      
      <li class="nav-item">
        <a class="nav-link" href="contactus.jsp"><lable class="item" >Contact US</lable></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#"><lable class="item" >About US</lable></a>
      </li>
      
   
    </ul>
      <div style="padding-left: 20px;">
    <form class="form-inline my-2 my-lg-0">
      <input  type="search" placeholder="Search" aria-label="Search" class="form-control mr-sm-2">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit" >Search</button>
    </form>
    </div>
  </div>
</nav>
</div>
<br><!------------------------------------------------------------------------------------------------------>
    </body>
</html>
