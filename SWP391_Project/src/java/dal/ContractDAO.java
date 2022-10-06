/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.Contract;
import model.Department;

/**
 *
 * @author Dell
 */
public class ContractDAO extends DBContext{
    public void createContract(Contract con) {
        String sql = "insert into [Human Resource Service].[dbo].Contract (Eid,Did, name,StartingDate,EndDate,Status,workingTime,salary) \n"
                + "values(?, ?, ?,?,?,?,?,?);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, con.getEid());
            st.setInt(2, con.getDid());
            st.setString(3, con.getName());
            st.setString(4, con.getStartingDate());
            st.setString(5, con.getEndDate());
            st.setString(6, con.getStatus());
            st.setString(7, con.getWorkingTime());
            st.setDouble(8, con.getSalary());
            ResultSet rs = st.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
}
