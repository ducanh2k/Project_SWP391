/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Dell
 */
public class Approval {
    private String approvalObject;
    private String petitioner;
    private String category;
    private String des;
    private String approver;
    private String properties; 

    public Approval() {
    }

    public Approval(String approvalObject, String petitioner, String category, String des, String approver, String properties) {
        this.approvalObject = approvalObject;
        this.petitioner = petitioner;
        this.category = category;
        this.des = des;
        this.approver = approver;
        this.properties = properties;
    }

    public String getApprovalObject() {
        return approvalObject;
    }

    public void setApprovalObject(String approvalObject) {
        this.approvalObject = approvalObject;
    }

    public String getPetitioner() {
        return petitioner;
    }

    public void setPetitioner(String petitioner) {
        this.petitioner = petitioner;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getDes() {
        return des;
    }

    public void setDes(String des) {
        this.des = des;
    }

    public String getApprover() {
        return approver;
    }

    public void setApprover(String approver) {
        this.approver = approver;
    }

    public String getProperties() {
        return properties;
    }

    public void setProperties(String properties) {
        this.properties = properties;
    }

    @Override
    public String toString() {
        return "Approval{" + "approvalObject=" + approvalObject + ", petitioner=" + petitioner + ", category=" + category + ", des=" + des + ", approver=" + approver + ", properties=" + properties + '}';
    }
    
}
