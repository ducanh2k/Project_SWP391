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

    public void createApplication(Application app) {
        String sql = "insert into Application (Eid, Title, Body, Status, Time) values(?, ?, ?, ?, ?);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, app.getEid());
            st.setString(2, app.getTitle());
            st.setString(3, app.getBody());
            st.setString(4, app.getStatus());
            st.setString(5, app.getTime());
            ResultSet rs = st.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void approveApp(int aid) {
        String sql = "update Application set Status = 'Approved' where Aid=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, aid);
            ResultSet rs = st.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void refuseApp(int aid) {
        String sql = "update Application set Status = 'Refused' where Aid=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, aid);
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
                Application a = new Application(rs.getString("Eid"),
                        rs.getString("Title"),
                        rs.getString("Body"),
                        rs.getString("Status"),
                        rs.getString("Time"));
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

    public Application getApplication(int aid) {
        String sql = "select a.*, e.name as Ename from Application a\n"
                + "join Employee e on a.Eid = e.Eid where a.Aid = " + aid;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Application a = new Application(rs.getString("Eid"),
                        rs.getString("Title"),
                        rs.getString("Body"),
                        rs.getString("Status"),
                        rs.getString("Time"));
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
