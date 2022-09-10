/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Account;
import model.User;

/**
 *
 * @author Dell
 */
public class UserDAO extends DBContext {

    public User getUser(int uID) {
        String sql = "select * from User where Uid=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, uID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt("Uid"),
                        rs.getString("place"),
                        rs.getString("name"),
                        rs.getString("email"),
                        rs.getInt("phone"),
                        rs.getString("picture"),
                        rs.getString("workingUnit"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void Update(String name,String place,int phone,String email,String job,int Uid) throws SQLException {
        String sql = "Update User set place=?,"
                + "name=?,email=?,phone=?,workingUnit=? where Uid=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, place);
            st.setString(2, name);
            st.setString(3, email);
            st.setInt(4, phone);
            st.setString(5, job);
            st.setInt(6, Uid);
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
