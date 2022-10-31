/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author User
 */
public class Department {
    private int Did;
    private String Dname;
    private int count_employee;
    private boolean is_active;
    private int managerID;
    private String managerName;    

    public Department() {
    }

    public Department(int Did, String Dname, boolean is_active) {
        this.Did = Did;
        this.Dname = Dname;
        this.is_active = is_active;
    }

    public int getDid() {
        return Did;
    }

    public void setDid(int Did) {
        this.Did = Did;
    }

    public String getDname() {
        return Dname;
    }

    public void setDname(String Dname) {
        this.Dname = Dname;
    }

    public boolean isIs_active() {
        return is_active;
    }

    public void setIs_active(boolean is_active) {
        this.is_active = is_active;
    }

    public int getCount_employee() {
        return count_employee;
    }

    public void setCount_employee(int count_employee) {
        this.count_employee = count_employee;
    }

    public int getManagerID() {
        return managerID;
    }

    public void setManagerID(int managerID) {
        this.managerID = managerID;
    }

    public String getManagerName() {
        return managerName;
    }

    public void setManagerName(String managerName) {
        this.managerName = managerName;
    }

    @Override
    public String toString() {
        return "Department{" + "Did=" + Did + ", Dname=" + Dname + ", count_employee=" + count_employee + ", is_active=" + is_active + '}';
    }
    
}