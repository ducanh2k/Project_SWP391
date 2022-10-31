/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Dell
 */
public class Certificate {
    private int CertificateID;

    @Override
    public String toString() {
        return "Certificate{" + "CertificateID=" + CertificateID + ", CName=" + CName + '}';
    }
    private String CName;

    public Certificate() {
    }

    public Certificate(int CertificateID, String CName) {
        this.CertificateID = CertificateID;
        this.CName = CName;
    }

    public int getCertificateID() {
        return CertificateID;
    }

    public void setCertificateID(int CertificateID) {
        this.CertificateID = CertificateID;
    }

    public String getCName() {
        return CName;
    }

    public void setCName(String CName) {
        this.CName = CName;
    }
    
}
