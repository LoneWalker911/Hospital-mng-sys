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
public class Doctor extends Employee {

    /**
     * @return the fee
     */
    public double getFee() {
        return fee;
    }

    /**
     * @param fee the fee to set
     */
    public void setFee(float fee) {
        this.fee = fee;
    }

    /**
     * @return the spec
     */
    public String getSpec() {
        return spec;
    }

    /**
     * @param spec the spec to set
     */
    public void setSpec(String spec) {
        this.spec = spec;
    }
    private double fee;
    private String spec;
    private int dep;
    
    @Override
    public boolean Register()
    {
        try {
            PreparedStatement st = con.prepareStatement("INSERT INTO `doctor`(`empid`, `spec`, `dept_no`, `channel_fee`) VALUES (?,?,?,?)");
            st.setInt(1, this.getId());
            st.setString(2, this.getSpec());
            st.setInt(3, this.getDep());
            st.setDouble(4,this.getFee());

            
            return st.executeUpdate()>0;
            
        } catch (SQLException ex) {
            Logger.getLogger(Doctor.class.getName()).log(Level.SEVERE, null, ex);
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
