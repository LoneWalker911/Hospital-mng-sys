/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Backend;

/**
 *
 * @author thisa
 */
public class PageCookieChk {

    /**
     * @return the string
     */
    public String getString() {
        return string;
    }

    /**
     * @param string the string to set
     */
    public void setString(String string) {
        this.string = string;
    }

    /**
     * @return the user_type
     */
    public int getUser_type() {
        return user_type;
    }

    /**
     * @param user_type the user_type to set
     */
    public void setUser_type(int user_type) {
        this.user_type = user_type;
    }
    public PageCookieChk(String rndm)
    {
        
    }
    
    private String string;
    private int user_type;
}
