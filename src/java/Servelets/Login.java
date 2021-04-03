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
    Backend.Login login = new Backend.Login();
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {           
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
        login.setUsername(request.getParameter("username"));
        login.setPassword(Encrypt.MD5(login.getUsername()+request.getParameter("psw")));
        if(request.getParameter("rem")!=null)
            login.setRem(true);
        else
            login.setRem(false);
        System.out.println(login.isRem());
        String nextJSP = "/index.jsp";
        String error="";
        login.Login();
        int id = login.getUser_type_id();
        
        switch(id){
            case 0:error="Invalid credentials";response.sendRedirect(request.getContextPath()+"/index.jsp");break;
            case 1:nextJSP = "/home.jsp"; break; //Receptionist HOME
            case 2:nextJSP = "/home.jsp"; break;//Patient HOME
            case 3:nextJSP = "/home.jsp"; break;//Pharmacy HOME
            case 4:nextJSP = "/home.jsp"; break;//Nurse HOME
            case 5:nextJSP = "/home.jsp"; break;//Doctor HOME
            case 6:nextJSP = "/home.jsp"; break;//Admin HOME
            default: error="Something went WRONG!!!";
        }
        request.setAttribute("error",error);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(nextJSP);
        dispatcher.forward(request,response);
        processRequest(request, response);
        this.destroy();
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
