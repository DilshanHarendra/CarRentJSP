
<%@page import="com.User"%>
<%@page import="com.Dbconnect"%>
<%@page import="java.lang.String"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%!
Dbconnect info = new Dbconnect();

User updateuser= new User();


%>



<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="ie=edge">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat">


<link rel="icon" href="images/icon.jpg">
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet" href="css/userDetails.css">
<title>User Details</title>
<style>
    body{
        background-color: activecaption;
        background-image: url(images/harry-riley-web-background-bigger-profile-nickname-images-113212.jpg);
		background-position: top;
		background-repeat: no-repeat;
			background-size:  100% 150%; 
		
    }
    table{
        color: white;
    }
    label{
        color: black;
    }
</style>

	
      
</head>

<%
    String uid=session.getAttribute("ID").toString().trim();
    String query="SELECT * FROM `userdetails` WHERE id='"+uid+"'";
    String userdata= info.DbgetOneRow(query);
    //out.print(data);
    String userdetails[]=userdata.split("/");
	String fname =userdetails[1];
        String lname =userdetails[2];
        String email = userdetails[3];
        String dlicense = userdetails[4];
        String nic = userdetails[5];
	String address = userdetails[6];
        String city = userdetails[7];
	String phone = userdetails[8];
	String uname = userdetails[9];
	String password = userdetails[10];
        


 



	
%>

<%
    try {
            if (request.getParameter("submit").equals("submit")) {
          updateuser.setId(session.getAttribute("ID").toString())  ;
          updateuser.setAddress(request.getParameter("address"));
          updateuser.setMail(request.getParameter("email"));
          updateuser.setCity(request.getParameter("city"));
          updateuser.setPhone(request.getParameter("phone"));
          String updatemess=updateuser.updateDb();
      out.print(updatemess);
                if (updatemess.equals("Success")) {
                        response.sendRedirect("userProfile.jsp");
                    }
    }
        } catch (Exception e) {
                 // out.print(""+e);
        }




%>



<body>
	<jsp:include page="commanpages/header.jsp"  />
	<div class="jumbotron text-center">
		<h1>-My Profile-</h1>
	</div>
	<div>
		
			<div class="container">
				<div class="row">
					<div class="col-sm-12">
						<table class="table">
                                                    <tr>
								<td>
                                                                <div class="button-open"  >
		<button class="open-button" onclick="openForm()" >
			<b >Update Details</b>
		</button>

                                                            <div class="form-popup" id="myForm" >
                      <form action="userProfile.jsp" method="post"  class="form-container" onsubmit="return checkpass()" >
				<h1 style="color: black;">Update</h1>

				<label for="email"><b>Email</b></label> 
                                <input type="text" placeholder="Enter Email" maxlength="100"name="email" value="<%= email %>">
                                <label for="email"><b>Address</b></label>
                                <input type="text" placeholder="Enter Address" maxlength="200" name="address" value="<%= address %>">
                                <label for="email"><b>City</b></label> 
                                <input type="text" placeholder="Enter Email" maxlength="100" name="city" value="<%= city %>">
				<label for="email"><b>Phone no</b></label> 
                                <input type="text" placeholder="Enter Phone no"maxlength="13" name="phone" value="<%= phone %>">
                                
                                <label for="psw"><b>Password</b></label>
                                <input type="password" placeholder="Enter Password" id="opass" name="opss">

                                <button type="submit" class="btn" name="submit" value="submit">Save</button>
				<button type="button" class="btn cancel" onclick="closeForm()">Close</button>
			</form>
		</div>
	</div>
                                                                
                                                                
                                                                
                                                                
                                                                </td>
                                                                <td>
                                                                    <div class="button-open"  >
		<button class="open-button" onclick="openFormPassword()" >
			<b>Reset Password</b>
		</button>

                                                            <div class="form-popup" id="resetpass" >
    <form action="ResetUserPassword" method="post" name="resetpass" class="form-container" onsubmit="" >
        <h1 style="color: black;">Chanege Password</h1>
<label for="psw"><b>New Password</b></label>
<input type="password" placeholder="Enter Password" id="npss1" name="npss1" required=""
       <label for="psw" style="color: black;"><b>Re-enter New Password</b></label>
