/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Application;

/**
 *
 * @author Admin
 */
public class ApplicationDAO extends DBContext{
    public void createApplication(Application con) {
        String sql = "insert into Application (Eid,Did, Title,Content)" + "values(?, ?, ?, ?);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, con.getEid());
            st.setInt(2, con.getDid());
            st.setString(3, con.getTitle());
            st.setString(4, con.getContent());
            ResultSet rs = st.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    public void approval(Application con) {
        String sql = "update Application set Status = 1 where Aid=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, con.getAid());
            ResultSet rs = st.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
