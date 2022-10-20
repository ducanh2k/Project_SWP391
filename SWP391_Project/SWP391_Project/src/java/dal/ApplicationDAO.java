/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Application;

/**
 *
 * @author Admin
 */
public class ApplicationDAO extends DBContext {

    public void createApplication(Application con) {
        String sql = "insert into Application (Eid,Did, Title,Body)" + "values(?, ?, ?, ?);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, con.getEid());
            st.setInt(2, con.getDid());
            st.setString(3, con.getTitle());
            st.setString(4, con.getBody());
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

    public ArrayList<Application> getListApplication() {
        ArrayList<Application> list_application = new ArrayList<Application>();
        String sql = "select a.*, e.name as Ename from Application a\n"
                + "join Employee e on a.Eid = e.Eid\n";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Application a = new Application(rs.getInt("Eid"),
                        rs.getInt("Did"), rs.getString("Title"),
                        rs.getString("Body"));
                a.setEname(rs.getString("Ename"));
                a.setAid(rs.getInt("Aid"));
                list_application.add(a);
            }
            return list_application;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Application getContract(int aid) {
        String sql = "select a.*, e.name as Ename from Application a\n"
                + "join Employee e on a.Eid = e.Eid where a.Aid = " + aid;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Application a = new Application(rs.getInt("Eid"),
                        rs.getInt("Did"), rs.getString("Title"),
                        rs.getString("Body"));
                a.setEname(rs.getString("Ename"));
                a.setAid(rs.getInt("Aid"));
                return a;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
}
