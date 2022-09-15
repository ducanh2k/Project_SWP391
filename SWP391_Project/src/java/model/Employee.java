/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Dell
 */
public class Employee {

    private int Eid;
    private int Did;
    private String name;
    private int mentor;
    private int CertificateID;
    private String manager;
    private String workingTime;
    private String approver;
    private String workingPlace;
    private String email;
    private int emergencyContact;
    private int phone;
    private String picture;
    private String certificateLevel;
    private String researchArea;
    private String nationality;
    private int idNumber;
    private int passport;
    private boolean gender;
    private String birthPlace;
    private int visaNumber;
    private int workLicenseNumber;
    private String visaExpirationDate;
    private String workLicenseExpirationDate;
    private String position;

    public Employee(int Eid, int Did, String name, int mentor, int CertificateID, String manager, String workingTime, String approver, String workingPlace, String email, int emergencyContact, int phone, String certificateLevel, String researchArea, String nationality, int idNumber, int passport, boolean gender, String birthPlace, int visaNumber, int workLicenseNumber, String visaExpirationDate, String workLicenseExpirationDate, String position) {
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
        this.certificateLevel = certificateLevel;
        this.researchArea = researchArea;
        this.nationality = nationality;
        this.idNumber = idNumber;
        this.passport = passport;
        this.gender = gender;
        this.birthPlace = birthPlace;
        this.visaNumber = visaNumber;
        this.workLicenseNumber = workLicenseNumber;
        this.visaExpirationDate = visaExpirationDate;
        this.workLicenseExpirationDate = workLicenseExpirationDate;
        this.position = position;
    }

    public int getEid() {
        return Eid;
    }

    @Override
    public String toString() {
        return "Employee{" + "Eid=" + Eid + ", Did=" + Did + ", name=" + name + ", mentor=" + mentor + ", CertificateID=" + CertificateID + ", manager=" + manager + ", workingTime=" + workingTime + ", approver=" + approver + ", workingPlace=" + workingPlace + ", email=" + email + ", emergencyContact=" + emergencyContact + ", phone=" + phone + ", picture=" + picture + ", certificateLevel=" + certificateLevel + ", researchArea=" + researchArea + ", nationality=" + nationality + ", idNumber=" + idNumber + ", passport=" + passport + ", gender=" + gender + ", birthPlace=" + birthPlace + ", visaNumber=" + visaNumber + ", workLicenseNumber=" + workLicenseNumber + ", visaExpirationDate=" + visaExpirationDate + ", workLicenseExpirationDate=" + workLicenseExpirationDate + '}';
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

    public int getEmergencyContact() {
        return emergencyContact;
    }

    public void setEmergencyContact(int emergencyContact) {
        this.emergencyContact = emergencyContact;
    }

    public int getPhone() {
        return phone;
    }

    public void setPhone(int phone) {
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

    public int getIdNumber() {
        return idNumber;
    }

    public void setIdNumber(int idNumber) {
        this.idNumber = idNumber;
    }

    public int getPassport() {
        return passport;
    }

    public void setPassport(int passport) {
        this.passport = passport;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getBirthPlace() {
        return birthPlace;
    }

    public void setBirthPlace(String birthPlace) {
        this.birthPlace = birthPlace;
    }

    public int getVisaNumber() {
        return visaNumber;
    }

    public void setVisaNumber(int visaNumber) {
        this.visaNumber = visaNumber;
    }

    public int getWorkLicenseNumber() {
        return workLicenseNumber;
    }

    public void setWorkLicenseNumber(int workLicenseNumber) {
        this.workLicenseNumber = workLicenseNumber;
    }

    public String getVisaExpirationDate() {
        return visaExpirationDate;
    }

    public void setVisaExpirationDate(String visaExpirationDate) {
        this.visaExpirationDate = visaExpirationDate;
    }

    public String getWorkLicenseExpirationDate() {
        return workLicenseExpirationDate;
    }

    public void setWorkLicenseExpirationDate(String workLicenseExpirationDate) {
        this.workLicenseExpirationDate = workLicenseExpirationDate;
    }

    public Employee(int Eid, int Did, String name, int mentor, int CertificateID, String manager, String workingTime, String approver, String workingPlace, String email, int emergencyContact, int phone, String picture, String certificateLevel, String researchArea, String nationality, int idNumber, int passport, boolean gender, String birthPlace, int visaNumber, int workLicenseNumber, String visaExpirationDate, String workLicenseExpirationDate, String position) {
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
        this.birthPlace = birthPlace;
        this.visaNumber = visaNumber;
        this.workLicenseNumber = workLicenseNumber;
        this.visaExpirationDate = visaExpirationDate;
        this.workLicenseExpirationDate = workLicenseExpirationDate;
        this.position = position;
    }

    public String getPosition() {
        return position;
    }

    public void setPosition(String position) {
        this.position = position;
    }

    public Employee() {
    }

}
