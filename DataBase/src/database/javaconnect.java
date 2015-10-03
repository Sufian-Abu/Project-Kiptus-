package database;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Nazmus Sakib
 */

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;
 

public class javaconnect {
    
    Connection conn = null;
    public static Connection ConnecrDb(){
        
        try {
            
               
             Class.forName("com.mysql.jdbc.Driver");
             Connection conn = (Connection)DriverManager.getConnection("jdbc:mysql://localhost/mydb","root","");
             return conn;
        }catch (Exception e) {
            
            JOptionPane.showMessageDialog(null, e);
            return null;
             
        }
       
    }
    
}
