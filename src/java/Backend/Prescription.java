/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Backend;

import static Backend.Login.con;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.sql.Types;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author thisa
 */
public class Prescription {

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
     * @return the instruct
     */
    public String getInstruct() {
        return instruct;
    }

    /**
     * @param instruct the instruct to set
     */
    public void setInstruct(String instruct) {
        this.instruct = instruct;
    }
    private int id,app_id,drug_1,qty_1,drug_2,qty_2,drug_3,qty_3 = 0;
    private Timestamp time;
    private String instruct = "";
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
     * @return the app_id
     */
    public int getApp_id() {
        return app_id;
    }

    /**
     * @param app_id the app_id to set
     */
    public void setApp_id(int app_id) {
        this.app_id = app_id;
    }

    /**
     * @return the drug_1
     */
    public int getDrug_1() {
        return drug_1;
    }

    /**
     * @param drug_1 the drug_1 to set
     */
    public void setDrug_1(int drug_1) {
        this.drug_1 = drug_1;
    }

    /**
     * @return the qty_1
     */
    public int getQty_1() {
        return qty_1;
    }

    /**
     * @param qty_1 the qty_1 to set
     */
    public void setQty_1(int qty_1) {
        this.qty_1 = qty_1;
    }

    /**
     * @return the drug_2
     */
    public int getDrug_2() {
        return drug_2;
    }

    /**
     * @param drug_2 the drug_2 to set
     */
    public void setDrug_2(int drug_2) {
        this.drug_2 = drug_2;
    }

    /**
     * @return the qty_2
     */
    public int getQty_2() {
        return qty_2;
    }

    /**
     * @param qty_2 the qty_2 to set
     */
    public void setQty_2(int qty_2) {
        this.qty_2 = qty_2;
    }

    /**
     * @return the drug_3
     */
    public int getDrug_3() {
        return drug_3;
    }

    /**
     * @param drug_3 the drug_3 to set
     */
    public void setDrug_3(int drug_3) {
        this.drug_3 = drug_3;
    }

    /**
     * @return the qty_3
     */
    public int getQty_3() {
        return qty_3;
    }

    /**
     * @param qty_3 the qty_3 to set
     */
    public void setQty_3(int qty_3) {
        this.qty_3 = qty_3;
    }
    
    public boolean Add()
    {
        try {
            PreparedStatement st = con.prepareStatement("INSERT INTO `prescription`(`app_id`, `instruct`, `drug_1`, `qty_1`, `drug_2`, `qty_2`, `drug_3`, `qty_3`) VALUES (?,?,?,?,?,?,?,?)");
            st.setInt(1, this.getApp_id());
            st.setString(2, this.getInstruct());
            
            if(this.getDrug_1()>0)
                st.setInt(3, this.getDrug_1());
            else
                st.setNull(3, Types.NULL);
            st.setInt(4, this.getQty_1());
            
            if(this.getDrug_2()>0)
                st.setInt(5, this.getDrug_2());
            else
                st.setNull(5, Types.NULL);
            st.setInt(6, this.getQty_2());
            
            if(this.getDrug_3()>0)
                st.setInt(7, this.getDrug_3());
            else
                st.setNull(7, Types.NULL);
            st.setInt(8, this.getQty_3());

            
            return st.executeUpdate()>0;
            
        } catch (SQLException ex) {
            Logger.getLogger(Prescription.class.getName()).log(Level.SEVERE, null, ex);
        }
        return false;
    }
}
