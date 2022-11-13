/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import model.Contract;
import model.Department;

/**
 *
 * @author Dell
 */
public class ContractDAO extends DBContext {

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

    public void editContract(Contract con) {
        String sql = "update Contract set StartingDate=?,EndDate=?,Status=?,workingTime=?,salary=? where Cid=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, con.getStartingDate());
            st.setString(2, con.getEndDate());
            st.setString(3, con.getStatus());
            st.setString(4, con.getWorkingTime());
            st.setDouble(5, con.getSalary());
            st.setInt(6, con.getCid());
            ResultSet rs = st.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteContract(String cid) throws SQLException {
        String sql = "delete from Contract where Cid=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, cid);
            st.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public ArrayList<Contract> getListContract() {
        ArrayList<Contract> list_contract = new ArrayList<Contract>();
        String sql = "select c.Cid, c.Eid, d.Did, c.name,c.StartingDate, \n"
                + "CONVERT(varchar(10),DATEADD(day, -1, DATEADD(month, 12, c.StartingDate)),101) as EndDate,\n"
                + "c.ValidStatus, ct.ContractTypeID, ct.TypeName as ContractTypeName, ct.[WorkingTime(h)] as workingTime, ct.Salary, e.name as Ename "
                + "from Contract c\n"
                + "join Employee e on c.Eid = e.Eid\n"
                + "join ContractType ct on c.TypeID=ct.ContractTypeID\n"
                + "join Department d on e.Did = d.Did";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String status = rs.getBoolean("ValidStatus") == true ? "Effective" : "Expired";
                Contract c = new Contract(rs.getInt("Eid"),
                        rs.getInt("Did"), rs.getString("name"),
                        rs.getString("StartingDate"), rs.getString("EndDate"),
                        status, rs.getString("workingTime"),
                        rs.getDouble("Salary"));
                c.setEname(rs.getString("Ename"));
                c.setCid(rs.getInt("Cid"));
                c.setContractTypeID(rs.getInt("ContractTypeID"));
                c.setContractTypeName(rs.getString("ContractTypeName"));
                list_contract.add(c);
            }
            return list_contract;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public Contract getContract(int cid) {
        String sql = "select c.Cid, c.Eid, d.Did, c.name,c.StartingDate,c.YearValid as monthValid, \n"
                + "CONVERT(varchar(10),DATEADD(day, -1, DATEADD(month, 12, c.StartingDate)),101) as EndDate,\n"
                + "c.ValidStatus, ct.ContractTypeID, ct.TypeName as ContractTypeName, ct.[WorkingTime(h)] as workingTime, ct.Salary, e.name as Ename "
                + "from Contract c\n"
                + "join Employee e on c.Eid = e.Eid\n"
                + "join ContractType ct on c.TypeID=ct.ContractTypeID\n"
                + "join Department d on e.Did = d.Did where c.Cid = " + cid;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                String status = rs.getBoolean("ValidStatus") == true ? "Effective" : "Expired";
                Contract c = new Contract(rs.getInt("Eid"),
                        rs.getInt("Did"), rs.getString("name"),
                        rs.getString("StartingDate"), rs.getString("EndDate"),
                        status, rs.getString("workingTime"),
                        rs.getDouble("Salary"));
                c.setEname(rs.getString("Ename"));
                c.setCid(rs.getInt("Cid"));
                c.setContractTypeID(rs.getInt("ContractTypeID"));
                c.setContractTypeName(rs.getString("ContractTypeName"));
                c.setMonth_valid(rs.getInt("monthValid"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void createContract(int eid, String name, String start, int contractTypeID, int month_valid, Boolean status) {
        String sql = "insert into [Human Resource Service].[dbo].Contract ([Eid], [name], [StartingDate], [YearValid], [ValidStatus], [TypeID]) \n"
                        + "values(?, ?, ?,?,?,?);";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            st.setInt(1, eid);
                st.setString(2, name);
                st.setString(3, start);
                st.setInt(4, month_valid);
                st.setBoolean(5, status);
                st.setInt(6, contractTypeID);
            rs = st.executeQuery();
            
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public int getContractTypeID(String contractType) {
        String sql = "select * from ContractType where TypeName = " + contractType;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt("ContractTypeID");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return -1;
    }

    public void editContract(int cid, int eid, String name, String start, int contractTypeID, int month_valid, Boolean status) {
         String sql = "update Contract set Eid=?,name=?,StartingDate=?,YearValid=?,ValidStatus=?, TypeID=? where Cid=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, eid);
            st.setString(2, name);
            st.setString(3, start);
            st.setInt(4, contractTypeID);
            st.setInt(5, month_valid);
            st.setBoolean(6, status);
            st.setInt(7, cid);
            ResultSet rs = st.executeQuery();
        } catch (SQLException e) {
            System.out.println(e);
        }}

}
