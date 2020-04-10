
<%@page contentType="text/html" pageEncoding="UTF-8"%>

    <head>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
	  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat">

  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">


        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/navbar.css"/>
        
        
        
        
        
        
    </head>

       <footer style="
                
    border-top: 2px solid #eee; 
    border-top-style: 10px;
	background-color: rgba(0,0,0,0.6);
		padding-top: 10px;
             position: relative;
		color: white;
                
                bottom: 0px;
	height: 40%;
        " >

 <div class="row" style="padding-top: 20px;">

	 <div class="col-md-4" style="padding-left: 50px;">
	 	<p> Email : abc@gamil.com </p>
	 	<p>Telephone: 011-2569875 </p>
	 	<p>Address : No 56, 3rd lane, Colombo 3. </p>
	 	<a href="#"><lable style="color:red;">Location</lable></a>
	 	<p></p>
	 	
	 </div>
	 <div class="col-md-4" style="padding-left: 50px;">
	 <p>&copy; Company Name</p>
			</div>	
	 <div class="col-md-4" style="padding-left: 50px;">
	 	 <i class="fa fa-facebook-official opacity1"></i>
        <i class="fa fa-instagram opacity1 "></i>
        <i class="fa fa-snapchat opacity1"></i>
        <i class="fa fa-pinterest-p opacity1"></i>
        <i class="fa fa-twitter opacity1"></i>
        <i class="fa fa-linkedin opacity1"></i>
	 	
	 </div>
	
	 </div>
	   
		<center> <p>Powerd By <a href=""><lable style="color:red;">ABC</lable></a></p></center>	
			
			
		</footer>	

        <div class="row"><div class="col-md-8"></div><div class="col-md-4">
                    <% try {
                             if(session.getAttribute("ID").toString().equals("")){
                        out.print("<div class=\"onoff\" style=\"color:red; \"> Offline");
                    }else{
                       out.print("<div class=\"onoff\" style=\"color:green; \"> Online");
                    }
                        } catch (Exception e) {
                           out.print("<div class=\"onoff\" style=\"color:red; \"> Offline");
                        }
                   
                    
                    
                    %>
                    
                    
                    
                    </div></div></div>


