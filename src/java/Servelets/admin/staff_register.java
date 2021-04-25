/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets.admin;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author thisa
 */
public class staff_register extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
  
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
        try (PrintWriter out = response.getWriter()) {
        if(request.getParameter("id")!=null && Integer.valueOf(request.getParameter("id"))==4)
        {
               HashMap<Integer, String> Deps = Backend.Department.getDeps();
               out.println("<label class=\"text-uppercase c-gray-light\" for=\"dep\">Department:</label>\n"+"<select id=\"dep\" class=\"form-control\" name=\"dep\" >");
               for (Integer id: Deps.keySet()) {
                    out.print("<option value=\""+id.toString()+"\">"+Deps.get(id)+"</option>");
                    }
               out.println("</select>");
        }
        if(request.getParameter("id")!=null && Integer.valueOf(request.getParameter("id"))==5)
        {
               HashMap<Integer, String> Deps = Backend.Department.getDeps();
               out.println("<label class=\"text-uppercase c-gray-light\" for=\"dep\">Department:</label>\n"+"<select class=\"form-control\" id=\"dep\"  name=\"dep\" >");
               for (Integer id: Deps.keySet()) {
                    out.print("<option value=\""+id.toString()+"\">"+Deps.get(id)+"</option>");
                    }
               out.println("</select><br>");
               out.println("<label class=\"text-uppercase c-gray-light\" for=\"mobile\">Channel Fee:</label>\n" +
"            <input type=\"number\" class=\"form-control input-lg\" step=\".01\" id=\"fee\" name=\"fee\">");
               out.println("<label class=\"text-uppercase c-gray-light\" for=\"spec\">Speciality:</label>\n" +
"            <input type=\"text\" class=\"form-control input-lg\" id=\"spec\" name=\"spec\">");
        }

        if(!request.getParameter("user").replaceAll("\\s", "").isEmpty())
        {
               Backend.Login login = new Backend.Login();
               login.setUsername(request.getParameter("user"));
            try {
                if(login.ChkUname())
                {out.print("1");}
                else
                { out.print("0");}
                } catch (SQLException ex) {
                Logger.getLogger(staff_register.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
        out.print("0");
        }
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
