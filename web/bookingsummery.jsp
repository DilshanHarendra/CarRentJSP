<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
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
        table{
            color: white;
        }
	
	</style>


<title>Summery</title>
</head>
<%
    
     String sDate = request.getParameter("startDate");
	String eDate = request.getParameter("endtDate");
	String time = request.getParameter("time");
	String catogory = request.getParameter("catogory");
	String vpackage = request.getParameter("package");
	String vehicels = request.getParameter("vehicels");
	String vehiType = request.getParameter("vehiType");
	
%>
  <jsp:include page="commanpages/header.jsp"  />
<body>
	
	<div class="jumbotron text-center ">
		<h1>-YOUR BOOKING SUMMERY-</h1>
	</div>
        <form  method="post" action="booking" >
            <input type="text" name="startDate" value="<%=sDate%>" hidden=""  >
           
            <input type="text"  name="endtDate" value="<% out.print(eDate); %>" hidden="" >
            <input type="text"  name="time" value="<%=time%>" hidden=""  >
             <input type="text" name="catogory"  value="<%=catogory%>" hidden=""  >
            <input type="text" name="package"   value="<%=vpackage%>" hidden="" >
            
             <input type="text"  name="vehicels" value="<%=vehicels%>" hidden="" >
            
		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<table class="table">
						<tr>
							<td>Start Date</td>
							<td><%=sDate%></td>
						</tr>
						<tr>
							<td>End Date:</td>
							<td><%=eDate%></td>
						</tr>
						<tr>
							<td>Pickup Time</td>
							<td><%=time%></td>
						</tr>
						<tr>
							<td>Vehical Catogory</td>
							<td><%=catogory%></td>
						</tr>
						<tr>
							<td>Package</td>
							<td><%=vpackage%></td>
						</tr>
						<tr>
							<td>No Of Vehicels</td>
							<td><%=vehicels%></td>
						</tr>
						
					</table>

				</div>
			</div>
		</div>

		<div class="btn-group-justified container" id="btnGroup">
                   
			
                       
                         
   <button type="submit" class="btn btn-outline-primary"
                                id="saveBtn" name="confirm" value="confirm" style="width:100px; color: white;">Confirm</button>
		
       
                                                <button  class="btn btn-outline-primary"
                                                       id="reSetBtn" name="confirm" value="update" style="width:100px; color: white;">Change</button></div>
                                                        </form>
	<br>
	<jsp:include page="commanpages/footer.jsp"  />
	<script>
		
	</script>
</body>
</html>