<%-- 
    Document   : register
    Created on : Apr 29, 2019, 11:02:14 PM
    Author     : Dilshan
--%>




<%@page import="org.apache.catalina.users.AbstractUser"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="css/register.css">
        <style>
	body{
		background-image: url(images/cyan-wallpapers-hd-65843-7936710.jpg);
                background-position: center;
                background-repeat: no-repeat;
                background-size: 100% 100%;
		
	}
	
	
	
	</style>
    </head>
    <body >
  
        <jsp:include page="commanpages/header.jsp"  />
        
    
        
         <center><h4 style="color:red; ">
        
           <%
    String message="";
    try {
            message=request.getParameter("mess");
            if(!message.startsWith("er")){
                out.print(message);
            }   
        } catch (Exception e) {
        }
  

%>
        </h4></center>  
        <div class="container-fluid">
	<div class="row">
		 <div class="col-md-4 mb-3"></div>
		 
		 <div class="col-md-4" >
                    <div class="form">
		 	<div class="con">
                            <form class="needs-validation" novalidate name="Form1" method="post"  onSubmit="return check()" action="register">
		 	
      <label for="validationTooltip01">First Name </label>
      <input type="text" name="fname" class="form-control" maxlength="50"  placeholder="First Name" required>
     
      <div class="valid-tooltip">
        Ok !
      </div>
      <div class="invalid-feedback">
        Please Enter First Name.
      </div>
    
    
      <label for="validationTooltip01">Last Name </label>
      <input type="text" name="lname" class="form-control" maxlength="50"  placeholder="Last Name" required>
     
      <div class="valid-tooltip">
        Ok !
      </div>
      <div class="invalid-feedback">
        Please Enter Last Name.
      </div>
   
    
      <label for="validationTooltip01">Email  </label>
      <input type="email" name="mail" class="form-control" id="mail" maxlength="100"  placeholder="abc@gmail.com" required>
     
      <div class="valid-tooltip">
        Ok !
      </div>
      <div class="invalid-feedback">
        Please Enter Email.
      </div>
 

      <label for="validationTooltip01">Driving License Number </label>
      <input type="text" name="dlicen" class="form-control" maxlength="30"  placeholder="License" required>
     
      <div class="valid-tooltip">
        Ok !
      </div>
      <div class="invalid-feedback">
        Please Enter License Number.
      </div>
  
      
      <label for="validationTooltip01" >NIC Number  </label>
      <input type="text" name="nic" class="form-control" maxlength="15"  placeholder="123456789V" required>
     
      <div class="valid-tooltip">
        Ok !
      </div>
      <div class="invalid-feedback">
        Please Enter Nic Number.
      </div>
  
       
     
      <label for="validationTooltip01">Address </label>
      <input type="text" name="address" class="form-control"  maxlength="200" placeholder="No 32, 3 rd lane, Colomo3" required>
     
      <div class="valid-tooltip">
        Ok !
      </div>
      <div class="invalid-feedback">
        Please Enter Address.
      </div>
 
    
      <label for="validationTooltip01">City </label>
      <input type="text" name="city" class="form-control" maxlength="100"  placeholder="City" required>
     
      <div class="valid-tooltip">
        Ok !
      </div>
      <div class="invalid-feedback">
        Please Enter City.
      </div>
 
            
      <label for="validationTooltip01">Phone</label>
      <input type="number" name="phone" class="form-control" maxlength="12"  placeholder="0123456789" required>
     
      <div class="valid-tooltip">
        Ok !
      </div>
      <div class="invalid-feedback">
        Please Enter Phone.
      </div>
              
      
    
      <label for="validationTooltip01">Username </label>
      <input type="text" name="uname" class="form-control" maxlength="50"  placeholder="username" required>
     
      <div class="valid-tooltip">
        Ok !
      </div>
      <div class="invalid-feedback">
        Please Enter Username.
      </div>

    
      <label for="validationTooltip01">Password </label>
      <input type="password" name="pass" class="form-control" id="pa1" maxlength="20" placeholder="password" required>
     
      <div class="valid-tooltip">
        Ok !
      </div>
      <div class="invalid-feedback">
        Please Enter Password.
      </div>

     
      <label for="validationTooltip01">Re-Enter Password </label>
        <input type="password" class="form-control" id="pa2"  placeholder="password" required>
     
      <div class="valid-tooltip">
        Ok !
      </div>
      <div class="invalid-feedback">
        Please Re-Enter Password.
      </div>
 
      </div>
      
      
      
      
      <br><br>
 
 
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required onClick="showdate()" 
             style="position: relative;left: 10px;">
      <label class="form-check-label" for="invalidCheck" style="font-size: 17px; padding-left: 10px;">
          <a href="agrement.jsp" style="color: white;">Agree to terms and conditions</a> 
      </label>
      <div class="invalid-feedback">
        You must agree before submitting.
      </div>
   
   
      <button class="btn btn-outline-primary" type="submit" name="submit" value="submit" style="border-radius: 45px; width: 150px;  position: relative; margin-left: -5px; margin-top: 45px; color: #dab3ff;">Submit form</button>
</form>
                            
            <br>
            <br>
            <br>
            <a href="login.jsp" style="color: white;">Already have an Account</a>
  </div>
                      <div style="height: 1800px;" ></div>
  </div><div class="col-md-4 mb-3"></div>
  </div>
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

		<script>
	function	check(){
		var a= document.getElementById("mail").value;
		var b= document.getElementById("pa1").value;
		var c= document.getElementById("pa2").value;
		if(a!=""){
		var last=a.split('.').pop(-1);
if (last!="com") {
alert("Email invalid");
return false;

}
		}
		
	if(b!="" && c!=""){
		if(b!=c){
			alert("Password does not match");
return false;
		}
	}	
		
		
	}
		
		
		</script> 	
		 	
		 	
		


        
                <jsp:include page="commanpages/footer.jsp"  />
    </body>
</html>
