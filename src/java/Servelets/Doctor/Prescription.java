/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets.Doctor;

import Backend.Appointment;
import java.io.IOException;
import java.io.PrintWriter;
import Model.DbConn;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author thisa
 */
public class Prescription extends HttpServlet {

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
        if(request.getParameter("send")!=null)
        {
            try (PrintWriter out = response.getWriter()) {
                
                Backend.Prescription pres = new Backend.Prescription();
                pres.setApp_id(Integer.parseInt(request.getParameter("app_id")));
                
                if(Integer.parseInt(request.getParameter("drug_1"))>0)
                    pres.setDrug_1(Integer.parseInt(request.getParameter("drug_1")));
                if(request.getParameter("qty_1")!="")
                    pres.setQty_1(Integer.parseInt(request.getParameter("qty_1")));
                if(Integer.parseInt(request.getParameter("drug_2"))>0)
                    pres.setDrug_2(Integer.parseInt(request.getParameter("drug_2")));
                if(request.getParameter("qty_2")!="")
                    pres.setQty_2(Integer.parseInt(request.getParameter("qty_2")));
                if(Integer.parseInt(request.getParameter("drug_3"))>0)
                    pres.setDrug_3(Integer.parseInt(request.getParameter("drug_3")));
                if(request.getParameter("qty_3")!="")
                    pres.setQty_2(Integer.parseInt(request.getParameter("qty_3")));
                pres.setInstruct(request.getParameter("msg"));
                
                if(pres.Add())
                    out.print("1");
                else
                    out.print("0");
            }
            catch(Exception ex)
            {
               
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