<input type="password" placeholder="Enter Password" id="npss2" name="npss2" required="">
				
                                
<label for="psw" ><b >Old Password</b></label>
                                <input type="password" placeholder="Enter Password" id="opss1" name="opss1" required="">

                                <button type="submit" class="btn" name="submit" value="reset">Reset Password</button>
				<button type="button" class="btn cancel" onclick="closeFormPassword()">Close</button>
			</form>
		</div>
	</div>
                                                                    
                                                                    
                                                                </td>
							</tr>
                                                    
                                                    
                                                    
							<tr>
								<td>First Name</td>
								<td><%=fname %></td>
							</tr>
                                                        <tr>
								<td>Last Name</td>
								<td><%=lname %></td>
							</tr>
                                                        <tr>
								<td>Email</td>
								<td><%=email %></td>
							</tr>
                                                         <tr>
								<td>Driving License </td>
								<td><%=dlicense %></td>
							</tr>
                                                         <tr>
								<td>NIC</td>
								<td><%=nic %></td>
							</tr>
                                                        
							<tr>
								<td>Address</td>
								<td><%=address %></td>
							</tr>
                                                         <tr>
								<td>City</td>
								<td><%=city %></td>
							</tr>
							<tr>
								<td>Phone No</td>
								<td><%=phone %></td>
							</tr>
							 <tr>
								<td>Username</td>
								<td><%=uname %></td>
							</tr>
							
							
						</table>
					</div>
				</div>
			</div>
		
	</div>


                                                        
                              
                
	
	<br>
	<div class="container">
		<div class="row">
			<div class="col-sm-12">
				<table class="table table-striped">
					<tbody>
                                        <h3 style="color: white;">Booking Details</h3>
						<tr>
							
							<th>Start Date</th>
							<th>End Date</th>
                                                        <th>Pickup Time</th>
                                                        <th>Package</th>
                                                       
							
							<th>Vehicle Catogory</th>
							
							<th>No Of Vehicels</th>
							<th>Order place Date</th>
                                                        <th>Status</th>
                                                        <th>Delete</th>
						</tr>
                                                <% 
      
       try {
              String query1="SELECT * FROM `booking` WHERE userid='"+uid+"'";
    String bookdata[]= info.getAllRow(query1).split("~");
   

   String vcol[];

            for (int idx = 0; idx < bookdata.length; idx++) {
       
    vcol=bookdata[idx].split("/");
   //out.println(col.length);
    out.println("<tr><td>"+vcol[2]+"</td><td>"+vcol[3]+"</td><td>"+vcol[4]+"</td><td>"+vcol[5]+"</td><td>"+vcol[6]+"</td><td>"+vcol[7]+"</td><td>"+vcol[8]+"</td><td>"+vcol[9]+"</td>");
     
           if(vcol[9].equals("Pending")){
        out.print("<td><a href='booking?confirm=delete&id= "+vcol[0] +"'><button class=\"button remove\"style=\"background-color: red;\" >Delete</button></a> </td> "); 
           }else{
           out.print("<td></td>");
            }
          out.print("</tr>"); 
        
    
    
    
 
       }  
     
 
           } catch (Exception e) {
               out.print(e);
           }
  
   
           
           
        
   
   
   %> 
                                                
                                                
                                                
						<tr>
							
							<td></td>
							
						</tr>

					</tbody>
				</table>
			</div>
		</div>
	</div>

	<script>
        function openForm() {
            closeFormPassword();
            document.getElementById("myForm").style.display = "block";
        }

        function closeForm() {
            document.getElementById("myForm").style.display = "none";
        }
      
        function openFormPassword() {
            closeForm();
            document.getElementById("resetpass").style.display = "block";
        }

        function closeFormPassword() {
            document.getElementById("resetpass").style.display = "none";
        }
       

        
        
        
        
    </script>
    <script>
    
          function checkpass(){
            var pass=document.getElementById("opass").value;
            var enterpass="<%= password %>";
            if(pass != enterpass){
                
                alert("Old Password Incorect");
                return false;
        }
    }
    
        function  changepass(){
           
            var newa = document.forms["resetpass"]["opass1"].value;
            var newb = document.forms["resetpass"]["npss1"].value;
            var newc = document.forms["resetpass"]["npss2"].value;
            document.write(5);
           
            var oldpass="<%= password %>";
             
            if (b=="") {
                alert("Enter new Password");
                return false;
            }else if (c=="") {
                alert("Re-Enter new Password");
                return false;
            }else if (a=="") {
                alert("Enter old Password");
                return false;
            }else if (b != c) {
                 alert("New Passwords are not maching");
                return false;
            }else  if(a != oldpass){
                alert("Old Password Incorect");
                return false;
        }
    }
    
    
    
    
    </script>
 
   <jsp:include page="commanpages/footer.jsp"  />	
</body>
</html>
