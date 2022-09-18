/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;

/**
 *
 * @author Dell
 */
public class AccountDAO extends DBContext {

    public Account getAdmin(String user, String pass) throws SQLException {
        String sql = "select * from [Human Resource Service].[dbo].[Account] where username=? and password=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Account(
                        rs.getInt("id"),
                        rs.getInt("Uid"),
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
    public Boolean register(String username, String password, String email) {
        String query = "INSERT INTO dbo.Account\n"
                + "VALUES (?,?,?,?,?,?)";
        Connection conn = null;
        PreparedStatement pre = null;
        ResultSet rs = null;
        try {
            conn = connection;
            pre = conn.prepareCall(query);
            pre.setInt(1, 16);
            pre.setString(2, null);
            pre.setString(3, username);
            pre.setString(4, password);
            pre.setInt(5, 1);
            pre.setString(6, email);
            return pre.executeUpdate() > 0;
        } catch (SQLException ex) {

        } finally {
            closeConnection(conn, pre, rs);
        }
        return false;
    }

    public static void main(String[] args) {
        System.out.println(new AccountDAO().isExist("a"));
    }

    public Boolean isExist(String username) {
        String query = "SELECT * FROM dbo.Account a\n"
                + "WHERE a.username = ?";
        Connection conn = null;
        PreparedStatement pre = null;
        ResultSet rs = null;
        Boolean check = false;
        try {
            conn = connection;
            pre = conn.prepareCall(query);
            pre.setString(1, username);
            rs = pre.executeQuery();
            if (rs.next()) {
                check = true;
            }
        } catch (SQLException ex) {

        } finally {
            closeConnection(conn, pre, rs);
        }
        return check;
    }
     protected void closeConnection(Connection conn,PreparedStatement pre,ResultSet rs){
         try{
                if(rs != null){
                    rs.close();
                }
                if(pre != null){
                    pre.close();
                }
                if(conn != null){
                    conn.close();
                }
            }
            catch(SQLException ex){
                
            }
    }
}
