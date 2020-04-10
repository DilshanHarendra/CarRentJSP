/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.User;
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
@WebServlet(urlPatterns = {"/deleteUser"})
public class deleteUser extends HttpServlet {

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
            out.println("<title>Servlet deleteUser</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet deleteUser at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            
            User duser = new User(); 
            
             HttpSession session=request.getSession(); 
             try {
            if(!session.getAttribute("ID").toString().equals("AdmInCarReNT2019")) {
         response.sendRedirect("index.jsp");   
        }
        } catch (Exception e) {
             response.sendRedirect("login.jsp");   
            out.print(e);
        }
         
   
     try {
             String id=request.getParameter("id");
              duser.setId(id);
             
             String r= duser.deleteDb();
             if(r.equals("Success")  )
             {
                response.sendRedirect("adashboard.jsp?mess=Success&page=User"); 
                 out.print("Delete");
             }else{
                response.sendRedirect("adashboard.jsp?mess=Error&page=User"); 
             }
         } catch (Exception e) {
             out.print(e);
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
