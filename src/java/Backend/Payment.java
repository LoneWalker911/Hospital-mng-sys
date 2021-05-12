/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Backend;

import Model.DbConn;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author thisa
 */
public class Payment {

    /**
     * @return the type
     */
    public int getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(int type) {
        this.type = type;
    }

    /**
     * @return the id
     */
    public int getId() {
        return id;
    }

    /**
     * @param id the id to set
     */
    public void setId(int id) {
        this.id = id;
    }

    /**
     * @return the app_id
     */
    public int getApp_id() {
        return app_id;
    }

    /**
     * @param app_id the app_id to set
     */
    public void setApp_id(int app_id) {
        this.app_id = app_id;
    }

    /**
     * @return the status_code
     */
    public int getStatus_code() {
        return status_code;
    }

    /**
     * @param status_code the status_code to set
     */
    public void setStatus_code(int status_code) {
        this.status_code = status_code;
    }

    /**
     * @return the paid_time
     */
    public Timestamp getPaid_time() {
        return paid_time;
    }

    /**
     * @param paid_time the paid_time to set
     */
    public void setPaid_time(Timestamp paid_time) {
        this.paid_time = paid_time;
    }


    /**
     * @return the pg_payment_id
     */
    public String getPg_payment_id() {
        return pg_payment_id;
    }

    /**
     * @param pg_payment_id the pg_payment_id to set
     */
    public void setPg_payment_id(String pg_payment_id) {
        this.pg_payment_id = pg_payment_id;
    }

    /**
     * @return the method
     */
    public String getMethod() {
        return method;
    }

    /**
     * @param method the method to set
     */
    public void setMethod(String method) {
        this.method = method;
    }

    /**
     * @return the pg_status_message
     */
    public String getPg_status_message() {
        return pg_status_message;
    }

    /**
     * @param pg_status_message the pg_status_message to set
     */
    public void setPg_status_message(String pg_status_message) {
        this.pg_status_message = pg_status_message;
    }

    /**
     * @return the card_holder_name
     */
    public String getCard_holder_name() {
        return card_holder_name;
    }

    /**
     * @param card_holder_name the card_holder_name to set
     */
    public void setCard_holder_name(String card_holder_name) {
        this.card_holder_name = card_holder_name;
    }

    /**
     * @return the card_no
     */
    public String getCard_no() {
        return card_no;
    }

    /**
     * @param card_no the card_no to set
     */
    public void setCard_no(String card_no) {
        this.card_no = card_no;
    }



    private int id;
    private int app_id;
    private int status_code;
    private Timestamp paid_time;
    private String pg_payment_id="";
    private String method="";
    private String pg_status_message="";
    private String card_holder_name="";
    private String card_no="";
    private double amount;
    private String card_expiry="";
    private int type=0;
    
    DbConn db = new DbConn();
    static Connection con = DbConn.CreateConn();
    
    public void putImg(String img,int place)
    {
        switch(place){
            case 1:this.setPg_payment_id(img);break;
            case 2:this.setMethod(img);break;
            case 3:this.setPg_status_message(img);break;
            case 4:this.setCard_holder_name(img);break;
            case 5:this.setCard_no(img);break;
        }
    }
    
    public int nextId()
    {
        int ret = 0;
        
        try {
            PreparedStatement st = con.prepareStatement("SELECT COUNT(id)+1 AS nxt FROM appointment");
            
            ResultSet rs = st.executeQuery();
            while(rs.next()){
            ret = (rs.getInt("nxt"));
            }
            st.close();
            
            
        } catch (SQLException ex) {
            Logger.getLogger(Payment.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ret; 
    }
    
    public double Calculate()
    {
        double ret = 0.00;
        
        try {
                if(this.getType()==3)
                {
                     PreparedStatement st = con.prepareStatement("SELECT admin_info.hospital_fee+doctor.channel_fee AS amount FROM appointment,doctor,admin_info WHERE appointment.empid=doctor.empid AND appointment.id=?");
                    st.setInt(1, this.getApp_id());

                    ResultSet rs = st.executeQuery();
                    rs.next();
                    ret = (rs.getDouble("amount"));

                    st.close();
                } 

                if(this.getType()==2)
                {
                    PreparedStatement st = con.prepareStatement("SELECT admin_info.app_fee AS amount FROM admin_info");

                    ResultSet rs = st.executeQuery();
                    rs.next();
                    ret = (rs.getDouble("amount"));

                    st.close();
                } 
            
        } catch (SQLException ex) {
            Logger.getLogger(Payment.class.getName()).log(Level.SEVERE, null, ex);
        
        }
        return ret; 
    }
    
    
    
    public boolean isPaid()
    {
        boolean ret=false;
        try {
            PreparedStatement st = con.prepareStatement("SELECT 1 FROM appointment,payment,doctor,admin_info WHERE appointment.id=payment.app_id AND appointment.empid=doctor.empid AND payment.amount=(doctor.channel_fee+admin_info.hospital_fee) AND appointment.id=?");
            st.setInt(1, this.getApp_id());
            
            ResultSet rs = st.executeQuery();
            ret=rs.next();
            st.close();
        } catch (SQLException ex) {
            Logger.getLogger(Payment.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ret;
    }
    
    public boolean Pay()
    {
        boolean ret=false;
        try {
            PreparedStatement st = con.prepareStatement("INSERT INTO payment (app_id, amount, status_code, method) VALUES (?,?,?,?)");
            st.setInt(1, this.getApp_id());
            st.setDouble(2, this.getAmount());
            st.setInt(3, this.getStatus_code());
            st.setString(4, this.getMethod());
            
            ret = st.executeUpdate()>0;
            st.close();
        } catch (SQLException ex) {
            Logger.getLogger(Payment.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ret;
    }

    /**
     * @return the amount
     */
    public double getAmount() {
        return amount;
    }

    /**
     * @param amount the amount to set
     */
    public void setAmount(double amount) {
        this.amount = amount;
    }

    /**
     * @return the card_expiry
     */
    public String getCard_expiry() {
        return card_expiry;
    }

    /**
     * @param card_expiry the card_expiry to set
     */
    public void setCard_expiry(String card_expiry) {
        this.card_expiry = card_expiry;
    }
    
}
