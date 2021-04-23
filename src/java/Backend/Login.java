/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Backend;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import Model.DbConn;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.Random;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author thisa
 */
public class Login {

    /**
     * @return the rem
     */
    public boolean isRem() {
        return rem;
    }

    /**
     * @param rem the rem to set
     */
    public void setRem(boolean rem) {
        this.rem = rem;
    }
    
    private int id,user_type_id;
    private String username,password,user_id,loginstring,exptime="";
    private boolean rem;
    private Date reg_date;
    DbConn db = new DbConn();
    static Connection con = DbConn.CreateConn();

    public Login() {
        this.user_type_id = 0;
        this.rem = false;
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
     * @return the user_type_id
     */
    public int getUser_type_id() {
        return user_type_id;
    }

    /**
     * @param user_type_id the user_type_id to set
     */
    public void setUser_type_id(int user_type_id) {
        this.user_type_id = user_type_id;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the user_id
     */
    public String getUser_id() {
        return user_id;
    }

    /**
     * @param user_id the user_id to set
     */
    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    /**
     * @return the loginstring
     */
    public String getLoginstring() {
        return loginstring;
    }

    /**
     * @param loginstring the loginstring to set
     */
    public void setLoginstring(String loginstring) {
        this.loginstring = loginstring;
    }

    /**
     * @return the exptime
     */
    public String getExptime() {
        return exptime;
    }

    /**
     * @param exptime the exptime to set
     */
    public void setExptime(String exptime) {
        this.exptime = exptime;
    }

    /**
     * @return the reg_date
     */
    public Date getReg_date() {
        return reg_date;
    }

    /**
     * @param reg_date the reg_date to set
     */
    public void setReg_date(Date reg_date) {
        this.reg_date = reg_date;
    }
    
    public void Login()
    {
         
        try {
            boolean alreadyHave=false;
            PreparedStatement st = con.prepareStatement("SELECT user_type.id FROM login,user_type WHERE login.username=? AND login.password=? AND login.user_type_id = user_type.id");
            st.setString(1, this.getUsername());
            st.setString(2, this.getPassword());
            
            ResultSet rs = st.executeQuery();
            
            while(rs.next()){
            this.setUser_type_id(rs.getInt("id"));
            }
            st.close();
            
            if(getUser_type_id() > 0)
            {
                do{
                    int leftLimit = 97; // letter 'a'
                    int rightLimit = 122; // letter 'z'
                    int targetStringLength = 30;
                    Random random = new Random();
                    StringBuilder buffer = new StringBuilder(targetStringLength);
                    for (int i = 0; i < targetStringLength; i++) {
                        int randomLimitedInt = leftLimit + (int) 
                          (random.nextFloat() * (rightLimit - leftLimit + 1));
                        buffer.append((char) randomLimitedInt);
                    }
                    this.setLoginstring(buffer.toString());
                
                st = con.prepareStatement("SELECT 1 FROM login WHERE login.loginstring=?");
                st.setString(1, this.getLoginstring());
            
                rs = st.executeQuery();
                alreadyHave=rs.next();
                st.close();
                }while(alreadyHave);
                
                if(rem)
                    this.setExptime(String.valueOf((System.currentTimeMillis() / 1000L) + 86400));
                else
                    this.setExptime(String.valueOf((System.currentTimeMillis() / 1000L) + 60 * 15));
                
                st = con.prepareStatement("UPDATE login SET loginstring=?, exptime=? WHERE username=?");
                st.setString(1, this.getLoginstring());
                st.setString(2, this.getExptime());
                st.setString(3, this.getUsername());
                
                st.executeUpdate();
                EventLog.Write("User: "+this.getUsername()+" successfully logged in.");
            }
    
            
                 
        } catch (SQLException ex) {
            EventLog.Write("User: "+this.getUsername()+" login process failed.");
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public boolean createLogin() throws SQLException
    {
            PreparedStatement st = con.prepareStatement("INSERT INTO `login`(`username`, `password`, `user_type_id`, `user_id`) VALUES (?,?,?,?)");
            st.setString(1, this.getUsername());
            st.setString(2, this.getPassword());
            st.setInt(3, this.getUser_type_id());
            st.setString(4, this.getUser_id());
            
            return st.executeUpdate() > 0;
    }
    
    public boolean ChkCookie() throws SQLException
    {
            PreparedStatement st = con.prepareStatement("SELECT 1 FROM login WHERE login.loginstring=? AND login.exptime > ?");
            st.setString(1, this.getLoginstring());
            st.setString(2, String.valueOf(System.currentTimeMillis() / 1000L));
            
            ResultSet rs = st.executeQuery();
            boolean ret = rs.next();
            st.close();
            
            return ret; 
    }
    
    public boolean ChkUname() throws SQLException
    {
            boolean ret = false;
            PreparedStatement st = con.prepareStatement("SELECT 1 FROM login WHERE login.username=? ");
            st.setString(1, this.getUsername());
            
            ResultSet rs = st.executeQuery();
            ret = rs.next();
            st.close();
            
            return ret; 
    }
}
