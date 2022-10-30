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
                        rs.getString("name"), rs.getBoolean("is_active"));
                d.setCount_employee(0);
                d.setManagerID(rs.getInt("ManagerID"));
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
        String sql = "select d.Did as did, d.name as dname, count(e.Eid) as count_employee,"
                + " ISNULL(f.Eid,0) as managerID, ISNULL(f.name,'') as managerName, d.is_active as is_active\n"
                + "from [Human Resource Service].[dbo].Department d\n"
                + "left join [Human Resource Service].[dbo].Employee e on d.Did = e.Did \n"
                + "left join [Human Resource Service].[dbo].Employee f on d.ManagerID=f.Eid\n"
                + "group by d.Did, d.name,f.Eid, f.name, d.is_active";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                System.out.println(rs.getInt("did"));
                Department d = new Department(rs.getInt("did"),
                        rs.getString("dname"), rs.getBoolean("is_active"));
                d.setCount_employee(rs.getInt("count_employee"));
                d.setManagerID(rs.getInt("managerID"));
                d.setManagerName(rs.getString("managerName"));
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
        String sql = "insert into [Human Resource Service].[dbo].Department (Did, name, is_active, ManagerID) \n"
                + "values(?, ?, 1, ?);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, dep.getDid());
            st.setInt(3, dep.getManagerID());
            st.setString(2, dep.getDname());
            ResultSet rs = st.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void update(Department dep) {
        String sql = "update [Human Resource Service].[dbo].Department "
                + "set Did=?, name=?, is_active=?, ManagerID=? where Did=?;";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, dep.getDid());
            st.setString(2, dep.getDname());
            st.setBoolean(3, dep.isIs_active());
            st.setInt(4, dep.getManagerID());
            st.setInt(5, dep.getDid());
            ResultSet rs = st.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public int deleteDep(int did) {
        String sql = "delete from [Human Resource Service].[dbo].Department where Did = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, did);
            int result = st.executeUpdate();
            connection.commit();
            return result;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return -1;
    }
}
