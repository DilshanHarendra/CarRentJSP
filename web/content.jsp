<%-- 
    Document   : content
    Created on : Apr 29, 2019, 11:10:34 PM
    Author     : Dilshan
--%>



<%@page import="java.util.Date"%>
<%@page import="com.Vehicle"%>
<%@page import="com.Dbconnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%! Dbconnect dbcon = new Dbconnect();  

Date date= new Date();
           

%>



<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Content</title>

<style>
	
	.button{
		width: 100%;
		height: 100%;
		padding: 10px;
		border-radius: 10px;
	}	
	.add{
		background-color: green;
	}
	.add:hover{
		background-color: #62DF7C;
	}
	.remove{
		background-color: red;
		
	}
	.remove:hover{
		background-color: #BC5C5E;
	}
	.delete{
		background-color: black;
		color: white;
	}
	.delete:hover{
		
	}
   
	</style>



</head>
<body>
<div id="notification">
    
    
<center><h2>Notification</h2></center><hr>

<table class="table">
  
  <% 
      
       try {
              String vrow[] =dbcon.getAllRow("SELECT * FROM booking b,userdetails u where b.userid = u.id and b.status='Pending'").split("~");
           if(vrow[0]==""){
                out.println("Now New Notification");
           }else{
               out.println("<tr><th>User</th><th>Start Date</th><th>End Date</th><th>Pick Time</th><th>Package</th><th>Vehicle Catogory</th><th>No Vehicles</th><th>Book Date</th><th>Status</th><th>Confirm</th><th>Delete</th></tr>");
           }
              
              
              
             
   String vcol[];

            for (int idx = 0; idx < vrow.length; idx++) {
       
    vcol=vrow[idx].split("/");
   //out.println(col.length);
   if(!vcol[9].equals("confirm")){
    out.println("<tr><td>"+vcol[11]+" "+vcol[12]+"</td><td>"+vcol[2]+"</td><td>"+vcol[3]+"</td><td>"+vcol[4]+"</td><td>"+vcol[5]+"</td><td>"+vcol[6]+"</td><td>"+vcol[7]+"</td><td>"+vcol[8]+"</td><td>"+vcol[9]+"</td><td>");
      
           
           out.print("<a href='changeBooking?do=update&id= "+vcol[0] +"'><button class=\"button remove\" style=\"background-color: green;\">Confirm</button></a> </td><td> "); 
            out.print("<a href='changeBooking?do=delete&id= "+vcol[0] +"'><button class=\"button remove\"style=\"background-color: red;\" >Delete</button></a> </td> </tr>"); 
                   
           }
           
        
    
    
    
 
       }  
     
 
           } catch (Exception e) {
              // out.print("Error "+e);
           }
  
   
           
           
        
   
   
   %> 
   <h1  >
</table>





</div> <!-- home -->


<div id="AddVehicale">
<br><br>


<form class="needs-validation" novalidate name="Form1" method="post" action="addvehicle">
  <div class="form-row">
    <div class="col-md-4 mb-3">
      <label for="validationTooltip01">Vehicle Number</label>
      <input type="text" class="form-control" name="vnum" id="validationTooltip01" placeholder="Vehicle Number" maxlength="20" required>
      <div class="valid-tooltip">
        Looks good!
      </div>
    </div>
    </div>
    <div class="form-row">
     <div class="col-md-4 mb-3">
      <label for="validationTooltip01">Chasi Number</label>
      <input type="text" class="form-control" name="cnum" id="validationTooltip02" placeholder="Vehicle Number" maxlength="20" required>
      <div class="valid-tooltip">
        Looks good!
      </div>
    </div>
    </div>
    <div class="form-row">
    <div class="col-md-4 mb-3">
      <label for="validationTooltip02">Number of Seats</label>
      <input type="number" class="form-control" name="seats" id="validationTooltip03" placeholder="value" max="50" required>
      <div class="valid-tooltip">
        Looks good!
      </div>
    </div>
   </div>
    <div class="form-row">
     <div class="col-md-4 mb-3">
     
      <label for="validationTooltip01">Select Vehicle Catogory</label>
      <select name="catogory" id="" class="form-control" id="validationTooltip01"  required>
      <option value=""></option>
      	<option value="car">Car</option>
      	<option value="van">Van</option>
      	<option value="bus">Bus</option>
      	<option value="m_bike">Moter Bike</option>
      </select>
     
      <div class="valid-tooltip">
        Ok !
      </div>
      <div class="invalid-feedback">
        Please Select Vehicle Catogory.
      </div>
  
    </div>
  </div>
  
    <button class="btn btn-primary" type="submit" name="submit" value="submit">Submit form</button>
</form>

<script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
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


</div> <!-- home -->


<div id="Vehicle">
	<h2>Vehicle Details</h2>
	<br>
	<table class="table">
  <tr>
    <th>Vehicle Number</th>
    <th>Chasi Number</th>
    <th>Number of Seats</th>
     <th>Vehicle Catogory</th>
      <th>Remove</th>
  </tr>
  <% 
      
       try {
              String vrow[] =dbcon.getAllRow("SELECT * FROM vehicle").split("~");
          //   out.println(dbcon.getAllRow("SELECT * FROM vehicle"));
   String vcol[];
   for (int idx = 0; idx < vrow.length; idx++) {
       
    vcol=vrow[idx].split("/");
   //out.println(col.length);
    out.println("<tr><td>"+vcol[1]+"</td><td>"+vcol[2]+"</td><td>"+vcol[3]+"</td><td>"+vcol[4]+"</td><td>");
     
           
           out.print("<a href='deleteVehicle?id= "+vcol[0] +"'><button class=\"button remove\" >Remove</button></a> </td> </tr>"); 
        
           
        
    
    
    
 
       } 
           } catch (Exception e) {
               //out.print(e);
           }
  
   
           
           
        
   
   
   %> 
