/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import model.Employee;

/**
 *
 * @author Dell
 */
public class EmployeeDAO extends DBContext {

    public Employee getEmployee(int Eid) {
        String sql = "select * from Employee where Eid = "+Eid;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Employee(rs.getInt("Eid"), rs.getInt("Did"), rs.getString("name"),
                        rs.getInt("mentor"), rs.getInt("CertificateID"), rs.getString("manager"),
                        rs.getString("workingTime"), rs.getString("approver"), rs.getString("workingPlace"),
                        rs.getString("email"), rs.getInt("emergencyContact"), rs.getInt("phone"),
                        rs.getString("picture"), rs.getString("certificateLevel"), rs.getString("researchArea"),
                        rs.getString("nationality"), rs.getInt("idNumber"), rs.getInt("passport"),
                        rs.getBoolean("gender"), rs.getString("birthplace"), rs.getInt("visaNumber"),
                        rs.getInt("workLicenseNumber"), rs.getString("visaExpirationDate"), rs.getString("workLicenseExpirationDate"), rs.getString("position"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void Update(Employee e) throws SQLException {
        int gender = 0;
        if(e.isGender()==true){
            gender = 1;
        }
        String sql = "UPDATE [dbo].[Employee]\n"
                + "   SET [Did] = " + e.getDid()
                + "      ,[name] = '" + e.getName() + "'"
                + "      ,[mentor] = " + e.getMentor()
                + "      ,[CertificateID] = " + e.getCertificateID()
                + "      ,[manager] = '" + e.getManager() + "'"
                + "      ,[workingTime] = '" + e.getWorkingTime() + "'"
                + "      ,[approver] = '" + e.getApprover() + "'"
                + "      ,[workingPlace] = '" + e.getWorkingPlace() + "'"
                + "      ,[email] = '" + e.getEmail() + "'"
                + "      ,[emergencyContact] = " + e.getEmergencyContact()
                + "      ,[phone] = " + e.getPhone()
                + "      ,[picture] = '" + e.getPicture() + "'"
                + "      ,[certificateLevel] = '" + e.getResearchArea() + "'"
                + "      ,[researchArea] = '" + e.getResearchArea() + "'"
                + "      ,[nationality] = '" + e.getNationality() + "'"
                + "      ,[idNumber] = " + e.getIdNumber()
                + "      ,[passport] = " + e.getPassport()
                + "      ,[gender] = " + gender
                + "      ,[birthplace] = '" + e.getBirthPlace() + "'"
                + "      ,[visaNumber] = " + e.getVisaNumber()
                + "      ,[workLicenseNumber] = " + e.getWorkLicenseNumber()
                + "      ,[visaExpirationDate] = '" + e.getVisaExpirationDate() + "'"
                + "      ,[workLicenseExpirationDate] = '" + e.getWorkLicenseExpirationDate() + "'"
                + "      ,[position] = '" + e.getPosition() + "'"
                + " WHERE Eid =" + e.getEid();
        Statement statement = connection.createStatement();
        statement.execute(sql);
    }
}
