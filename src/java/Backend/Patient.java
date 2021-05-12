/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Backend;

import static Backend.Login.con;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author thisa
 */
public class Patient {

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
     * @return the name
     */
    public String getName() {
        return name;
    }

    /**
     * @param name the name to set
     */
    public void setName(String name) {
        this.name = name;
    }

    /**
     * @return the mobile
     */
    public String getMobile() {
        return mobile;
    }

    /**
     * @param mobile the mobile to set
     */
    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    /**
     * @return the address
     */
    public String getAddress() {
        return address;
    }

    /**
     * @param address the address to set
     */
    public void setAddress(String address) {
        this.address = address;
    }

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
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
    
    private int id=0;
    private final int user_type = 2;
    private String name="";
    private String mobile="";
    private String address="";
    private String email="";
    private String password="";
    private Date reg_date=null;
    private Date bdate=null;
    
    public boolean Register() throws SQLException
    {
            int success = 1;
            PreparedStatement st = con.prepareStatement("INSERT INTO `patient`(`name`, `mobile`, `address`, `email`, `bdate`) VALUES (?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
            st.setString(1, this.getName());
            st.setString(2, this.getMobile());
            st.setString(3, this.getAddress());
            st.setString(4, this.getEmail());
            st.setDate(5, this.getBdate());
            
            success = st.executeUpdate();
            ResultSet rs = st.getGeneratedKeys();
            
            if(rs.next()){
                this.setId(rs.getInt(1));
            }
            
            if(success > 0)
            {
                Backend.Login login = new Backend.Login();
                login.setUser_id(String.valueOf(this.getId()));
                login.setUser_type_id(this.getUser_type());
                login.setUsername(this.getMobile());
                login.setPassword(this.getPassword());
                
                if(login.createLogin())
                    return true;
                return false;
            }
            return false;
    }
    
    public void getData()
    {
        try (PreparedStatement st = con.prepareStatement("SELECT name,mobile,address,email,reg_date FROM patient WHERE id=? ")) {
            st.setInt(1, this.getId());
            
            ResultSet rs = st.executeQuery();
            
            if(rs.next()){
                this.setName(rs.getString("name"));
                this.setMobile(rs.getString("mobile"));
                this.setAddress(rs.getString("address"));
                this.setEmail(rs.getString("email"));
                this.setReg_date(rs.getDate("reg_date"));
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
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
     * @return the user_type
     */
    public int getUser_type() {
        return user_type;
    }

    /**
     * @return the bdate
     */
    public Date getBdate() {
        return bdate;
    }

    /**
     * @param bdate the bdate to set
     */
    public void setBdate(Date bdate) {
        this.bdate = bdate;
    }

}
