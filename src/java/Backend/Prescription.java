/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Backend;

import static Backend.Login.con;
import Model.DbConn;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.sql.Types;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.simple.JSONObject;

/**
 *
 * @author thisa
 */
public class Prescription {

    /**
     * @return the time
     */
    public Timestamp getTime() {
        return time;
    }

    /**
     * @param time the time to set
     */
    public void setTime(Timestamp time) {
        this.time = time;
    }

    /**
     * @return the instruct
     */
    public String getInstruct() {
        return instruct;
    }

    /**
     * @param instruct the instruct to set
     */
    public void setInstruct(String instruct) {
        this.instruct = instruct;
    }
    private int id,app_id,drug_1,qty_1,drug_2,qty_2,drug_3,qty_3 = 0;
    private Timestamp time;
    private String instruct = "";
    DbConn db = new DbConn();
    static Connection con = DbConn.CreateConn();
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
     * @return the drug_1
     */
    public int getDrug_1() {
        return drug_1;
    }

    /**
     * @param drug_1 the drug_1 to set
     */
    public void setDrug_1(int drug_1) {
        this.drug_1 = drug_1;
    }

    /**
     * @return the qty_1
     */
    public int getQty_1() {
        return qty_1;
    }

    /**
     * @param qty_1 the qty_1 to set
     */
    public void setQty_1(int qty_1) {
        this.qty_1 = qty_1;
    }

    /**
     * @return the drug_2
     */
    public int getDrug_2() {
        return drug_2;
    }

    /**
     * @param drug_2 the drug_2 to set
     */
    public void setDrug_2(int drug_2) {
        this.drug_2 = drug_2;
    }

    /**
     * @return the qty_2
     */
    public int getQty_2() {
        return qty_2;
    }

    /**
     * @param qty_2 the qty_2 to set
     */
    public void setQty_2(int qty_2) {
        this.qty_2 = qty_2;
    }

    /**
     * @return the drug_3
     */
    public int getDrug_3() {
        return drug_3;
    }

    /**
     * @param drug_3 the drug_3 to set
     */
    public void setDrug_3(int drug_3) {
        this.drug_3 = drug_3;
    }

    /**
     * @return the qty_3
     */
    public int getQty_3() {
        return qty_3;
    }

    /**
     * @param qty_3 the qty_3 to set
     */
    public void setQty_3(int qty_3) {
        this.qty_3 = qty_3;
    }
    
