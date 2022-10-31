/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Approval;

/**
 *
 * @author Dell
 */
public class ApprovalDAO extends DBContext {

    public void insert(Approval a) throws SQLException {
        String sql = "INSERT INTO [dbo].[Approval]\n"
                + "           ([ApprovalObject]\n"
                + "           ,[Petitioner]\n"
                + "           ,[Category]\n"
                + "           ,[Description]\n"
                + "           ,[Approver]\n"
                + "           ,[Properties]\n"
                + "           ,[Status])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, a.getApprovalObject());
            st.setString(2, a.getPetitioner());
            st.setString(3, a.getCategory());
            st.setString(4, a.getDes());
            st.setString(5, a.getApprover());
            st.setString(6, a.getProperties());
            st.setString(7, "Waiting for approve");
            ResultSet rs = st.executeQuery();
        } catch (SQLException e) {

        }
    }

    public int count() {
        String sql = "select count(*) as count from [dbo].[Approval] where Status = 'Waiting for approve'";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt("count");
            }
        } catch (SQLException e) {

        }
        return 0;
    }
}
