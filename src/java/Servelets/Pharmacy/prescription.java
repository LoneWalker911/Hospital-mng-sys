/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets.Pharmacy;

import Backend.Appointment;
import Backend.Login;
import Backend.Prescription;
import Servelets.Patient.History;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.simple.parser.ParseException;

/**
 *
 * @author thisa
 */
public class prescription extends HttpServlet {

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
        Cookie[] cookies = null;
            Cookie usr = null;
            Login login = new Login();
            cookies = request.getCookies();
            if( cookies != null ) {
            for(int i = 0; i < cookies.length; i++)
            {
                if(cookies[i].getName().equals("usr"))
                {
                    usr=cookies[i];

                    login.setLoginstring(usr.getValue());
                    login.getTypenID();
                }
            }
            }
            if(login.getUser_type_id()!=3 && login.getUser_type_id()!=6) //change this after development is complete
                response.sendRedirect("/Hospital-mng-sys/Login");
            else{
                Prescription pres = new Prescription();
                HashMap<Integer, String[]> info = pres.getPhyInfo();
                request.setAttribute("info", info);
                RequestDispatcher view = request.getRequestDispatcher("/pharmacy/pres.jsp");
                view.include(request, response);
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
       if(request.getParameter("getHistory")!=null)
        {
            try (PrintWriter out = response.getWriter()) {
            Appointment app = new Appointment();
            app.setId(Integer.parseInt( request.getParameter("getHistory")));
            out.print(app.getInfo());
            }
        }
        if(request.getParameter("getPres")!=null)
        {
            try (PrintWriter out = response.getWriter()) {
            Prescription pres = new Prescription();
            pres.setApp_id(Integer.parseInt(request.getParameter("getPres")));
            out.print(pres.getInfo());
            }
        }
        if(request.getParameter("sent")!=null)
        {
            try (PrintWriter out = response.getWriter()) {
            Prescription pres = new Prescription();
            if(pres.setStatus(2, Integer.parseInt(request.getParameter("sent"))))
                out.print("1");
            else
                out.print("0");
            }
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
