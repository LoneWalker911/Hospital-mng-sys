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
    private int id;
    private String name;
    
    DbConn db = new DbConn();
    static Connection con = DbConn.CreateConn();
    
    public static HashMap<Integer, String> getDeps()
    {
        HashMap<Integer, String> Deps = new HashMap<>();
        try {
            try (PreparedStatement st = con.prepareStatement("SELECT id,name FROM department")) {
                ResultSet rs = st.executeQuery();
                
                while(rs.next()){
                    Deps.put(rs.getInt("id"), rs.getString("name"));
                }
                st.close();
            }
        } catch (SQLException ex) {
            EventLog.Write("getTypes() process failed.");
            Logger.getLogger(Department.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Deps;
    }
    
    public HashMap<Integer, String> getDocs()
    {
        HashMap<Integer, String> Docs = new HashMap<>();
        try {
            try (PreparedStatement st = con.prepareStatement("SELECT emp.name,doctor.empid FROM emp,doctor WHERE doctor.empid=emp.id AND doctor.dept_no=?")) {
                st.setInt(1, this.getId());
                ResultSet rs = st.executeQuery();
                
                while(rs.next()){
                    Docs.put(rs.getInt("empid"), rs.getString("name"));
                }
                st.close();
            }
        } catch (SQLException ex) {
            EventLog.Write("getDocs() process failed.");
            Logger.getLogger(Department.class.getName()).log(Level.SEVERE, null, ex);
        }
        return Docs;
    }
    
    
    
}
