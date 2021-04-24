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
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author thisa
 */
public class Nurse extends Employee {


    private int dep;
    
    @Override
    public boolean Register()
    {
        try {
            PreparedStatement st = con.prepareStatement("INSERT INTO `nurse`(`empid`, `dept_no`) VALUES (?,?)");
            st.setInt(1, this.getId());
            st.setInt(2, this.getDep());

                      
            return st.executeUpdate()>0;
            
        } catch (SQLException ex) {
            Logger.getLogger(Nurse.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }

    /**
     * @return the dep
     */
    public int getDep() {
        return dep;
    }

    /**
     * @param dep the dep to set
     */
    public void setDep(int dep) {
        this.dep = dep;
    }
}
