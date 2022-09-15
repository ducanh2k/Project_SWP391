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

    private int id;
    private int Eid;
    private String username;
    private String password;
    private int roleid;

    public Account() {
    }

    public Account(int id, int Eid, String username, String password, int roleid) {
        this.id = id;
        this.Eid = Eid;
        this.username = username;
        this.password = password;
        this.roleid = roleid;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getEid() {
        return Eid;
    }

    public void setUid(int Eid) {
        this.Eid = Eid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public int getRoleid() {
        return roleid;
    }

    public void setRoleid(int roleid) {
        this.roleid = roleid;
    }

    
    
}
