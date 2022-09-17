/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Account;
import model.Certificate;
import model.Department;
import model.Employee;

/**
 *
 * @author DUCHIEUPC.COM
 */
public class EmployeeDAO extends DBContext {

    public ArrayList<Employee> getAllEmployee() throws SQLException {
        ArrayList<Employee> list = new ArrayList<>();

        String sql = " select * from [Employee] e, [Certificate] c , Department d where e.CertificateID = c.CertificateID and d.Did = e.Did";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Employee e = new Employee(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8),
                        rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14), rs.getString(15), rs.getString(16),
                        rs.getLong(17), rs.getLong(18), rs.getBoolean(19), rs.getString(20), rs.getLong(21), rs.getLong(22),
                        rs.getDate(23), rs.getDate(24), rs.getString(25));
                Certificate c = new Certificate(rs.getInt(26), rs.getString(27));
                Department d = new Department(rs.getInt(28), rs.getString(29), rs.getString(30));
                e.setDepartment(d);
                e.setCertificate(c);
                list.add(e);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    public Employee getEmployeeDetail(String eid) throws SQLException {

        String sql = "  select * from [Employee] e, [Certificate] c,Department d\n"
                + "  where e.CertificateID = c.CertificateID and d.Did = e.Did and e.Eid =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, eid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Employee e = new Employee(rs.getInt(1), rs.getInt(2), rs.getString(3), rs.getInt(4), rs.getInt(5), rs.getString(6), rs.getString(7), rs.getString(8),
                        rs.getString(9), rs.getString(10), rs.getString(11), rs.getString(12), rs.getString(13), rs.getString(14), rs.getString(15), rs.getString(16),
                        rs.getLong(17), rs.getLong(18), rs.getBoolean(19), rs.getString(20), rs.getLong(21), rs.getLong(22),
                        rs.getDate(23), rs.getDate(24), rs.getString(25));
                Certificate c = new Certificate(rs.getInt(26), rs.getString(27));
                Department d = new Department(rs.getInt(28), rs.getString(29), rs.getString(30));
                e.setDepartment(d);
                e.setCertificate(c);
                return e;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    public static void main(String[] args) throws SQLException {
        System.out.println(new EmployeeDAO().getEmployeeDetail("1"));
    }
}
