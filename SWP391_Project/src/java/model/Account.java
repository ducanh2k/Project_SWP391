/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ADMIN
 */
public class Account {

    private int aID;
    private int uID;
    private String username;
    private String pass;
    private boolean role;

    public Account() {
    }

    public Account(int uID, String username, String pass, boolean role) {
        this.uID = uID;
        this.username = username;
        this.pass = pass;
        this.role = role;
    }

    public int getaID() {
        return aID;
    }

    public void setaID(int aID) {
        this.aID = aID;
    }

    public int getuID() {
        return uID;
    }

    public void setuID(int uID) {
        this.uID = uID;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPass() {
        return pass;
    }

    public void setPass(String pass) {
        this.pass = pass;
    }

    public boolean isRole() {
        return role;
    }

    public void setRole(boolean role) {
        this.role = role;
    }

    public Account(int aID, int uID, String username, String pass, boolean role) {
        this.aID = aID;
        this.uID = uID;
        this.username = username;
        this.pass = pass;
        this.role = role;
    }

    
}
