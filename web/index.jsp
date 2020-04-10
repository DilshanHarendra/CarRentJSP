
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/home.css">
<link rel="stylesheet" href="css/navbar.css">
<link rel="icon" href="images/icon.jpg">
        <title>Home</title>
        <style>
            @import url('https://fonts.googleapis.com/css?family=Raleway:200');
        </style>
    </head>
     <body onload="change123()">
<div  class="topimage" id="topimage"  >
    <video width="100%" style="position: fixed; right: 0;" autoplay muted loop id="video1">
  <source src="video/Free stock video Sea Sunrise Sunset Sun Ocean Aerial View.mp4" type="video/mp4">
  <source src="video/Free stock video Sea Sunrise Sunset Sun Ocean Aerial View.ogg" type="video/ogg">
  Your browser does not support the video tag.
</video>
        <jsp:include page="commanpages/header.jsp"  />
        <hr>






<div class="container-fluid">
<center><h1 class="topic">Choose Our Packages </h1></center>
<div class="row" >

	<div class="col-md-4">
 	<div class="wrapper">
 	<div class="card" id="c1">
		<center><h2 class="chead1">Daily Packages</h2></center>
		<br><br><br>
	<p class="para">
		We rent our vehicals for a day (For 24 Hours). We recomand this package  for short distance ride. For additional ours should be pay. 
		</p>
		<br><br>
		<p class="para">
		Condition may apply. 
		
	</p>
	</div>	
	</div>
    </div>
    
	<div class="col-md-4">
	<div class="wrapper">
	<div class="card" id="c0">
	<center><h2 class="chead3">Any Day</h2></center>
	<br><br><br>
	<p class="para">
		We rent our vehicals for  days. You can keep vehicale more than one day and you kan ride upto 500 Km. We recomand this package  for 3 , 4 days  ride. For additional Kilomiters should be pay. 
		</p>
		<br><br>
		<p class="para">
		Condition may apply. 
		
	</p>
	</div>	
	</div>
 	</div>
 	
 	<div class="col-md-4">
 	<div class="wrapper">
	<div class="card" id="c1">
	<center><h2 class="chead3">Unlimited Distance</h2></center>
	<br><br><br>
	<p class="para">
		 You can keep vehicale more than one day and you can ride unlimited Kilometers. We recomand this package  for long  ride.  
		</p>
		<br><br>
		<p class="para">
		Condition may apply. 
		
	</p>
	</div>	
	</div>
 	</div>

</div>
</div><!--------------------------------------------------------->
<hr class="collap">
<div class="container-fluid">
	<center><h1 class="topic" style="top: 25px; position: relative;">We Provide Best Vehicles </h1></center><br><br><br>
	
	
	<div class="row" >

	<div class="col-md-4 ">
	
		<div class="details">
		<img class="detailimg" src="images/auddi.jpg" alt="">
			<b><center><p style="position: absolute; top: 350px;  " >High Comfortable.</p></center></b>
		</div>
		
	</div>
	
	<div class="col-md-4 ">
	
		<div class="details">
			<img class="detailimg" src="images/bmw_x3_30d_097.jpg" alt="">
			<b><p style="position: absolute; top: 350px; " >Fully air Condition, Music & Other <br>Facilities.</p></b>
				
		</div>
	</div>
	<div class="col-md-4 ">
		<div class="details">
			<img class="detailimg" src="images/service.jpg" alt="">
			<b><center><p style="position: absolute; top: 350px;  " >Support and Service.</p></center></b>
				
		</div>
	</div>
	
	
	</div>
	
</div>
<div style="height: 200px;" ></div>
<script>
	
	function change1(){
		
		setInterval(changeimg,2500);
	}
	var y=1;

	function changeimg(){
var x="url(images/bg"+y+".jpg)";

	document.getElementById("topimage").style.backgroundImage = x ;
		
y++;
if(y==5)
y=1;
}

	
	</script>
        
        <script>
	
	function change1(){
		document.getElementById("video1").src = "video/B1.mp4" ;
		//changeimg();
		//setInterval(changeimg,1000*64);
	}
	var y=1;

	function changeimg(){
var x="video/B1.mp4";
document.getElementById("video1").src = "video/B1.mp4" ;
	document.getElementById("video1").src = x ;
	x="video/B2.mp4";
	setTimeout(function(){ document.getElementById("video1").src = x ; }, 1000*18);
		

}

	
	</script>
    </body>
</html>
<jsp:include page="commanpages/footer.jsp"  />