/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servelets.Patient;

import Backend.Login;
import java.io.*;
import java.util.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Backend.Appointment;
import Backend.Department;
import Backend.Patient;
import Backend.Payment;
import java.sql.Timestamp;
import java.util.HashMap;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author thisa
 */
public class eApp extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    
    private boolean isMultipart;
    private String filePath;
    private int maxFileSize = 50 * 1024 * 1024;
    private int maxMemSize = 4 * 1024;
    private File file ;
    
    public void init( ){
      // Get the file location where it would be stored.
      //filePath = getServletContext().getInitParameter("file-upload"); 
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
           
           if(request.getParameter("time")!=null && request.getParameter("doc")!=null)
           {
               try{
              Backend.Appointment app = new Backend.Appointment();
              app.setTime(Timestamp.valueOf(request.getParameter("time")+":00"));
              app.setEmpid(Integer.parseInt(request.getParameter("doc")));

               if(app.isFree())
               {out.print("1");}
               else
               { out.print("0");}
               }catch(Exception ex)
               {
                   System.out.println(ex);
               }
               
           }
           if(request.getParameter("dep")!=null && Integer.valueOf(request.getParameter("dep"))!=0)
       {
              Department dep = new Department();
              dep.setId(Integer.valueOf(request.getParameter("dep")));
              HashMap<Integer, String> Docs = dep.getDocs();
              out.println("<select id=\"doc\" class=\"form-control\" name=\"doctor_id\">");
              out.println("<option value=\"0\">Select a Doctor</option>");
              for (Integer id: Docs.keySet()) {
                   out.print("<option value=\""+id.toString()+"\">"+Docs.get(id)+"</option>");
                   }
              out.println("</select>");
       }
           if(request.getParameter("isPaid")!=null)
           {
               Backend.Payment pay = new Backend.Payment();
               pay.setApp_id(Integer.parseInt(request.getParameter("isPaid")));
               if(pay.isPaid())
                   out.print("1");
               else
                   out.print("0");
           }
           if(request.getParameter("dep")==null&&request.getParameter("time")==null&&request.getParameter("isPaid")==null){
        
        response.setContentType("text/html;charset=UTF-8");

            /* TODO output your page here. You may use following sample code. */
            Login login = new Login();
            if(request.getParameter("usr")==null){
            Cookie[] cookies = null;
            Cookie usr = null;
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
            }}
            else
            {
                    login.setLoginstring(request.getParameter("usr"));
                    login.getTypenID();
            }
            if(login.getUser_type_id()!=2 && login.getUser_type_id()!=6) //change this after development is complete
                response.sendRedirect("/Hospital-mng-sys/Login");
            else{
                Appointment app = new Appointment();
                Patient pt = new Patient();
                pt.setId(Integer.parseInt(login.getUser_id()));
                pt.getData();              
                HashMap<Integer, String> Deps = Backend.Department.getDeps();
                
                request.setAttribute("Name",pt.getName());
                request.setAttribute("Mobile",pt.getMobile());
                request.setAttribute("NextId",String.valueOf(app.nextId()));
                request.setAttribute("Deps", Deps);
                RequestDispatcher view = request.getRequestDispatcher("/patient/eApp/eApp.jsp");
                view.include(request, response);
            }
        }}
          
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
        Cookie[] cookies = null;
           String usr = null;
           cookies = request.getCookies();
           if( cookies != null ) {
           for(int i = 0; i < cookies.length; i++)
           {
               if(cookies[i].getName().equals("usr"))
               {
                   usr=cookies[i].getValue();
               }
           }
           }

       isMultipart = ServletFileUpload.isMultipartContent(request);
       ArrayList el = new ArrayList();
       Appointment app = new Appointment();
       String rndmfilename=null;
       String timestamp=null;
       String doc=null;
       String msg=null;
       String type="0";
       response.setContentType("text/html");
       java.io.PrintWriter out = response.getWriter( );

       DiskFileItemFactory factory = new DiskFileItemFactory();

       // maximum size that will be stored in memory
       factory.setSizeThreshold(maxMemSize);

       // Location to save data that is larger than maxMemSize.
       factory.setRepository(new File("c:\\temp"));

       // Create a new file upload handler
       ServletFileUpload upload = new ServletFileUpload(factory);

       // maximum file size to be uploaded.
       upload.setSizeMax( maxFileSize );

       try {
          // Parse the request to get file items.
          List fileItems = upload.parseRequest(request);

          // Process the uploaded file items
          Iterator i = fileItems.iterator();
          while ( i.hasNext () ) {
           FileItem fi = (FileItem)i.next();
           if ( !fi.isFormField () ) {
              // Get the uploaded file parameters
              int index = 1;
              String fileName = fi.getName();
              if(fileName.isEmpty()) continue;
              boolean contentType = fi.getContentType().contains("image");
              if(!contentType) {
                  el.add("Image "+index+" is invalid.");
                  continue;
              }
              if(fi.getSize()>5*1024*1024)
              {
                  el.add("Image " + index + " is too large in size. 5MB is the size limit.");
                  continue;
              }
              String extention=fileName.substring(fileName.lastIndexOf("."));

              // Write the file
              do{
                   int leftLimit = 97; // letter 'a'
                   int rightLimit = 122; // letter 'z'
                   int targetStringLength = 10;
                   Random random = new Random();
                   StringBuilder buffer = new StringBuilder(targetStringLength);
                   for (int idx = 0; idx < targetStringLength; idx++) {
                       int randomLimitedInt = leftLimit + (int)
                         (random.nextFloat() * (rightLimit - leftLimit + 1));
                       buffer.append((char) randomLimitedInt);
                   }
                   rndmfilename=buffer.toString()+extention;
                   
                   file = new File("C:\\Users\\thisa\\Documents\\NetBeansProjects\\Hospital-mng-sys\\web\\patient\\uploads\\"+  rndmfilename) ;

               }while(file.exists() && !file.isDirectory());

              fi.write(file);
              app.putImg("/Hospital-mng-sys/patient/uploads/"+rndmfilename, index++);
           }
           else
           {
               System.out.println(fi.getFieldName());
               if (fi.getFieldName().equals("timestamp")) {
                   timestamp=fi.getString();
               }
               if (fi.getFieldName().equals("doctor_id")) {
                   doc=fi.getString();
               }
               if (fi.getFieldName().equals("message")) {
                   msg=fi.getString();
               }
               if (fi.getFieldName().equals("type")) {
                   type=fi.getString();
                   System.out.println(type);
               }
           }
       }

        if ( type.equals("0") || type.equals("")) {
         el.add("Select a Type first.");
        } else {
            try {
                app.setType(Integer.parseInt(type));
                app.setEmpid(12);
            } catch (NumberFormatException nfe) {
                System.out.println(nfe);
                el.add("Invalid Type.");
            }
       }
          
       if ((type.equals("3")) &&  (doc==null || doc.equals(""))) {
           el.add("Select a Doctor.");
       } else if((type!=null && type.equals("3"))) {
           try {
               app.setEmpid(Integer.parseInt(doc));
           } catch (NumberFormatException nfe) {
               System.out.println(nfe);
               el.add("Invalid Doctor ID");
           }
       }
       
       
       

       if ((type.equals("2")) && ((msg == null) || msg.equals(""))) {
           el.add("Provide a brief message for the doctor.");
       }
       
           System.out.println(timestamp);
       if ((timestamp == null) || (timestamp.equals(""))) {
           el.add("Enter the time and date you want the doctor to connect with you");
       } else {
           try {
               if((type.equals("3")))
                app.setTime(Timestamp.valueOf(timestamp+" 12:00:00"));
               else
                   app.setTime(Timestamp.valueOf(timestamp+":00"));
           } catch (Exception ex) {
               System.out.println(ex);
               el.add("Invalid Date and Time.");
           }
       }
       

       if (!el.isEmpty())
       {
           request.setAttribute("error",(ArrayList) el);
           doGet(request, response);
       }
       else
       {
            try{
             Login login = new Login();
             login.setLoginstring(usr);
             login.getTypenID();
             app.setPid(Integer.valueOf(login.getUser_id()));
             app.setDescription(msg);
             
             if(app.Add()>0){
                 Payment pay = new Payment();
                 pay.setType(app.getType());
                 pay.setApp_id(app.getId());
                 if(pay.Calculate()>0.00){
                   if(app.getType()==2)
                    response.sendRedirect("https://carparknsbm.000webhostapp.com?order_id="+ app.getId() +"&amount="+ pay.Calculate()+"&type=1");
                   if(app.getType()==3)
                    response.sendRedirect("https://carparknsbm.000webhostapp.com?order_id="+ app.getId() +"&amount="+ pay.Calculate()+"&type=2");
                 }
                   else
                 {
                    el.add("Process failed. Contact admin.");
                    request.setAttribute("error",(ArrayList) el);
                    doGet(request, response); 
                 }
                 this.destroy();
             }
             else
             {
                el.add("Process failed. Contact admin.");
                request.setAttribute("error",(ArrayList) el);
                doGet(request, response); 
             }
            }catch(Exception ex)
            {
                System.out.println(ex);
                el.add("Process failed. Contact admin.");
                request.setAttribute("error",(ArrayList) el);
                doGet(request, response);
            }
       }

       } catch(Exception ex) {
             System.out.println(ex);
             el.add("Something went wrong..!");
             request.setAttribute("error",(ArrayList) el);
             doGet(request,response);
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
