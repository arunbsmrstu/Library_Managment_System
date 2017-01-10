/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package library_managment_system;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author Arthista
 */
class DBClass {
    
     static private Connection  connection;

    public static Connection getConnection() throws Exception{
        if(connection == null){
            //JDBC
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection("jdbc:mysql://localhost/lms", "root", "");
            
        }
        return connection;
    }
    
}
