/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets;

import Backend.Encrypt;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 *
 * @author thisa
 */
public class Login extends HttpServlet {

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
            /* TODO output your page here. You may use following sample code. */
           RequestDispatcher view = request.getRequestDispatcher("/login.jsp");      
           view.include(request, response);
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
        if(request.getParameter("register").equals("1"))
        {
            response.setContentType("text/html;charset=UTF-8");    
            try (PrintWriter out = response.getWriter()) {
            
                out.println("<ul class=\"info\">");
                out.println("<li>Sign in with your mobile number and password.</li>");
                out.println("</ul>");
            }
        }
        
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
        Backend.Login login = new Backend.Login();
        login.setUsername(request.getParameter("username"));
        login.setPassword(Encrypt.MD5(login.getUsername()+request.getParameter("psw")));
        if(request.getParameter("rem")!=null)
            login.setRem(true);
        else
            login.setRem(false);
        String nextJSP = "/login.jsp";
        String error="";
        login.Login();
        System.out.println(login.getUser_type_id());
        
        switch(login.getUser_type_id()){
            case 0:error="<li>Invalid credentials</li>";break;
            case 1:nextJSP = "/reception/home.jsp"; break; //Receptionist HOME
            case 2:nextJSP = "/patient/home.jsp"; break;//Patient HOME
            case 3:nextJSP = "/pharmacy/home.jsp"; break;//Pharmacy HOME
            case 4:nextJSP = "/department/home.jsp"; break;//Nurse HOME
            case 5:nextJSP = "/doctor/home.jsp"; break;//Doctor HOME
            case 6:nextJSP = "/admin/home.jsp"; break;//Admin HOME
            default: error="<li>Something went WRONG!!!</li>";
        }
        if(error!=""){
        request.setAttribute("error",error);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
        dispatcher.forward(request,response);
        this.destroy();
        }
        else {
            Cookie cookie = new Cookie("usr", login.getLoginstring());
            cookie.setComment("This cookie stores a random string to identify the user");
            if(login.isRem())
                cookie.setMaxAge( 24 * 60 * 60);
            else
                cookie.setMaxAge( 15 * 60);
          
            response.addCookie(cookie);
            response.sendRedirect(request.getContextPath() + nextJSP);
            this.destroy();
        }
        
        
        processRequest(request, response);
        
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "This handles every login function";
    }// </editor-fold>

}
