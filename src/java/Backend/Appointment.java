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
import java.sql.Statement;
import java.sql.Time;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author thisa
 */
public class Appointment {

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
     * @return the empid
     */
    public int getEmpid() {
        return empid;
    }

    /**
     * @param empid the empid to set
     */
    public void setEmpid(int empid) {
        this.empid = empid;
    }

    /**
     * @return the Pid
     */
    public int getPid() {
        return Pid;
    }

    /**
     * @param Pid the Pid to set
     */
    public void setPid(int Pid) {
        this.Pid = Pid;
    }

    /**
     * @return the created_time
     */
    public Timestamp getCreated_time() {
        return created_time;
    }

    /**
     * @param created_time the created_time to set
     */
    public void setCreated_time(Timestamp created_time) {
        this.created_time = created_time;
    }

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
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the img_1
     */
    public String getImg_1() {
        return img_1;
    }

    /**
     * @param img_1 the img_1 to set
     */
    public void setImg_1(String img_1) {
        this.img_1 = img_1;
    }

    /**
     * @return the img_2
     */
    public String getImg_2() {
        return img_2;
    }

    /**
     * @param img_2 the img_2 to set
     */
    public void setImg_2(String img_2) {
        this.img_2 = img_2;
    }

    /**
     * @return the img_3
     */
    public String getImg_3() {
        return img_3;
    }

    /**
     * @param img_3 the img_3 to set
     */
    public void setImg_3(String img_3) {
        this.img_3 = img_3;
    }

    /**
     * @return the img_4
     */
    public String getImg_4() {
        return img_4;
    }

    /**
     * @param img_4 the img_4 to set
     */
    public void setImg_4(String img_4) {
        this.img_4 = img_4;
    }

    /**
     * @return the img_5
     */
    public String getImg_5() {
        return img_5;
    }

    /**
     * @param img_5 the img_5 to set
     */
    public void setImg_5(String img_5) {
        this.img_5 = img_5;
    }

    /**
     * @return the virtual
     */
    public int getVirtual() {
        return virtual;
    }

    /**
     * @param virtual the virtual to set
     */
    public void setVirtual(int virtual) {
        this.virtual = virtual;
    }
    private int id;
    private int empid;
    private int Pid;
    private Timestamp created_time;
    private Timestamp time;
    private String description;
    private String img_1="";
    private String img_2="";
    private String img_3="";
    private String img_4="";
    private String img_5="";
    private int virtual;
    
    DbConn db = new DbConn();
    static Connection con = DbConn.CreateConn();
    
    public void putImg(String img,int place)
    {
        switch(place){
            case 1:this.setImg_1(img);break;
            case 2:this.setImg_2(img);break;
            case 3:this.setImg_3(img);break;
            case 4:this.setImg_4(img);break;
            case 5:this.setImg_5(img);break;
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
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ret; 
    }
    
    public int Add()
    {
        int ret=0;
        try {
                        
            if(isFree())
            {
                PreparedStatement st = con.prepareStatement("INSERT INTO appointment(app_time,empid,Pid,description,img_1,img_2,img_3,img_4,img_5,`virtual`) VALUES (?,?,?,?,?,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
                st.setTimestamp(1, this.getTime());
                st.setInt(2, this.getEmpid());
                st.setInt(3, this.getPid());
                st.setString(4, this.getDescription());
                st.setString(5, this.getImg_1());
                st.setString(6, this.getImg_2());
                st.setString(7, this.getImg_3());
                st.setString(8, this.getImg_4());
                st.setString(9, this.getImg_5());
                st.setInt(10, this.getVirtual());
              
              
                ret = st.executeUpdate();
                ResultSet rs = st.getGeneratedKeys();
            
                if(rs.next()){
                    this.setId(rs.getInt(1));
                }
                st.close();
                EventLog.Write("Appointment made. user"+this.getPid());     
            }
         
        } catch (SQLException ex) {
            EventLog.Write("Appointment creation process failed.");
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        }
        return ret;
    }
    
    public boolean isFree()
    {
        boolean ret=false;
        try {
            PreparedStatement st = con.prepareStatement("SELECT 1 FROM appointment WHERE appointment.empid=? AND appointment.app_time BETWEEN TIMESTAMPADD(MINUTE,-14,?) AND TIMESTAMPADD(MINUTE,14,?)");
            st.setInt(1, this.getEmpid());
            st.setTimestamp(2, this.getTime());
            st.setTimestamp(3, this.getTime());
            
            ResultSet rs = st.executeQuery();
            ret=rs.next();
            st.close();
        } catch (SQLException ex) {
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        return !ret;
    }
    
}
