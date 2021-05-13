/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets.admin;

import Backend.Doctor;
import Backend.Encrypt;
import Backend.Nurse;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Backend.UserType;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author thisa
 */
public class AddEmp extends HttpServlet {
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
           request.setAttribute("types",(HashMap<Integer, String>) UserType.getTypes());
           RequestDispatcher view = request.getRequestDispatcher("/admin/AddEmp.jsp");      
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
        ArrayList el = new ArrayList();
        response.setContentType("text/html");
        //PrintWriter out = response.getWriter();
        
        String name = request.getParameter("name");
        String spec = request.getParameter("spec");
        String psw = request.getParameter("psw");
        String username = request.getParameter("uname");
        String mobile1 = request.getParameter("mobile");
        String address = request.getParameter("address");
        String email = request.getParameter("address");
        String usertype1 = request.getParameter("type");
        String dep1 = request.getParameter("dep");
        String fee1 = request.getParameter("fee");
        
        float fee = 0;
        int dep = 0;
        int usertype = 0;
        int mobile = 0;
        
        if ((mobile1 == null) || (mobile1.equals(""))) {
            el.add("Provide mobile number...");
        } else {
            try {
                mobile = Integer.parseInt(mobile1);
            } catch (NumberFormatException nfe) {
                el.add("Invalid mobile number");
            }
        }
        
        if ((usertype1 == null) || (usertype1.equals("")) ) {
            el.add("Provide valid type...");
        } else {
            try {
                usertype = Integer.parseInt(usertype1);
                if(usertype<1 && usertype>6)
                    el.add("Invalid type");
            } catch (NumberFormatException nfe) {
                el.add("Invalid type");
            }
        }
        if(usertype==4){
        if ((dep1 == null) || (dep1.equals(""))) {
            el.add("Provide valid department...");
        } else {
            try {
                dep = Integer.parseInt(dep1);
                if(dep<1 && dep>3)
                    el.add("Invalid department");
            } catch (NumberFormatException nfe) {
                el.add("Invalid department");
            }
        }
        }
        
        if(usertype==5){
        if ((dep1 == null) || (dep1.equals(""))) {
            el.add("Provide valid department...");
        } else {
            try {
                dep = Integer.parseInt(dep1);
                if(dep<1 && dep>3)
                    el.add("Invalid department");
            } catch (NumberFormatException nfe) {
                el.add("Invalid department");
            }
        }
        
        if ((fee1 == null) || (fee1.equals(""))) {
            el.add("Provide a fee...");
        } else {
            try {
                fee = Float.parseFloat(fee1);
            } catch (NumberFormatException nfe) {
                el.add("Invalid fee");
            }
        }
        
        if ((spec == null) || (spec.equals(""))) {
            el.add("Provide a password...");
        }
        }
        
  
        if ((name == null) || (name.equals(""))) {
            el.add("Provide a name...");
        }
        
        if ((psw == null) || (psw.equals(""))) {
            el.add("Provide a password...");
        }
        
        
        if ((username == null) || (username.equals(""))) {
            el.add("Provide an username...");
        }
        
        if ((address == null) || (address.equals(""))) {
            el.add("Provide a address...");
        }
        
        if ((email == null) || (email.equals(""))) {
            el.add("Provide an email...");
        }
        
        
        
        if (!el.isEmpty()) {
            request.setAttribute("error",(ArrayList) el);
            request.setAttribute("types",(HashMap<Integer, String>) UserType.getTypes());
            RequestDispatcher view = request.getRequestDispatcher("/admin/AddEmp.jsp");      
            view.include(request, response);
            this.destroy();
        }
        else{
            try {
                Backend.Employee emp = new Backend.Employee();
                emp.setAddress(address);
                emp.setEmail(email);
                emp.setMobile(String.valueOf(mobile));
                emp.setName(name);
                emp.setPassword(Encrypt.MD5(username+psw));
                emp.setUser_type(usertype);
                emp.setUsername(username);
                
                
                if(emp.Register())
                {
                    if(emp.getUser_type()==5)
                    {
                        Doctor doc =  new Doctor();
                        doc.setId(emp.getId());
                        doc.setDep(dep);
                        doc.setSpec(spec);
                        doc.setFee(fee);
                        doc.Register();
                    }
                    if(emp.getUser_type()==4)
                    {
                        Nurse nu = new Nurse();
                        nu.setId(emp.getId());
                        nu.setDep(dep);
                        nu.Register();
                    }
                    response.sendRedirect("/Hospital-mng-sys/admin/AddEmp");
                    this.destroy();
                }
                else{
                    el.add("Something went wrong with registration. Try Again.");
                    request.setAttribute("error",(ArrayList) el);
                    RequestDispatcher view = request.getRequestDispatcher("/admin/AddEmp.jsp");
                    view.include(request, response);
                    this.destroy();
                }
                processRequest(request, response);
            } catch (SQLException ex) {
                Logger.getLogger(AddEmp.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
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