</table>
</div> <!-- home -->


<div id="User">
	<h2>User</h2>
	<br>
        <h3 style="color: red;">
            <%
            /*
            try {
             String r=request.getParameter("mess");
              
             if(r.equals("suss")  )
             {
                 out.print("Delete User");
             }
         } catch (Exception e) {
             
         }
*/
            %>
            
            
        </h3>    
        
        
	<table class="table">
  <tr>
    <th>First Name</th>
    <th>Last Name</th>
    <th>E-mail</th>
    <th>Nic</th>
    <th>Driving License</th>
    
    <th>Address</th>
    <th>City</th>
    <th>Phone</th>
    <th>Usernamne</th>
    <th>Password</th>
    <th>Remove</th>
    
   <% 
       int x=50;
       try {
          // out.println(dbcon.getUserAllRow(11));
              String row[] =dbcon.getAllRow("SELECT DISTINCT * FROM userdetails").split("~");
              
   String col[];
   for (int idx = 0; idx < row.length; idx++) {
       
    col=row[idx].split("/");
    //out.println(col[0]);
    out.println("<tr><td>"+col[1]+"</td><td>"+col[2]+"</td><td>"+col[3]+"</td><td>"+col[5]+"</td><td>"+col[4]+"</td><td>"+col[6]+"</td><td>"+col[7]+"</td><td>"+col[8]+"</td><td>"+col[9]+"</td><td>"+col[10]+"</td><td>");
       if(!col[0].trim().equals("AdmInCarReNT2019") ) {
           
           out.print("<a href='deleteUser?id= "+col[0] +"'><button class=\"button remove\" >Remove</button></a> </td> </tr>"); 
       }   
           
        
    
    
    
 
       } 
           } catch (Exception e) {
             out.print(e);
           }
  
   
           
           
        
   
   
   %> 



</table>
</div> <!-- home -->


<div id="Booking">
	<h2>Booking Details</h2>
	<br>
	<table class="table">
  <tr>
      <th>User</th>
      <th>Start Date</th>
      <th>End Date</th>
      <th>Pick Time</th>
    <th>Package</th>
    <th>Vehicle Catogory</th>
    <th>No Vehicles</th>
     <th>Book Date</th>
      <th>Status</th>
      <th>Confirm</th>
      <th>Delete</th>
  </tr>
  <% 
      
       try {
              String vrow[] =dbcon.getAllRow("SELECT * FROM booking b,userdetails u where b.userid = u.id ").split("~");
       // out.println(vrow[1]);
   String vcol[];

            for (int idx = 0; idx < vrow.length; idx++) {
       
    vcol=vrow[idx].split("/");
   //out.println(col.length);
    out.println("<tr><td>"+vcol[11]+" "+vcol[12]+"</td><td>"+vcol[2]+"</td><td>"+vcol[3]+"</td><td>"+vcol[4]+"</td><td>"+vcol[5]+"</td><td>"+vcol[6]+"</td><td>"+vcol[7]+"</td><td>"+vcol[8]+"</td><td>"+vcol[9]+"</td><td>");
     
           if(!vcol[9].equals("confirm")){
           out.print("<a href='changeBooking?do=update&id= "+vcol[0] +"'><button class=\"button remove\" style=\"background-color: green;\">Confirm</button></a> </td><td> "); 
           }else{
                    out.print("</td><td> "); 
           }
            out.print("<a href='changeBooking?do=delete&id= "+vcol[0] +"'><button class=\"button remove\"style=\"background-color: red;\" >Delete</button></a> </td> </tr>"); 
        
    
    
    
 
       }  
     
 
           } catch (Exception e) {
               out.print(e);
           }
  
   
           
           
        
   
   
   %> 
   <h1  >
</table>
</div> <!-- home -->





<div id="Message">
	<h2>Message</h2>
	<br>
	<table class="table">
  <tr>
      <th>Name</th>
    <th>E mail</th>
    <th>Phone</th>
    <th>Message</th>
     <th>Date</th>
     <th>Reply</th>
     <th>Action</th>
     <th>Delete</th>
      
  </tr>
  <% 
 
       try {
            String vrow[] =dbcon.getAllRow("SELECT * FROM `message`").split("~");
           if(vrow[0]==""){
                out.println("Now New Message");
           }else{
             
         //  out.println(vrow[1]);
   String vcol[];

            for (int idx = 0; idx < vrow.length; idx++) {
       
    vcol=vrow[idx].split("/");
   //out.println(col.length);
    out.println("<tr><td>"+vcol[1]+"</td><td>"+vcol[2]+"</td><td>"+vcol[3]+"</td><td>"+vcol[4]+"</td><td>"+vcol[5]+"</td><td>"+vcol[6]+"</td><td>");
     
           if(vcol[6].equals("no")){
           out.print("<a href='mail.jsp?id= "+vcol[0] +"'><button class=\"button remove\" style=\"background-color: green;\">Reply</button></a> </td>");
           
           out.print("<td><a href='MessageDelete?id= "+vcol[0] +"'><button class=\"button remove\" style=\"background-color: red;\">Delete</button></a> </td>");
           }else{
                    out.print("</td><td> "); 
           }
           
        
    
    
    
            }
       }  
     
 
           } catch (Exception e) {
               out.print(e);
           }
  
   
           
           
        
  
   
   %> 

</table>
</div>














<script>
// Example starter JavaScript for disabling form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Fetch all the forms we want to apply custom Bootstrap validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
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

