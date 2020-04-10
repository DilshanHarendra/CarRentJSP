<%-- 
    Document   : conatctus
    Created on : May 19, 2019, 11:53:20 PM
    Author     : Dilshan
--%>
<%@page import="com.Dbconnect"%>
<%!
Dbconnect db = new Dbconnect();
%>
<%@page import="java.util.UUID"%>
<%
    String name,mail,phone,message,getMess="";
    try {
            if(request.getParameter("submit").equals("submit")) {
        name=request.getParameter("name");
        mail=request.getParameter("mail");
        phone=request.getParameter("phone");
        message= request.getParameter("message");
        String id ="Me"+UUID.randomUUID().toString();
       // out.print(name+mail+phone+message+id);
        String query="INSERT INTO `message`(`id`, `name`, `mail`, `phone`, `message`, `mdate`, `reply`) VALUES ('"+id+"','"+name+"','"+mail+"','"+phone+"','"+message+"',now(),'no')";
       getMess= db.DbInsert(query);
      // out.print(getMess);
       if (getMess.equals("Success")) {
               response.sendRedirect("contactus.jsp?mess=Success");
           }
 
    } 
        } catch (Exception e) {
        }
 
%>





<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Conatc US</title>
         <style>
	body{
		background-image: url(images/contact-background.jpg);
                background-position: center;
                background-repeat: no-repeat;
                background-size: 100% 100%;
		
	}
	
	
	
	</style>
    </head>
    
    <body>
         <jsp:include page="commanpages/header.jsp"  />
         <div class="container">
             <center><h1 style="color:green;">
                 <%
                 try {
                     String m=request.getParameter("mess");
                        if (m !=null) {
                                if (m.equals("Success")) {
                                        out.print(m);
                                    }
                            }
 
                     } catch (Exception e) {
                     }
                 
                 
                 %>
                 
                 
                 
                 </h1></center>
             
             
         </div>
          <div class="container-fluid">
	<div class="row">
		 <div class="col-md-4 mb-3"></div>
		 
		 <div class="col-md-4" >
                    <div class="form">
		 	<div class="con">
                            <form class="needs-validation"  name="Form1" method="post"   action="" novalidate >
		 	
      <label for="validationTooltip01"> Name </label>
      <input type="text" name="name" class="form-control" maxlength="50"  placeholder="Name" required>
     
      <div class="valid-tooltip">
        Ok !
      </div>
      <div class="invalid-feedback">
        Please Enter  Name.
      </div>
    
    
     
   
    
      <label for="validationTooltip01">Email  </label>
      <input type="email" name="mail" class="form-control" id="mail" maxlength="100"  placeholder="abc@gmail.com" required>
     
      <div class="valid-tooltip">
        Ok !
      </div>
      <div class="invalid-feedback">
        Please Enter Email.
      </div>
       
      <label for="validationTooltip01">Phone</label>
      <input type="number" name="phone" class="form-control" maxlength="12"  placeholder="0123456789" required>
     
      <div class="valid-tooltip">
        Ok !
      </div>
      <div class="invalid-feedback">
        Please Enter Phone.
      </div>
              
      
    
      <label for="validationTooltip01">Message </label>
      <textarea name="message" class="form-control" maxlength="200"  placeholder="message ...." required></textarea>
     <div class="valid-tooltip">
        Ok !
      </div>
      <div class="invalid-feedback">
        Please Enter Message.
      </div>
     
      </div>
      
    
                        <button class="btn btn-primary" type="submit" name="submit" value="submit" 
                                style="border-radius: 45px; width: 150px;  position: relative; margin-left: -5px; margin-top: 45px; color: white;" >Send </button>
                                
</<form>
                            
            <br>
            <br>
            <br>
           
  </div>
                      <div style="height: 20px;" ></div>
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
         
         
         
        
    </body>
</html>
 <jsp:include page="commanpages/footer.jsp"  />