    public boolean Add()
    {
        try {
            PreparedStatement st = con.prepareStatement("INSERT INTO `prescription`(`app_id`, `instruct`, `drug_1`, `qty_1`, `drug_2`, `qty_2`, `drug_3`, `qty_3`, `status`) VALUES (?,?,?,?,?,?,?,?,0)");
            st.setInt(1, this.getApp_id());
            st.setString(2, this.getInstruct());
            
            if(this.getDrug_1()>0)
                st.setInt(3, this.getDrug_1());
            else
                st.setNull(3, Types.NULL);
            st.setInt(4, this.getQty_1());
            
            if(this.getDrug_2()>0)
                st.setInt(5, this.getDrug_2());
            else
                st.setNull(5, Types.NULL);
            st.setInt(6, this.getQty_2());
            
            if(this.getDrug_3()>0)
                st.setInt(7, this.getDrug_3());
            else
                st.setNull(7, Types.NULL);
            st.setInt(8, this.getQty_3());

            
            return st.executeUpdate()>0;
            
        } catch (SQLException ex) {
            Logger.getLogger(Prescription.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public String getInfo()
    {
        String ret="";
        JSONObject obj = new JSONObject();
        try (PreparedStatement st = con.prepareStatement("SELECT instruct,(SELECT drug.price*qty_1 FROM drug WHERE drug.id=drug_1) AS price_1,(SELECT drug.price*qty_2 FROM drug WHERE drug.id=drug_2) AS price_2,(SELECT drug.price*qty_3 FROM drug WHERE drug.id=drug_3) AS price_3,(SELECT drug.name FROM drug WHERE drug.id=drug_1) AS drug_1,qty_1,(SELECT drug.name FROM drug WHERE drug.id=drug_2) AS drug_2,qty_2,(SELECT drug.name FROM drug WHERE drug.id=drug_3) AS drug_3,qty_3,status,prescription.id FROM prescription,drug WHERE drug.id=drug_1  AND prescription.app_id=?")) {
                st.setInt(1, this.getApp_id());
                ResultSet rs = st.executeQuery();

                while(rs.next()){
                    obj.put("msg", rs.getString("instruct"));
                    obj.put("drug_1", rs.getString("drug_1"));
                    obj.put("qty_1", rs.getString("qty_1"));
                    obj.put("drug_2", rs.getString("drug_2"));
                    obj.put("qty_2", rs.getString("qty_2"));
                    obj.put("drug_3", rs.getString("drug_3"));
                    obj.put("qty_3", rs.getString("qty_3"));
                    obj.put("price_1", rs.getString("price_1"));
                    obj.put("price_2", rs.getString("price_2"));
                    obj.put("price_3", rs.getString("price_3"));
                    obj.put("status", rs.getString("status"));
                    obj.put("id", rs.getString("id"));
                }
                st.close();
                ret=obj.toString();
            }
        catch (SQLException ex) {
            EventLog.Write("getInfo() process failed.");
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ret;
    }
    
    public HashMap<String, String> getPayInfo()
    {   HashMap<String, String> ret = new HashMap<>();
        try {
                
            try (PreparedStatement st = con.prepareStatement("SELECT patient.address,patient.id FROM patient,appointment,prescription WHERE prescription.app_id=appointment.id AND appointment.Pid=patient.id AND prescription.id = ?")) {
                st.setInt(1, this.getId());
                ResultSet rs = st.executeQuery();
                int i = 0;
                while(rs.next()){
                    ret.put("pid", rs.getString("id"));
                    ret.put("address", rs.getString("address"));
                }
                st.close();
            }
        } catch (SQLException ex) {
            EventLog.Write("getPayInfo() process failed.");
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ret;
    }
    
    public HashMap<Integer, String[]> getPhyInfo()
    {   HashMap<Integer, String[]> ret = new HashMap<>();
        try {
                
            try (PreparedStatement st = con.prepareStatement("SELECT appointment.id,patient.name,DATE_FORMAT(appointment.app_time, '%Y/%m/%d') AS app_time,emp.name AS dname,TIMESTAMPDIFF(YEAR, patient.bdate, CURDATE()) AS age FROM appointment,emp,patient,payment,prescription WHERE prescription.app_id=appointment.id AND prescription.id=payment.pres_id AND appointment.Pid=patient.id AND appointment.empid=emp.id AND prescription.status=1 order by appointment.app_time DESC")) {
                System.out.println(st.toString());
                ResultSet rs = st.executeQuery();
                String[] obj;
                int i = 0;
                while(rs.next()){
                    obj = new String[5];
                    obj[0]=rs.getString("id");
                    obj[1]=rs.getString("name");
                    obj[2]=rs.getString("app_time");
                    obj[3]=rs.getString("dname");
                    obj[4]=rs.getString("age");
                    ret.put(i++, obj);
                    obj=null;
                }
                st.close();
            }
        } catch (SQLException ex) {
            EventLog.Write("getApps() process failed.");
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ret;
    }
    
    public boolean setStatus(int status,int id)
    {
        boolean ret=false;
        try {
                        
                PreparedStatement st = con.prepareStatement("UPDATE prescription SET status=? WHERE id=?");
                st.setInt(1, status);
                st.setInt(2, id);
                
                ret = st.executeUpdate()>0;

                st.close();
                
                return ret;
 
         
        } catch (SQLException ex) {
            System.out.println(ex);
            EventLog.Write("Set status process failed.");
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
    }
    
}
