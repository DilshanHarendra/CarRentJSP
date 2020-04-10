<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Roboto">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Montserrat">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Raleway">




<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.8.1/css/all.css"
	integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf"
	crossorigin="anonymous">
<link rel="icon" href="images/icon.jpg">
<link rel="stylesheet" href="css/navbar.css">
<link rel="stylesheet" href="css/Booking.css">
<title>Booking</title>
<style>
	body{
		background-image: url(images/Website-Design-Background.jpg);
		background-position: top;
		background-repeat: no-repeat;
			background-size:  100% 100%; 
		background-color: #8000ff;
		
	}
        label{
            color: white;
        }
	
	</style>
</head>
<body>
	  <jsp:include page="commanpages/header.jsp"  />
           <center> 
         <%
             String sDate="" ,eDate="",time="",catogory="",vpackage="" ;
              int vehicels=0;
             try {
                  String message=request.getParameter("mess");
             if (message.equals("Success")) {
                      out.print("<h5 style=\"color: green; border: 1px solid; padding: 5px;\">Booking Submit Successfully");
                 }else  if (message.equals("up")){
                     
                     
                     
                       sDate = request.getParameter("startDate");
	 eDate = request.getParameter("endtDate");
	 time = request.getParameter("time");
	catogory = request.getParameter("catogory");
	 vpackage = request.getParameter("package").toString();
	 vehicels = Integer.parseInt(request.getParameter("vehicels"))  ;
         out.print(catogory+vpackage+vehicels);
                 }
             
             
             else{
                 out.print("<h5 style=\"color: red; border: 1px solid; padding: 5px;\">"+message);
             }
               
                 } catch (Exception e) {
                 }
             
         
         
         
         %>
           </h5></center>
	<div class="container">
            <h2 style="color: white;">Fill This Form</h2>
		<br>
		<form action="bookingsummery.jsp" method="POST">
			<div class="form-group">
				<label for="date">Start Date:</label> <input type="date"
                                                                             class="form-control" id="startDate" name="startDate" value="<%=sDate %>"  required>
			</div>
			<div class="form-group">
				<label for="date">End Date:</label> <input type="date"
					class="form-control" id="endtDate" name="endtDate" value="<%=eDate %>" required>
			</div>
			<div class="form-group">
				<label for="time">Pickup Time:</label> <input type="time"
					class="form-control" id="time" name="time" value="<%=time %>" required>
			</div>
			<div class="form-group">
				<label for="nights">Select Vehicle Catogory:</label>
                                
                                 <select name="catogory" id="catogory" class="form-control" id="validationTooltip01" required>
                                     <option value="<%out.print(catogory); %>"><%out.print(catogory); %></option>
      	<option value="car">Car</option>
      	<option value="van">Van</option>
      	<option value="bus">Bus</option>
      	<option value="m_bike">Moter Bike</option>
      </select>
                                
                                
                                
                                
                               
			</div>
			<div class="form-group">
				<label for="location">Select package:</label> 
                               <select name="package" id="package" class="form-control" id="validationTooltip01"  required>
                                   <option value="<% out.print(vpackage); %>"><% out.print(vpackage); %></option>
      	<option value="daily">Daily Package</option>
      	<option value="anyDay">Any Day Package</option>
      	<option value="unlimited">Unlimited Distance Package</option>
      </select>
			</div>
			<div class="form-group">
				<label for="vehicels">How many vehicels:</label> <input
					type="number" class="form-control" id="vehicels"
                                        placeholder="Select" name="vehicels" value="<% out.print( vehicels );%>" required>
			</div>
			<br>

			
				

			<!--END OF VEHICEL SELECTION-->

			<div class="btn-group-justified" id="btnGroup">
				<button type="reset" class="btn btn-outline-primary"
                                        id="reSetBtn" style="width:100px; color: white;">Cancel</button>
				<button type="submit" class="btn btn-outline-primary"
					id="saveBtn" style="width:100px; color: white;">Save</button>
			</div>
		</form>
	</div>
	</div>
	<br>
	<br>
	
	<script>
		var coll = document.getElementsByClassName("collapsible");
		var i;

		for (i = 0; i < coll.length; i++) {
			coll[i].addEventListener('click', function() {
				this.classList.toggle("active");
				var content = this.nextElementSibling;
				if (content.style.maxHeight) {
					content.style.maxHeight = null;
				} else {
					content.style.maxHeight = content.scrollHeight + "px";
				}
			});
		}
	</script>
        	  <jsp:include page="commanpages/footer.jsp"  />
</body>
</html>