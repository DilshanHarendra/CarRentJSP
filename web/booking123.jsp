<%-- 
    Document   : booking
    Created on : Apr 29, 2019, 10:44:11 PM
    Author     : Dilshan
--%>
<%@page import="com.Booking"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%! 
    Date dnow = new Date();
    SimpleDateFormat ft = new SimpleDateFormat("E");
     SimpleDateFormat ye = new SimpleDateFormat("yyyy");
   Booking booking = new Booking();
    
    %>
    
    <%
        
     int month=dnow.getMonth();
   




    String vpackage,catogory="",getmonth,getdate,setNewDate,message,year;
    year=ye.format(dnow) ;
   message="";
   try{
       if (request.getParameter("submit").equals("submit")) {
        
        vpackage=request.getParameter("package").trim();
        catogory=request.getParameter("catogory").trim() ;
        getdate=request.getParameter("dat").trim();
        getmonth=request.getParameter("mont").trim();
        
       //out.print(vpackage+catogory+year+"-"+getmonth+"-"+getdate);
       booking.setCatogory(catogory);
       booking.setVpackage(vpackage);
       booking.setUid(session.getAttribute("ID").toString());
        booking.setDate(year+"-"+getmonth+"-"+getdate);
        
     message=booking.inserDb();
  // out.print(message);
 
   
    
        }
   }catch(Exception e){
     // out.println(e);
   }
    
   
    










    
    %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/booking.css"/>
        <title>Booking</title>
    </head>
    <body onLoad="cdate()">
        <jsp:include page="commanpages/header.jsp"  />
            <center>
                    
                    <%
                        if (message.equals("Success")) {
                        out.print("<h4 style=\"color: green; border:1px solid;padding: 5px; width: 75%; \" >");
                 out.print(""+message);
            }
            %>
                       
                    
                    
        </h4></center>
	<center><h1>Booking Now</h1></center>
<div class="container-fluid">
	<div class="row">
		 <div class="col-md-4 mb-3"></div>
		<div class="col-md-6 mb-4" >
		

<div class="month">      
  <ul>
    <li class="prev" style="margin-left: 10px;">&#10094;</li>
    <li class="next">&#10095;</li>
    <li style="margin-left: 100px;">
        <% 
            ;
            
            out.print(ft.format(dnow) );  %><br>
      <span style="font-size:18px;margin-left: 20px;"><% out.print(year );  %></span>
    </li>
  </ul>
</div>
<div class="weekdays">
<ul >
  <li class="weekday" id="da1" ></li>
  <li class="weekday" id="da2" ></li>
  <li class="weekday" id="da3" ></li>
  <li class="weekday" id="da4" ></li> 
  <li class="weekday" id="da5" ></li>
  <li class="weekday" id="da6" ></li>
  <li class="weekday" id="da7" ></li>
</div>
<div class="days" id="days">
<ul  >  
   <%
       int l;
   if ((month==0)||(month==2)||(month==4)||(month==7)||(month==8)||(month==9)||(month==11)) {
           l=31;
       }else if(month==1){
          l=28;
       }else{
           l=30;
       }
   

for (int i = 1; i <= l; i++) {
        out.print("<div class=\"day\"  id=\"d"+i+"\"> <li>"+i+"</li></div>");
    }

   %>
    
    
    
	
</ul>
	</div>		
			
			
		</div>
	</div>
</div>
<div class="container-fluid">
	<div class="row">
		 <div class="col-md-4 mb-3"></div>
		 
		 <div class="col-md-8 mb-3">
		 	
                     <form class="needs-validation" novalidate name="Form1" method="post">
		 	<div class="form-row">
    <div class="col-md-4 mb-3">
      <label for="validationTooltip01">Select Package</label>
      <select name="package" id="" class="form-control" id="validationTooltip01"  required>
      	<option value=""></option>
      	<option value="daily">Daily Package</option>
      	<option value="anyDay">Any Day Package</option>
      	<option value="unlimited">Unlimited Distance Package</option>
      </select>
     
      <div class="valid-tooltip">
        Ok !
      </div>
      <div class="invalid-feedback">
        Please Select Package.
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
  <div class="form-row">
    <div class="col-md-4 mb-3">
      <label for="validationTooltip01">Check in</label>
      <input type="number" class="form-control" id="dnum" max="31" min="<%out.print(dnow.getDate());  %>" placeholder="Date"  required onClick="showdate()" name="dat" ><br>
      <input type="number" class="form-control" id="dnum" max="12" min="<%out.print(dnow.getMonth()+1);  %>" placeholder="Month"  required onClick="showdate()" name="mont" >
   
      <div class="valid-tooltip">
        Ok !
      </div>
       <div class="invalid-feedback">
        Please Enter Valid Month And Date
      </div>
    </div>
      </div>
      <br><br>
     <div class="form-group">
    <div class="form-check">
      <input class="form-check-input" type="checkbox" value="" id="invalidCheck" required onClick="showdate()">
      <label class="form-check-label" for="invalidCheck">
       <a href="agrement.jsp">Agree to terms and conditions</a> 
      </label>
      <div class="invalid-feedback">
        You must agree before submitting.
      </div>
    </div>
  </div>
   
      <button class="btn btn-primary" type="submit" name="submit" value="submit">Submit form</button>
</form>
  </div>
  </div>
     </div>
<div id ="t"></div>
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

		 	
		 	
		 	
		
		

<script>
	
	var dt=0;
	function showdate(){
		
			
	 var val = document.forms["Form1"]["dat"].value;
	
		 var val1 = document.forms["Form1"]["mont"].value-1;
		if(dt == 0){
			var a="d"+val;
				document.getElementById(a).className = "active1";
			dt=val;
		}else{
			var b="d"+dt;
				document.getElementById(b).className = "day";
			b="d"+val;
			document.getElementById(b).className = "active1";
			dt=val;
		}
		
	var days=[ "Mo","Tu","We","Th","Fr","Su","Sa"];
		var date= new Date();
		var c=0;
		//document.getElementById("t").innerHTML=days[(new Date(2019, 4)).getDay()] ;
		var x=0;
		for(var i =1;i<=7;i++ ){
			x=(new Date(date.getFullYear(), val1)).getDay()+i-2;
			var a="da"+i;
			if(x<7){
				document.getElementById(a).innerHTML=days[x];
			}else{
				document.getElementById(a).innerHTML=days[x-7];
			}
			
			
			
	
		}
		
			
	//document.getElementById(b).className = "active";
				//document.getElementById("t").innerHTML=val;
		
	}
	
	function cdate(){
		var d= new Date();
		var hd="d"+d.getDate();
		document.getElementById(hd).className = "current";
		var days=[ "Mo","Tu","We","Th","Fr","Su","Sa"];
		var date= new Date();
		var c=0;
		//document.getElementById("t").innerHTML=days[(new Date(2019, 4)).getDay()] ;
		var x=0;
		for(var i =1;i<=7;i++ ){
			x=(new Date(date.getFullYear(), date.getMonth())).getDay()+i-2;
			var a="da"+i;
			if(x<7){
				document.getElementById(a).innerHTML=days[x];
			}else{
				document.getElementById(a).innerHTML=days[x-7];
			}
			
			
			
	
		}
	}
	
	
	
		</script>
                 <jsp:include page="commanpages/footer.jsp"  />
    </body>
</html>
