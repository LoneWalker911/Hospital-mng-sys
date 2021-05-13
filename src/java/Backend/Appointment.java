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
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.simple.JSONObject;

/**
 *
 * @author thisa
 */
public class Appointment {

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

    private int id;
    private int empid=0;
    private int Pid;
    private Timestamp created_time;
    private Timestamp time;
    private String description="";
    private String img_1="";
    private String img_2="";
    private String img_3="";
    private String img_4="";
    private String img_5="";
    private int type=0;
    
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
                PreparedStatement st = con.prepareStatement("INSERT INTO appointment(app_time,empid,Pid,description,img_1,img_2,img_3,img_4,img_5,type,status) VALUES (?,?,?,?,?,?,?,?,?,?,0)", Statement.RETURN_GENERATED_KEYS);
                st.setTimestamp(1, this.getTime());
                if(this.getEmpid()!=0)
                    st.setInt(2, this.getEmpid());
                else
                    st.setNull(2, java.sql.Types.INTEGER);
                st.setInt(3, this.getPid());
                st.setString(4, this.getDescription());
                st.setString(5, this.getImg_1());
                st.setString(6, this.getImg_2());
                st.setString(7, this.getImg_3());
                st.setString(8, this.getImg_4());
                st.setString(9, this.getImg_5());
                st.setInt(10, this.getType());
              
                System.out.println(st.toString());
                ret = st.executeUpdate();
                ResultSet rs = st.getGeneratedKeys();
            
