/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import model.Account;
import model.SendEmail;

/**
 *
 * @author Dell
 */
public class AccountDAO extends DBContext {

    public Account getAdmin(String user, String pass) throws SQLException {
        String sql = "select * from [Human Resource Service].[dbo].[Account] where username=? and password=? and isActive=1";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getInt("id"),
                        rs.getInt("Eid"),
                        rs.getString("username"),
                        rs.getString("password"),
                        rs.getInt("roleid"),
                        rs.getString("email")
                );
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void updatePass(String pass, String email) throws SQLException {
        String sql = "update Account set password ='" + pass + "' where email ='" + email + "'";
        Statement statement = connection.createStatement();
        statement.execute(sql);
    }

    public String register(Account acc) throws SQLException {
        String email = acc.getEmail();
        String username = acc.getUsername();
        String password = acc.getPassword();
        PreparedStatement st;
//        String hash;
//        Random rd = new Random();
//        rd.nextInt(999999);
//        hash = DigestUtils.md5Hex(""+rd);
        try {
            st = connection.prepareStatement("SELECT * FROM Account where username=?");
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                String checkUser = rs.getString("username");
                if (username.equals(checkUser)) {
                    return "Username already exist";
                }
            } else {
                st = connection.prepareStatement("INSERT INTO Account(username, password, roleid, email) VALUES(?,?,?,?)");
                st.setString(1, username);
                st.setString(2, password);
                st.setInt(3, 1);
                st.setString(4, email);

                int i = st.executeUpdate();

                if (i != 0) {
                    SendEmail se = new SendEmail(email, username);
                    se.sendMail();
                    return "Success";
                }
            }
        } catch (Exception e) {
        }
        return "error";
    }

}
