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
        String sql = "select * from Employee where Eid = " + Eid;
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Employee(rs.getInt("Eid"), rs.getInt("Did"), rs.getString("name"),
                        rs.getInt("mentor"), rs.getInt("CertificateID"), rs.getString("manager"),
                        rs.getString("workingTime"), rs.getString("approver"), rs.getString("workingPlace"),
                        rs.getString("email"), rs.getInt("emergencyContact"), rs.getInt("phone"),
                        rs.getString("picture"), rs.getString("certificateLink"), rs.getString("researchArea"),
                        rs.getString("nationality"), rs.getInt("idNumber"), rs.getInt("passport"),
                        rs.getBoolean("gender"), rs.getString("birthplace"), rs.getInt("visaNumber"),
                        rs.getInt("workLicenseNumber"), rs.getString("visaExpirationDate"),
                        rs.getString("workLicenseExpirationDate"), rs.getString("position"), rs.getBoolean("isActive"));
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
        if (e.isGender() == true) {
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
                + "      ,[certificateLink] = '" + e.getResearchArea() + "'"
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
        String sql = "select * from Employee where isActive=1";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Employee(rs.getInt("Eid"), rs.getInt("Did"), rs.getString("name"),
                        rs.getInt("mentor"), rs.getInt("CertificateID"), rs.getString("manager"),
                        rs.getString("workingTime"), rs.getString("approver"), rs.getString("workingPlace"),
                        rs.getString("email"), rs.getInt("emergencyContact"), rs.getInt("phone"),
                        rs.getString("picture"), rs.getString("certificateLink"), rs.getString("researchArea"),
                        rs.getString("nationality"), rs.getInt("idNumber"), rs.getInt("passport"),
                        rs.getBoolean("gender"), rs.getString("birthplace"), rs.getInt("visaNumber"),
                        rs.getInt("workLicenseNumber"), rs.getString("visaExpirationDate"),
                        rs.getString("workLicenseExpirationDate"), rs.getString("position")));
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
                        rs.getString("picture"), rs.getString("certificateLink"), rs.getString("researchArea"),
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
        String sql = "select * from Employee where Did = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, did);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Employee(rs.getInt("Eid"), rs.getInt("Did"), rs.getString("name"),
                        rs.getInt("mentor"), rs.getInt("CertificateID"), rs.getString("manager"),
                        rs.getString("workingTime"), rs.getString("approver"), rs.getString("workingPlace"),
                        rs.getString("email"), rs.getInt("emergencyContact"), rs.getInt("phone"),
                        rs.getString("picture"), rs.getString("certificateLink"), rs.getString("researchArea"),
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

    public void insertEmp(Employee e) {
        String sql = "INSERT INTO [dbo].[Employee]\n"
                + "           ([Did]\n"
                + "           ,[name]\n"
                + "           ,[mentor]\n"
                + "           ,[CertificateID]\n"
                + "           ,[manager]\n"
                + "           ,[workingTime]\n"
                + "           ,[approver]\n"
                + "           ,[workingPlace]\n"
                + "           ,[email]\n"
                + "           ,[emergencyContact]\n"
                + "           ,[phone]\n"
                + "           ,[picture]\n"
                + "           ,[certificateLink]\n"
                + "           ,[researchArea]\n"
                + "           ,[nationality]\n"
                + "           ,[idNumber]\n"
                + "           ,[passport]\n"
                + "           ,[gender]\n"
                + "           ,[birthplace]\n"
                + "           ,[visaNumber]\n"
                + "           ,[workLicenseNumber]\n"
                + "           ,[visaExpirationDate]\n"
                + "           ,[workLicenseExpirationDate]\n"
                + "           ,[position]\n"
                + "           ,[isActive])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, e.getDid());
            st.setString(2, e.getName());
            st.setInt(3, e.getMentor());
            st.setInt(4, e.getCertificateID());
            st.setString(5, e.getManager());
            st.setString(6, e.getWorkingTime());
            st.setString(7, e.getApprover());
            st.setString(8, e.getWorkingPlace());
            st.setString(9, e.getEmail());
            st.setInt(10, e.getEmergencyContact());
            st.setInt(11, e.getPhone());
            st.setString(12, "");
            st.setString(13, e.getCertificateLevel());
            st.setString(14, e.getResearchArea());
            st.setString(15, e.getNationality());
            st.setInt(16, e.getIdNumber());
            st.setInt(17, e.getPassport());
            if (e.isGender() == true) {
                st.setInt(18, 1);
            } else {
                st.setInt(18, 0);
            }
            st.setString(19, e.getBirthPlace());
            st.setInt(20, e.getVisaNumber());
            st.setInt(21, e.getWorkLicenseNumber());
            st.setString(22, e.getVisaExpirationDate());
            st.setString(23, e.getWorkLicenseExpirationDate());
            st.setString(24, e.getPosition());
            st.setInt(25, 0);
            ResultSet rs = st.executeQuery();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void insertToTemp(Employee e) {
        String sql = "INSERT INTO [dbo].[Temp]"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, e.getDid());
            st.setString(2, e.getName());
            st.setInt(3, e.getMentor());
            st.setInt(4, e.getCertificateID());
            st.setString(5, e.getManager());
            st.setString(6, e.getWorkingTime());
            st.setString(7, e.getApprover());
            st.setString(8, e.getWorkingPlace());
            st.setString(9, e.getEmail());
            st.setInt(10, e.getEmergencyContact());
            st.setInt(11, e.getPhone());
            st.setString(12, e.getCertificateLevel());
            st.setString(13, e.getResearchArea());
            st.setString(14, e.getNationality());
            st.setInt(15, e.getIdNumber());
            st.setInt(16, e.getPassport());
            if (e.isGender() == true) {
                st.setInt(17, 1);
            } else {
                st.setInt(17, 0);
            }
            st.setString(18, e.getBirthPlace());
            st.setInt(19, e.getVisaNumber());
            st.setInt(20, e.getWorkLicenseNumber());
            st.setString(21, e.getVisaExpirationDate());
            st.setString(22, e.getWorkLicenseExpirationDate());
            st.setString(23, e.getPosition());
            if (e.isIsActive() == true) {
                st.setInt(24, 1);
            } else {
                st.setInt(24, 0);
            }
            ResultSet rs = st.executeQuery();
        } catch (SQLException ex) {
            System.out.println(ex);
        }
    }

    public void updateTemp(Employee e) {
        String sql = "use [Human Resource Service]\n "
                + "update [dbo].[Temp] set name=?,phone=?,email=?,manager=?,gender=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, e.getName());
            st.setInt(2, e.getPhone());
            st.setString(3, e.getEmail());
            st.setString(4, e.getManager());
            if (e.isGender() == true) {
                st.setInt(5, 1);
            } else {
                st.setInt(5, 0);
            }
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(e);
        }
    }

    public void updateTemp1(Employee e) {
        String sql = "use [Human Resource Service]\n "
                + "update [dbo].[Temp] set name=?,phone=?,email=?,manager=?,gender=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, e.getName());
            st.setInt(2, e.getPhone());
            st.setString(3, e.getEmail());
            st.setString(4, e.getManager());
            if (e.isGender() == true) {
                st.setInt(5, 1);
            } else {
                st.setInt(5, 0);
            }
            st.executeUpdate();
        } catch (SQLException ex) {
            System.out.println(e);
        }
    }

}