                if(rs.next()){
                    this.setId(rs.getInt(1));
                }
                st.close();
                EventLog.Write("Appointment made. user"+this.getPid());     
            }
         
        } catch (SQLException ex) {
            System.out.println(ex);
            EventLog.Write("Appointment creation process failed.");
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
            return 0;
        }
        return ret;
    }
    
    public boolean setStatus(int status,int id)
    {
        boolean ret=false;
        try {
                        
            if(isFree())
            {
                PreparedStatement st = con.prepareStatement("UPDATE appointment SET status=? WHERE id=?");
                st.setInt(1, status);
                st.setInt(2, id);
                
                ret = st.executeUpdate()>0;

                st.close();
                
                return ret;
            }
         
        } catch (SQLException ex) {
            System.out.println(ex);
            EventLog.Write("Set status process failed.");
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
            return false;
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
    
    public HashMap<Integer, String[]> getApps()
    {   HashMap<Integer, String[]> ret = new HashMap<>();
        try {
                
            try (PreparedStatement st = con.prepareStatement("y")) {
                st.setInt(1, this.getPid());

                ResultSet rs = st.executeQuery();
                String[] obj;
                int i = 0;
                while(rs.next()){
                    obj = new String[5];
                    obj[0]=rs.getString("app_time");
                    obj[1]=rs.getString("name");
                    obj[2]=rs.getString("dep_name");
                    obj[3]=rs.getString("status");
                    obj[4]=rs.getString("id");
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
    
    public HashMap<Integer, String[]> getRecepApps()
    {   HashMap<Integer, String[]> ret = new HashMap<>();
        try {
                
            try (PreparedStatement st = con.prepareStatement("select appointment.id ,patient.name,appointment.status from appointment,patient WHERE appointment.Pid=patient.id AND (appointment.status=1 OR appointment.status=2)")) {
      

                ResultSet rs = st.executeQuery();
                String[] obj;
                int i = 0;
                while(rs.next()){
                    obj = new String[3];
                    obj[0]=rs.getString("id");
                    obj[1]=rs.getString("name");
                    obj[2]=rs.getString("status");
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
    
    public HashMap<Integer, String[]> getdApps()
    {   HashMap<Integer, String[]> ret = new HashMap<>();
        try {
                
            try (PreparedStatement st = con.prepareStatement("SELECT appointment.id,DATE_FORMAT(appointment.app_time, '%Y/%m/%d %r') AS app_time, patient.name AS name, TIMESTAMPDIFF(YEAR, bdate, CURDATE()) AS age FROM patient,appointment WHERE appointment.Pid=patient.id AND appointment.type=2 AND appointment.status=1 AND appointment.app_time > NOW()  ORDER BY appointment.app_time ASC ")) {
                ResultSet rs = st.executeQuery();
                String[] obj;
                int i = 0;
                while(rs.next()){
                    obj = new String[5];
                    obj[0]=rs.getString("app_time");
                    obj[1]=rs.getString("name");
                    obj[2]=rs.getString("age");
                    obj[3]=rs.getString("id");
                    ret.put(i++, obj);
                    obj=null;
                }
                st.close();
            }
        } catch (SQLException ex) {
            EventLog.Write("getdApps() process failed.");
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ret;
    }
    
    public HashMap<Integer, String[]> geteApps()
    {   HashMap<Integer, String[]> ret = new HashMap<>();
        try {
                
            try (PreparedStatement st = con.prepareStatement("SELECT appointment.id,patient.name FROM appointment,patient WHERE appointment.Pid=patient.id AND empid=? AND date(app_time)=CURDATE() AND status=1 ORDER BY appointment.created_time ASC;")) {
                st.setInt(1, this.getEmpid());
                System.out.println(st.toString());
                ResultSet rs = st.executeQuery();
                String[] obj;
                int i = 0;
                while(rs.next()){
                    obj = new String[2];
                    obj[0]=rs.getString("id");
                    obj[1]=rs.getString("name");
                    ret.put(i++, obj);
                    obj=null;
                }
                st.close();
            }
        } catch (SQLException ex) {
            EventLog.Write("geteApps() process failed.");
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ret;
    }
    
    public HashMap<String, String> getPayInfo()
    {   HashMap<String, String> ret = new HashMap<>();
        try {
                
            try (PreparedStatement st = con.prepareStatement("SELECT appointment.Pid, appointment.id, appointment.created_time AS cretime, DATE_FORMAT(appointment.app_time, '%Y/%m/%d %r') AS app_time, DATE_FORMAT(appointment.app_time, '%Y/%m/%d') AS atime, (SELECT name FROM emp WHERE id=appointment.empid) AS emp, appointment.empid AS empb, (SELECT COUNT(id) FROM appointment WHERE appointment.empid=empb AND DATE_FORMAT(appointment.app_time, '%Y/%m/%d') = atime AND appointment.created_time < cretime)+1 AS no FROM appointment WHERE appointment.id=?")) {
                st.setInt(1, this.getId());
                ResultSet rs = st.executeQuery();
                int i = 0;
                while(rs.next()){
                    ret.put("pid", rs.getString("Pid"));
                    ret.put("appid", rs.getString("id"));
                    ret.put("time", rs.getString("app_time"));
                    ret.put("emp", rs.getString("emp"));
                    ret.put("no", rs.getString("no"));
                }
                st.close();
            }
        } catch (SQLException ex) {
            EventLog.Write("getPayInfo() process failed.");
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ret;
    }
    
    public String getInfo()
    {
        String ret="";
        JSONObject obj = new JSONObject();
        try (PreparedStatement st = con.prepareStatement("SELECT patient.id AS pid,appointment.id,DATE_FORMAT(appointment.app_time, '%Y/%m/%d') AS app_time,patient.name AS patient,emp.name,department.name AS dept,payment.amount,appointment.status FROM emp,doctor,appointment,department,payment,patient WHERE appointment.Pid=patient.id AND doctor.empid=emp.id AND doctor.dept_no=department.id AND appointment.empid=doctor.empid AND appointment.id=payment.app_id AND appointment.id=?")) {
                st.setInt(1, this.getId());
                ResultSet rs = st.executeQuery();

                while(rs.next()){
                    obj.put("id", rs.getString("id"));
                    obj.put("app_time", rs.getString("app_time"));
                    obj.put("name", rs.getString("patient"));
                    obj.put("docname", rs.getString("name"));
                    obj.put("dept", rs.getString("dept"));
                    obj.put("amount", rs.getString("amount"));
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
    
    public String getappInfo()
    {
        String ret="";
        Boolean update=false;
        JSONObject obj = new JSONObject();
        try (PreparedStatement st = con.prepareStatement("SELECT appointment.id,DATE_FORMAT(appointment.app_time, '%Y/%m/%d') AS app_date,DATE_FORMAT(appointment.app_time, '%r') AS app_time,patient.name AS patient,  TIMESTAMPDIFF(YEAR, patient.bdate, CURDATE()) AS age, appointment.description AS msg, img_1,img_2,img_3,img_4 FROM appointment,patient WHERE appointment.Pid=patient.id AND status=1 AND appointment.id=?")) {
                st.setInt(1, this.getId());
                ResultSet rs = st.executeQuery();

                while(rs.next()){
                    obj.put("id", rs.getString("id"));
                    obj.put("app_date", rs.getString("app_date"));
                    obj.put("app_time", rs.getString("app_time"));
                    obj.put("name", rs.getString("patient"));
                    obj.put("age", rs.getString("age")+" yrs");
                    obj.put("msg", rs.getString("msg"));
                    obj.put("img_1", rs.getString("img_1"));
                    obj.put("img_2", rs.getString("img_2"));
                    obj.put("img_3", rs.getString("img_3"));
                    obj.put("img_4", rs.getString("img_4"));
                    update=true;
                }
                st.close();
                ret=obj.toString();
            }
        catch (SQLException ex) {
            EventLog.Write("getInfo() process failed.");
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(update)
            this.setStatus(2, this.getId());
        return ret;
    }
    
    public String getcInfo()
    {
        String ret="";
        Boolean update=false;
        JSONObject obj = new JSONObject();
        try (PreparedStatement st = con.prepareStatement("SELECT appointment.id,DATE_FORMAT(appointment.app_time, '%Y/%m/%d') AS app_date,patient.name AS patient, appointment.empid AS empb, DATE_FORMAT(appointment.app_time, '%Y/%m/%d') AS atime, appointment.created_time AS cretime, TIMESTAMPDIFF(YEAR, patient.bdate, CURDATE()) AS age ,(SELECT COUNT(id) FROM appointment WHERE appointment.empid=empb AND DATE_FORMAT(appointment.app_time, '%Y/%m/%d') = atime AND appointment.created_time < cretime)+1 AS no FROM appointment,patient WHERE appointment.Pid=patient.id AND status=1 AND appointment.id=?")) {
                st.setInt(1, this.getId());
                ResultSet rs = st.executeQuery();

                while(rs.next()){
                    obj.put("id", rs.getString("id"));
                    obj.put("app_date", rs.getString("app_date"));
                    obj.put("name", rs.getString("patient"));
                    obj.put("age", rs.getString("age")+" yrs");
                    obj.put("no", rs.getString("no"));
                    update=true;
                }
                st.close();
                ret=obj.toString();
            }
        catch (SQLException ex) {
            EventLog.Write("getInfo() process failed.");
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        if(update)
            this.setStatus(2, this.getId());
        return ret;
    }
    
}
