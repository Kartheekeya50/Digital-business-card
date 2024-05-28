package com.card;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class InsertCard {

    // Method to get the next ID
    private static int getNextId(Connection c) throws SQLException {
        int nextId = 1; // Default ID if the table is empty
        String query = "SELECT MAX(id) AS max_id FROM card";
        try (PreparedStatement ps = c.prepareStatement(query); ResultSet rs = ps.executeQuery()) {
            if (rs.next()) {
                nextId = rs.getInt("max_id") + 1;
            }
        }
        return nextId;
    }

    public static boolean saveCustomer(Card card) {
        int count = 0;
        String name = card.getName();
        String clg = card.getClg();
        String branch = card.getBranch();
        String mobile = card.getMobile();
        String email = card.getEmail();
        String address = card.getAddress();
        String facebook = card.getFacebook();
        String whatsapp = card.getWhatsapp();
        String instagram = card.getInstagram();
        String linkedin = card.getLinkedin();
        String description = card.getDescription();
        String upi = card.getUpi();
        String bname = card.getBname();
        String bank = card.getBank();
        int ac = card.getAc();
        int ifsc = card.getIfsc();

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/my_organization", "root", "root");

            int id = getNextId(c); // Get the next ID

            PreparedStatement p = c.prepareStatement("insert into card values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
            p.setInt(1, id);
            p.setString(2, name);
            p.setString(3, clg);
            p.setString(4, branch);
            p.setString(5, mobile);
            p.setString(6, email);
            p.setString(7, address);
            p.setString(8, facebook);
            p.setString(9, whatsapp);
            p.setString(10, instagram);
            p.setString(11, linkedin);
            p.setString(12, description);
            p.setString(13, upi);
            p.setString(14, bname);
            p.setString(15, bank);
            p.setInt(16, ac);
            p.setInt(17, ifsc);

            count = p.executeUpdate();
            p.close();
            c.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return count == 1;
    }
}
