 /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
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
                        rs.getInt("workLicenseNumber"), rs.getString("visaExpirationDate"), 
                        rs.getString("workLicenseExpirationDate"), rs.getString("position"),rs.getBoolean("isActive"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public int getEmID(String name) {
        String sql = "select Eid from [Human Resource Service].[dbo].Employee where name=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt("Eid");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }
    public void Update(Employee e) throws SQLException {
        int gender = 0;
        if(e.isGender()==true){
            gender = 1;
        }
//        String sql = "UPDATE [dbo].[Employee]\n" +
//"   SET [Did] = 8\n" +
//"      ,[name] = 'Duc Anh'\n" +
//"      ,[mentor] = 4\n" +
//"      ,[CertificateID] = 5\n" +
//"      ,[manager] = 'duc'\n" +
//"      ,[workingTime] = '40h/week'\n" +
//"      ,[approver] = 'ngan trinhh'\n" +
//"      ,[workingPlace] = 'Hà Noi'\n" +
//"      ,[email] = 'tdanhaltt18@gmail.com'\n" +
//"      ,[emergencyContact] = 377778899\n" +
//"      ,[phone] = 766000089\n" +
//"      ,[picture] = 'https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg?w=2000'\n" +
//"      ,[certificateLevel] = 'master'\n" +
//"      ,[researchArea] = 'master'\n" +
//"      ,[nationality] = 'Viet Nam'\n" +
//"      ,[idNumber] = 1\n" +
//"      ,[passport] = 5028441\n" +
//"      ,[gender] = 0\n" +
//"      ,[birthplace] = 'Hà Noi'\n" +
//"      ,[visaNumber] = 18821309\n" +
//"      ,[workLicenseNumber] = 95902\n" +
//"      ,[visaExpirationDate] = '2030-02-02'\n" +
//"      ,[workLicenseExpirationDate] = '2025-01-25'\n" +
//"      ,[position] = 'Manager'\n" +
//"      \n" +
//" WHERE Eid = 1";
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

    public ArrayList<Employee> getAllEmployee() {
        ArrayList<Employee> list = new ArrayList<>();
        String sql = "select * from Employee";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Employee(rs.getInt("Eid"), rs.getInt("Did"), rs.getString("name"),
                        rs.getInt("mentor"), rs.getInt("CertificateID"), rs.getString("manager"),
                        rs.getString("workingTime"), rs.getString("approver"), rs.getString("workingPlace"),
                        rs.getString("email"), rs.getInt("emergencyContact"), rs.getInt("phone"),
                        rs.getString("picture"), rs.getString("certificateLevel"), rs.getString("researchArea"),
                        rs.getString("nationality"), rs.getInt("idNumber"), rs.getInt("passport"),
                        rs.getBoolean("gender"), rs.getString("birthplace"), rs.getInt("visaNumber"),
                        rs.getInt("workLicenseNumber"), rs.getString("visaExpirationDate"), 
                        rs.getString("workLicenseExpirationDate"), rs.getString("position"),rs.getBoolean("isActive")));
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }
    
    public Employee getEmployeeDetail(String eid) throws SQLException {

        String sql = "  select * from [Employee] e, [Certificate] c,Department d\n"
                + "  where e.CertificateID = c.CertificateID and d.Did = e.Did and e.Eid =?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, eid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Employee(rs.getInt("Eid"), rs.getInt("Did"), rs.getString("name"),
                        rs.getInt("mentor"), rs.getInt("CertificateID"), rs.getString("manager"),
                        rs.getString("workingTime"), rs.getString("approver"), rs.getString("workingPlace"),
                        rs.getString("email"), rs.getInt("emergencyContact"), rs.getInt("phone"),
                        rs.getString("picture"), rs.getString("certificateLevel"), rs.getString("researchArea"),
                        rs.getString("nationality"), rs.getInt("idNumber"), rs.getInt("passport"),
                        rs.getBoolean("gender"), rs.getString("birthplace"), rs.getInt("visaNumber"),
                        rs.getInt("workLicenseNumber"), rs.getString("visaExpirationDate"), 
                        rs.getString("workLicenseExpirationDate"), rs.getString("position"));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public ArrayList<Employee> getEmployeesByDep(int did) {
        ArrayList<Employee> list = new ArrayList<>();
        String sql = "select * from Employee where Did";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Employee(rs.getInt("Eid"), rs.getInt("Did"), rs.getString("name"),
                        rs.getInt("mentor"), rs.getInt("CertificateID"), rs.getString("manager"),
                        rs.getString("workingTime"), rs.getString("approver"), rs.getString("workingPlace"),
                        rs.getString("email"), rs.getInt("emergencyContact"), rs.getInt("phone"),
                        rs.getString("picture"), rs.getString("certificateLevel"), rs.getString("researchArea"),
                        rs.getString("nationality"), rs.getInt("idNumber"), rs.getInt("passport"),
                        rs.getBoolean("gender"), rs.getString("birthplace"), rs.getInt("visaNumber"),
                        rs.getInt("workLicenseNumber"), rs.getString("visaExpirationDate"), 
                        rs.getString("workLicenseExpirationDate"), rs.getString("position"),rs.getBoolean("isActive")));
            }
            return list;
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
        }
}
