/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Dell
 */
public class User {
    private int Uid;
    private String place;
    private String name;
    private String email;
    private int phone;
    private String picture;
    private String workingUnit;

    public User(int Uid, String place, String name, String email, int phone, String workingUnit) {
        this.Uid = Uid;
        this.place = place;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.workingUnit = workingUnit;
    }

    public User(int Uid, String place, String name, String email, int phone, String picture, String workingUnit) {
        this.Uid = Uid;
        this.place = place;
        this.name = name;
        this.email = email;
        this.phone = phone;
        this.picture = picture;
        this.workingUnit = workingUnit;
    }

    public User() {
    }


    public int getUid() {
        return Uid;
    }

    public void setUid(int Uid) {
        this.Uid = Uid;
    }

    public String getPlace() {
        return place;
    }

    public void setPlace(String place) {
        this.place = place;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
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

    public String getWorkingUnit() {
        return workingUnit;
    }

    public void setWorkingUnit(String workingUnit) {
        this.workingUnit = workingUnit;
    }
    
}
