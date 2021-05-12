/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Backend;

import static Backend.Login.con;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.json.simple.JSONObject;

/**
 *
 * @author thisa
 */
public class Drug {

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
     * @return the price
     */
    public float getPrice() {
        return price;
    }

    /**
     * @param price the price to set
     */
    public void setPrice(float price) {
        this.price = price;
    }
    private int id;
    private String name;
    private float price;
    
    public boolean Add()
    {
        try {
            PreparedStatement st = con.prepareStatement("INSERT INTO `drug`(`name`, `price`) VALUES (?,?)");
            st.setString(1, this.getName());
            st.setFloat(2, this.getPrice());

            
            return st.executeUpdate()>0;
            
        } catch (SQLException ex) {
            Logger.getLogger(Drug.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
    
    public HashMap<Integer, String> getDrugs()
    {
        HashMap<Integer, String> ret = new HashMap<>();
        try {
            try (PreparedStatement st = con.prepareStatement("SELECT id,name FROM drug")) {
               
                ResultSet rs = st.executeQuery();
                while(rs.next()){
                    ret.put(rs.getInt("id"), rs.getString("name"));
                }
                st.close();
            }
        } catch (SQLException ex) {
            EventLog.Write("getPayInfo() process failed.");
            Logger.getLogger(Appointment.class.getName()).log(Level.SEVERE, null, ex);
        }
        return ret;
    }
    
}
