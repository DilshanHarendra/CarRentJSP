/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.Vehicle;
import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Dilshan
 */
@WebServlet(urlPatterns = {"/addvehicle"})
public class addvehicle extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet addvehicle</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet addvehicle at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            
            
            Vehicle vehicle = new Vehicle();  
        
        String vehicleNimber,chasinumber,seats,catogory1,message;
   message="";
   try{
       if (request.getParameter("submit").equals("submit")) {
        
      vehicleNimber=request.getParameter("vnum").trim();
       chasinumber=request.getParameter("cnum").trim() ;
       seats=request.getParameter("seats").trim();
       catogory1=request.getParameter("catogory").trim();
        //out.println(vehicleNimber+chasinumber+seats+catogory1);
           
      vehicle.setVehicleNimber(vehicleNimber);
       vehicle.setChasinumber(chasinumber);
      vehicle.setSeats(seats);
        vehicle.setCatogory(catogory1);
     
   message=vehicle.inserDb();
   
     response.sendRedirect("adashboard.jsp?page=AddVehicale&mess="+message);
     //out.println(message);
        }
   }catch(Exception e){
     out.println("error"+e);
   }
        }
        
        
        
    
   
        
        
        
        
        
        
        
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
