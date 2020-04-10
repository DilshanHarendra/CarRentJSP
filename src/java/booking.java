/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.Booking;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Dilshan
 */
@WebServlet(urlPatterns = {"/booking"})
public class booking extends HttpServlet {

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
            out.println("<title>Servlet booking</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet booking at " + request.getContextPath() + "</h1>");
            
            
             Booking booking = new Booking();
             HttpSession session = request.getSession();
            
             try {
                
        if (request.getParameter("confirm").equals("confirm")) {
                
              String sDate = request.getParameter("startDate");
	String eDate = request.getParameter("endtDate");
	String time = request.getParameter("time");
	String catogory = request.getParameter("catogory");
	String vpackage = request.getParameter("package");
	String vehicels = request.getParameter("vehicels");
	
        
        
        
        
         booking.setCatogory(catogory);
       booking.setVpackage(vpackage);
       booking.setUid(session.getAttribute("ID").toString());
       booking.setEdate(eDate);
       booking.setSdate(sDate);
       booking.setPicTime(time);
       booking.setNumVehicle(vehicels);
      // out.println(sDate+eDate+time+vpackage+vehicels+catogory);
       String mess= booking.inserDb();
                  response.sendRedirect("bookingPage.jsp?mess="+mess);
       
            } else if (request.getParameter("confirm").equals("update")) {
                
                 String sDate = request.getParameter("startDate");
	String eDate = request.getParameter("endtDate");
	String time = request.getParameter("time");
	String catogory = request.getParameter("catogory");
	String vpackage = request.getParameter("package");
	String vehicels = request.getParameter("vehicels");
               out.println(sDate+eDate+time+vpackage+vehicels+catogory);
               
                 response.sendRedirect("bookingPage.jsp?mess=up&startDate="+sDate+"&endtDate="+eDate+"&time="+
                         time+"&package="+vpackage+"&vehicels="+vehicels+"&catogory="+catogory);
           
            }else if (request.getParameter("confirm").equals("delete")){
                String id=request.getParameter("id");
            
           
             booking.setId(id);
                String r= booking.deleteDb();
                if(r.equals("Success")  )
             {
                response.sendRedirect("userProfile.jsp"); 
                 out.print("Delete");
             }
                
            }
        
        
          
        } catch (Exception e) {
          // response.sendRedirect("bookingPage.jsp?mess=er"+e);
        }
             out.println("</body>");
            out.println("</html>");
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
