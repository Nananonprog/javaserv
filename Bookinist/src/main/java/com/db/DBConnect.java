package com.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

    private static Connection con;

    public static Connection getConn(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/bookstore","root","Zelana_03");

        } catch (Exception e){
            e.printStackTrace();
        }
        return con;
    }

}
