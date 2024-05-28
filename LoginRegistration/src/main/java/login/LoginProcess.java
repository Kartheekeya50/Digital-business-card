package login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LoginProcess {
    public static boolean checkLogin(String email, String pwd) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_organization", "root", "root");
            PreparedStatement p = c.prepareStatement("select * from Registration where email=? and pwd=?");
            p.setString(1, email);
            p.setString(2, pwd);
            ResultSet rs = p.executeQuery();
            if (rs.next()) {
                return true; // Login successful
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false; // Login failed
    }
}
