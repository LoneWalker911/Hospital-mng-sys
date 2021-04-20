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
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.HashMap;

/**
 *
 * @author thisa
 */
public class Department {

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
     * @return the type
     */
    public String getType() {
        return type;
    }

    /**
     * @param type the type to set
     */
    public void setType(String type) {
        this.type = type;
    }
    private int id;
    private String type;
    DbConn db = new DbConn();
    static Connection con = DbConn.CreateConn();
    
    public static HashMap<Integer, String> getTypes()
    {
        HashMap<Integer, String> Types = new HashMap<>();
        try {
            try (PreparedStatement st = con.prepareStatement("SELECT type,id FROM user_type")) {
                ResultSet rs = st.executeQuery();
                
                while(rs.next()){
                    Types.put(rs.getInt("id"), rs.getString("type"));
                }
            }
        } catch (SQLException ex) {
            EventLog.Write("getTypes() process failed.");
            Logger.getLogger(Department.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Types;
    }
    
}
