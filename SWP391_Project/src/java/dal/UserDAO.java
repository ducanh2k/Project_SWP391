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
import model.User;

/**
 *
 * @author Dell
 */
public class UserDAO extends DBContext {

    public User getUser(int uID) {
        String sql = "select * from [Human Resource Service].[dbo].[User] where Uid=?";
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

    public void Update(String place,String name,String email,int phone,String job,int Uid) throws SQLException {
        String sql = "Update [Human Resource Service].[dbo].[User] set place='"+place+"',name='"+name
                +"',email='"+email+"',phone="+phone+",workingUnit='"+job+"' where Uid="+Uid;
        Statement statement = connection.createStatement();
        statement.execute(sql);
    }
}
