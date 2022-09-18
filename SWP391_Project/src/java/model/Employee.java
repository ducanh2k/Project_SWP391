/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author DUCHIEUPC.COM
 */
public class Employee {

    int Eid;
    int Did;
    String name;
    int mentor;
    int CertificateID;
    String manager;
    String workingTime;
    String approver;
    String workingPlace;
    String email;
    String emergencyContact;
    String phone;
    String picture;
    String certificateLevel;
    String researchArea;
    String nationality;
    Long idNumber;
    Long passport;
    Boolean gender;
    String birthplace;
    Long visaNumber;
    Long workLicenceNumber;
    Date visaExpirationDate;
    Date workLicenceExpirationDate;
    String position;
    Department department;
    Certificate certificate;
    Account mentorAccount;

    public Employee(int Eid, int Did, String name, int mentor, int CertificateID, String manager, String workingTime, String approver, String workingPlace, String email, String emergencyContact, String phone, String picture, String certificateLevel, String researchArea, String nationality, Long idNumber, Long passport, Boolean gender, String birthplace, Long visaNumber, Long workLicenceNumber, Date visaExpirationDate, Date workLicenceExpirationDate, String position) {
        this.Eid = Eid;
        this.Did = Did;
        this.name = name;
        this.mentor = mentor;
        this.CertificateID = CertificateID;
        this.manager = manager;
        this.workingTime = workingTime;
        this.approver = approver;
        this.workingPlace = workingPlace;
        this.email = email;
        this.emergencyContact = emergencyContact;
        this.phone = phone;
        this.picture = picture;
        this.certificateLevel = certificateLevel;
        this.researchArea = researchArea;
        this.nationality = nationality;
        this.idNumber = idNumber;
        this.passport = passport;
        this.gender = gender;
        this.birthplace = birthplace;
        this.visaNumber = visaNumber;
        this.workLicenceNumber = workLicenceNumber;
        this.visaExpirationDate = visaExpirationDate;
        this.workLicenceExpirationDate = workLicenceExpirationDate;
        this.position = position;
    }

    public Account getMentorAccount() {
        return mentorAccount;
    }

    public void setMentorAccount(Account mentorAccount) {
        this.mentorAccount = mentorAccount;
    }
 
    public int getEid() {
        return Eid;
    }

    public void setEid(int Eid) {
        this.Eid = Eid;
    }

    public int getDid() {
        return Did;
    }

    public void setDid(int Did) {
        this.Did = Did;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getMentor() {
        return mentor;
    }

    public void setMentor(int mentor) {
        this.mentor = mentor;
    }

    public int getCertificateID() {
        return CertificateID;
    }

    public void setCertificateID(int CertificateID) {
        this.CertificateID = CertificateID;
    }

    public String getManager() {
        return manager;
    }

    public void setManager(String manager) {
        this.manager = manager;
    }

    public String getWorkingTime() {
        return workingTime;
    }

    public void setWorkingTime(String workingTime) {
        this.workingTime = workingTime;
    }

    public String getApprover() {
        return approver;
    }

    public void setApprover(String approver) {
        this.approver = approver;
    }

    public String getWorkingPlace() {
        return workingPlace;
    }

    public void setWorkingPlace(String workingPlace) {
        this.workingPlace = workingPlace;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getEmergencyContact() {
        return emergencyContact;
    }

    public void setEmergencyContact(String emergencyContact) {
        this.emergencyContact = emergencyContact;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public String getCertificateLevel() {
        return certificateLevel;
    }

    public void setCertificateLevel(String certificateLevel) {
        this.certificateLevel = certificateLevel;
    }

    public String getResearchArea() {
        return researchArea;
    }

    public void setResearchArea(String researchArea) {
        this.researchArea = researchArea;
    }

    public String getNationality() {
        return nationality;
    }

    public void setNationality(String nationality) {
        this.nationality = nationality;
    }

    public Long getIdNumber() {
        return idNumber;
    }

    public void setIdNumber(Long idNumber) {
        this.idNumber = idNumber;
    }

    public Long getPassport() {
        return passport;
    }

    public void setPassport(Long passport) {
        this.passport = passport;
    }

    public Boolean getGender() {
        return gender;
    }

    public void setGender(Boolean gender) {
        this.gender = gender;
    }

    public String getBirthplace() {
        return birthplace;
    }

    public void setBirthplace(String birthplace) {
        this.birthplace = birthplace;
    }

    public Long getVisaNumber() {
        return visaNumber;
    }

    public void setVisaNumber(Long visaNumber) {
        this.visaNumber = visaNumber;
    }

    public Long getWorkLicenceNumber() {
        return workLicenceNumber;
    }

    public void setWorkLicenceNumber(Long workLicenceNumber) {
        this.workLicenceNumber = workLicenceNumber;
    }

    public Date getVisaExpirationDate() {
        return visaExpirationDate;
    }

    public void setVisaExpirationDate(Date visaExpirationDate) {
        this.visaExpirationDate = visaExpirationDate;
    }

    public Date getWorkLicenceExpirationDate() {
        return workLicenceExpirationDate;
    }

    public void setWorkLicenceExpirationDate(Date workLicenceExpirationDate) {
        this.workLicenceExpirationDate = workLicenceExpirationDate;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public Certificate getCertificate() {
        return certificate;
    }

    public void setCertificate(Certificate certificate) {
        this.certificate = certificate;
    }
}
