/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Department;

/**
 *
 * @author User
 */
public class DepartmentDAO extends DBContext {

    public Department getDep(int dID) {
        String sql = "select * from [Human Resource Service].[dbo].Department where Did=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, dID);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Department d = new Department(rs.getInt("Did"),
                        rs.getString("name"), true);
                d.setCount_employee(0);
                return d;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public int getDepID(String name) {
        String sql = "select Did from [Human Resource Service].[dbo].Department where name=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt("Did");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public ArrayList<Department> getListDep() {
        ArrayList<Department> list_dept = new ArrayList<Department>();
        String sql = "select d.Did as did, d.name as dname, count(e.Eid) as count_employee\n"
                + "from [Human Resource Service].[dbo].Department d\n"
                + "left join [Human Resource Service].[dbo].Employee e\n"
                + "on d.Did = e.Did\n"
                + "group by d.Did, d.name";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                System.out.println(rs.getInt("did"));
                Department d = new Department(rs.getInt("did"),
                        rs.getString("dname"), true);
                d.setCount_employee(rs.getInt("count_employee"));
                list_dept.add(d);
            }
            return list_dept;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public String getCName(int cerID) {
        String sql = "select CName from Certificate where CertificateID = " + cerID;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getString("CName");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public int getCID(String name) throws SQLException {
        String sql = "USE [Human Resource Service]\n"
                + "GO\n"
                + "\n"
                + "SELECT [CertificateID]\n"
                + "      \n"
                + "  FROM [dbo].[Certificate] where [CName] = '" + name + "'\n"
                + "\n"
                + "GO";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt("CertificateID");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public int getCerID(String name) {
        String sql = "select CertificateID from [Human Resource Service].[dbo].Certificate where CName=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt("CertificateID");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public String getDName(int did) {
        String sql = "select name from Department where Did = " + did;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getString("name");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void addDep(Department dep) {
        String sql = "insert into [Human Resource Service].[dbo].Department (Did, name, is_active) \n"
                + "values(?, ?, 1);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, dep.getDid());
            st.setString(2, dep.getDname());
            ResultSet rs = st.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void update(Department dep) {
        String sql = "update table [Human Resource Service].[dbo].Department "
                + "set Did=?, name=?, is_active=? where Did=?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, dep.getDid());
            st.setString(2, dep.getDname());
            st.setBoolean(3, dep.isIs_active());
            st.setInt(4, dep.getDid());
            ResultSet rs = st.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }}
}
