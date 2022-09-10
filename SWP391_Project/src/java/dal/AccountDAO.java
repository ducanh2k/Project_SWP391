/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;

/**
 *
 * @author Dell
 */
public class AccountDAO extends DBContext {

    public Account getAdmin(String user, String pass) throws SQLException {
        String sql = "select * from Account where username=? and pass=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getInt("uID"),
                        //                        rs.getInt("Aid"),
                        //                        rs.getInt("Uid"),
                        rs.getString("username"),
                        rs.getString("pass"),
                        rs.getBoolean("isAdmin")
                );
            }
        }catch(SQLException e){
            System.out.println(e);
        }
        return null;
    }
}
