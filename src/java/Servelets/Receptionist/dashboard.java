/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets.Receptionist;

import Backend.Appointment;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author thisa
 */
public class dashboard extends HttpServlet {

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
            Appointment app = new Appointment();
            HashMap<Integer, String[]> info = app.getRecepApps();
            if(!info.isEmpty()){
   
               for (Integer id: info.keySet()) {
                   out.print("<th scope=\"row\">");
                   out.print(info.get(id)[0]);
                   out.print("</th><td>");
                   out.print(info.get(id)[1]);
                   out.print("</td>");
                   if(info.get(id)[2].equals("1"))
                       out.print("<td><button class=\"btn btn-warning btn-sm\"  name=\"cancel\">Waiting</button></td>");
                   if(info.get(id)[2].equals("2"))
                       out.print("<td><button class=\"btn btn-success btn-sm\"  name=\"cancel\">Calling</button></td>");
                   out.print("<td><button class=\"btn btn-danger btn-sm\" onclick=\"delete("+info.get(id)[0]+");\" name=\"cancel\"><i class=\"fa fa-trash-o\"/>Delete</button><td>");
                   out.print("</tr>");
                   
            
                    }
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
