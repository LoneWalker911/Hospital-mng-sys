/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
/**
 *
 * @author thisa
 */
public class DbConn {
    
    
    private final static String conn_string = "jdbc:mysql://sql6.freemysqlhosting.net:3306/sql6403212";
    private final static String username = "sql6403212";
    private final static String password = "1GQFJqC9LI";
    
public static Connection CreateConn() 
{  
    try
    {  
        Class.forName("com.mysql.cj.jdbc.Driver"); 
        Connection con = DriverManager.getConnection(conn_string,username,password);
        return con;
    }
    catch(SQLException | ClassNotFoundException e)
    {
        System.out.println(e); 
        return null;
        
    }  
}
    
}
