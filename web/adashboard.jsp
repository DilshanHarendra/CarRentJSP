<%-- 
    Document   : adashboard
    Created on : Apr 29, 2019, 11:10:04 PM
    Author     : Dilshan
--%>

<%@page import="java.util.Date"%>
<%@page import="com.Vehicle"%>
<%!
  
%>

<%
 try {
            if(!session.getAttribute("ID").toString().equals("AdmInCarReNT2019")) {
         response.sendRedirect("index.jsp");   
        }
        } catch (Exception e) {
             response.sendRedirect("login.jsp");   
            out.print(e);
        }

%>

<%
    String message="",action="notification",para="";
try {
   
            message=request.getParameter("mess");
            
            if(!request.getParameter("page").toString().equals("")){
                
              action=request.getParameter("page");
            
            }   
        } catch (Exception e) {
        }
  





%>





<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Dashboard</title>
        <link rel="stylesheet" href="css/dashboard.css"/>
       
    </head>
    <body>
        <jsp:include page="commanpages/header.jsp"  />
    <center> 
        <%
      
           
                    if(message != null){
            if(message.equals("Success")){
                out.print("<h5 style=\"color: green; border: 1px solid; padding: 5px;\">"+message);
            }else{
              out.print("<h5 style=\"color: red; border: 1px solid; padding: 5px;\">"+message);  
            }
            }
           
          
            
            
            
            
        
      
        %>
                    
                    
                    
        </h5></center>
        
        
        
        <div class="container-fluid"> 
    <div class="row">

 <div class="box">
 	<div class="sidenav" >
			<ul style="list-style: none;">
				<li class="limenu"> <a href="#" id="notification" class="active">Notification  </a></li>
                                <li class="limenu"><a href="#" id="Message" >  Message</a></li>
				<li class="limenu"><a href="#" id="AddVehicale" >Add Vehicale</a></li>
				<li class="limenu"><a href="#" id="Booking" >  Booking</a></li>
				<li class="limenu"><a href="#" id="User" >  User</a></li>
				<li class="limenu"><a href="#" id="Vehicle" >  Vehicles</a></li>
				
		</ul>  
</div>

	</div>
	

	<div class="col-md-9 mb-4">


	<main style="padding-left: 10px;">
			<div class="loading"><div class="col-md-5"></div><img  src="images/loading.gif" alt="Loading"></div>
		</main>
</div>




 
 	</div>
 	</div>
        <jsp:include page="commanpages/footer.jsp"  />
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script >
            $(document).ready(function(){

	// loading the contents of the home page
	$('main').load('content.jsp #<% out.print(action+"'"); %>);

	// checking the id of the link clicked
	$('a').click(function(){
		$('main').html('<div class="loading"><div class="col-md-5"><img src="images/loading.gif" alt="Loading"></div></div>');

		// removing active class from all links
		$('a').removeClass('active');
		$(this).addClass('active');

		var clickedLink = $(this).attr('id');

		$('main').load('content.jsp #' + clickedLink);
	});

});
            
            
        </script>
    </body>
</html>
