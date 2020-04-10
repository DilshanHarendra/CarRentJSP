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
@WebServlet(urlPatterns = {"/register"})
public class register extends HttpServlet {

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
            out.println("<title>Servlet register</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet register at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
            
            User newUser = new User();
    
       
  String fname,lname,mail,address,dlicen,nic,city,uname,pass,phone,message;
   message="";
   try{
       if (request.getParameter("submit").equals("submit")) {
        
        fname=request.getParameter("fname").trim();
        lname=request.getParameter("lname").trim() ;
        address=request.getParameter("address").trim();
        dlicen=request.getParameter("dlicen").trim();
        mail=request.getParameter("mail").trim();
        nic=request.getParameter("nic").trim();
        city=request.getParameter("city").trim();
        uname=request.getParameter("uname").trim();
        pass=request.getParameter("pass").trim();
        phone= request.getParameter("phone").trim();
           
        
     newUser.setFname(fname);
     newUser.setLname(lname);
     newUser.setAddress(address);
     newUser.setCity(city);
     newUser.setMail(mail);
     newUser.setNic(nic);
     newUser.setUname(uname);
     newUser.setPass(pass);
     newUser.setDlicen(dlicen);
     newUser.setPhone(phone);
   
    message=newUser.inserDb();
    if(message.startsWith("id")){
        String x[]=message.split("id");
        
        HttpSession session = request.getSession();
        session.setAttribute("ID", x[1]);
        response.sendRedirect("index.jsp");
    }else{
              response.sendRedirect("register.jsp?mess="+message);
         }
    
    
    
    
        }
   }catch(Exception e){
       //out.println(e);
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
