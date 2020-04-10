<%-- 
    Document   : login
    Created on : Apr 29, 2019, 11:01:38 PM
    Author     : Dilshan
--%>

<%@page import="com.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



 <jsp:include page="commanpages/header.jsp"  />

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/login.css">
        <title>Login</title>
        <style>
	body{
		background-image: url(images/City_Landscape_Background.jpg);
		background-position: top;
		background-repeat: no-repeat;
			background-size:  100% 100%; 
		background-color: #8000ff;
		
	}
	
	</style>
    </head>
    <body style="background-color: #8000ff;">
       
        
        
       
    <br><br>
        <div class="container-fluid">
	<div class="row">
		 <div class="col-md-4 mb-3"></div>
		 
		 <div class="col-md-4 ">
		 	
             <div class="form">
                 <h4 style="color: red;">
                     <%
    String message="";
    try {
            message=request.getParameter("mess");
            if(!message.startsWith("id")){
                out.print(message);
            }   
        } catch (Exception e) {
        }
  

%>
            
                    
                    
        </h4> 
            <form class="needs-validation" novalidate name="Form1" method="post" action="login">
		  
      <label for="validationTooltip01">Username </label>
      <input type="text" name="uname"  class="form-control"   placeholder="Username" required>
     
      <div class="valid-tooltip">
        Ok !
      </div>
      <div class="invalid-feedback">
        Please Enter Username.
      </div>
    
      <label for="validationTooltip01">Password </label>
      <input type="password" name="pass" class="form-control" id="pa1"  placeholder="Password" required>
     
      <div class="valid-tooltip">
        Ok !
      </div>
      <div class="invalid-feedback">
        Please Enter Password.
      </div>
   
   
  <button class="btn btn-outline-primary" type="submit" name="submit" value="submit" style="border-radius: 45px; width: 150px;  position: relative; left: 0px; margin-top: 45px" type="submit">Submit form</button>
</form>
            <br>
            <br>
            <br>
            <a href="register.jsp">Don't have an Account</a>
            
  </div>
            <div style="height: 550px;" ></div>
</div></div> <div class="col-md-4 mb-3"></div>
</div>
<script>

(function() {
  'use strict';
  window.addEventListener('load', function() {

    var forms = document.getElementsByClassName('needs-validation');
 
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>

		
	
		 	
		
       
    </body>
</html>
<jsp:include page="commanpages/footer.jsp"  />	 