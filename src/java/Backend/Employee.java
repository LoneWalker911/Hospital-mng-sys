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

/**
 *
 * @author thisa
 */
public class Employee {

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
    
    private int id;
    private int user_type;
    private String name;
    private String mobile;
    private String address;
    private String email;
    private String status;
    private String password;
    private String username;
    private Date reg_date;
    
    public boolean Register() throws SQLException
    {
            int success = 1;
            PreparedStatement st = con.prepareStatement("INSERT INTO `emp`(`name`, `mobile`, `address`, `email`) VALUES (?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
            st.setString(1, this.getName());
            st.setString(2, this.getMobile());
            st.setString(3, this.getAddress());
            st.setString(4, this.getEmail());
            
            
            success = st.executeUpdate();
            ResultSet rs = st.getGeneratedKeys();
            
            if(rs.next()){
                this.setId(rs.getInt(1));
            }
            st.close();
            if(success > 0)
            {
                Backend.Login login = new Backend.Login();
                login.setUser_id(String.valueOf(this.getId()));
                login.setUser_type_id(this.getUser_type());
                login.setUsername(this.getUsername());
                login.setPassword(this.getPassword());
                
                
                return login.createLogin();
            }
            return false;
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
     * @return the status
     */
    public String getStatus() {
        return status;
    }

    /**
     * @param status the status to set
     */
    public void setStatus(String status) {
        this.status = status;
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
     * @param user_type the user_type to set
     */
    public void setUser_type(int user_type) {
        this.user_type = user_type;
    }

}
