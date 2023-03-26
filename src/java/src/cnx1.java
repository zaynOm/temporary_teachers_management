package src;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;


public class cnx1 {
    private static final String URL = "YOUR_URL";
    private static final String USERNAME = "YOUR_USERNAME";
    private static final String PASSWORD = "YOUR_PASSWORD";
    
    public static ResultSet executeReq(String req) {
                
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection c = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            Statement s = c.createStatement();
            rs = s.executeQuery(req);
        } catch (ClassNotFoundException | SQLException x) {
            x.printStackTrace();
        }
        return rs;
    }

    public static int execLMD(String req) {
        int b = 0;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection c = DriverManager.getConnection(URL, USERNAME, PASSWORD);
            Statement s = c.createStatement();
            b = s.executeUpdate(req);
        } catch (ClassNotFoundException | SQLException x) {
            x.printStackTrace();
        }
        return b;
    }
}
