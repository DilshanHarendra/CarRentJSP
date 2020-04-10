<%-- 
    Document   : logout
    Created on : Apr 29, 2019, 11:02:00 PM
    Author     : Dilshan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    try {
            if(session.getAttribute("ID").toString().equals("")) {
         response.sendRedirect("login.jsp");   
        }else{
         session.invalidate();    
            }
        } catch (Exception e) {
          response.sendRedirect("login.jsp");   
            out.print(e);
        }
            
    
        

//
%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout</title>
        <style>
            body{
                background-image: url(images/logoutbg.jpeg);
                background-repeat: no-repeat;
                background-size: 100% 100%;
            }   
            .empty{
                height: 150px;
            }
        </style>
    </head>
    <body>
          <jsp:include page="commanpages/header.jsp"  />
        <br>  <br>  
    <center><h1 style="color: white;">Good Bye!</h1>
       <br>  <br>  
       <a href="index.jsp" ><button class="btn btn-primary" style="width: 130px;">Back to Home</button></a>
    <a href="login.jsp" ><button class="btn btn-primary" style="width: 130px;">Login</button></a>
    </center>
    <div class="empty"></div>
    
      <jsp:include page="commanpages/footer.jsp"  />
    </body>
</html>
