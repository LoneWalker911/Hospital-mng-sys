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
          
public static Connection CreateConn() 
{  
    try
    {  
//        String conn_string = "jdbc:mysql://sql6.freemysqlhosting.net:3306/sql6403212?autoReconnect=true";
//        String username = "sql6403212";
//        String password = "1GQFJqC9LI";
        String conn_string = "jdbc:mysql://javaweb.c2uijc6ieiin.us-east-2.rds.amazonaws.com:3306/javaweb?serverTimezone=UTC&autoReconnect=true&useSSL=false";
        String username = "admin";
        String password = "ggVeSYkIDutKUTRIsoOy";
        Class.forName("com.mysql.cj.jdbc.Driver"); 
        return DriverManager.getConnection(conn_string,username,password);
    }
    catch(SQLException | ClassNotFoundException ex)
    {
        System.out.println(ex.getMessage());
        System.out.println("couldn't connect!");
        throw new RuntimeException(ex);
    }  
}
    
}
