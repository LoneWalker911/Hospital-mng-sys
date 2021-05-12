/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets.Patient;

import Backend.Appointment;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.json.simple.parser.ParseException;

/**
 *
 * @author thisa
 */
public class Payment extends HttpServlet {

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
            throws ServletException, IOException, ParseException {
        try (PrintWriter out = response.getWriter()) {
        out.print("Puk");}
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
            throws ServletException, IOException  {
//        if(request.getParameter("type")!=null)
//        {
//            String type=request.getParameter("type");
//            switch (type){
//                case "1":
//            }
//        }
        if(request.getParameter("order_id")!=null && request.getParameter("type")!=null)
        {
            try (PrintWriter out = response.getWriter()) {
            if(request.getParameter("type").equals("1")){
            Appointment app = new Appointment();
            app.setId(Integer.parseInt(request.getParameter("order_id")));
            request.setAttribute("info",(HashMap<String, String>) app.getPayInfo());
            RequestDispatcher view = request.getRequestDispatcher("/payment/Eappcom.jsp");
            view.include(request, response);
            }
            
            if(request.getParameter("type").equals("2")){
            Appointment app = new Appointment();
            app.setId(Integer.parseInt(request.getParameter("order_id")));
            request.setAttribute("info",(HashMap<String, String>) app.getPayInfo());
            RequestDispatcher view = request.getRequestDispatcher("/payment/channelcom.jsp");
            view.forward(request, response);
            }
            
            }
        }
        try {
            processRequest(request, response);
        } catch (ParseException ex) {
            Logger.getLogger(Payment.class.getName()).log(Level.SEVERE, null, ex);
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
        //processRequest(request, response);
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
