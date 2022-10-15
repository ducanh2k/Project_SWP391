/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

import java.util.Date;


/**
 *
 * @author Dell
 */
public class Attendant {
    private int id;
    private String date;
    private Employee employee;
    private String room;
    private Department department;
    private String status;

    public Attendant() {
    }

    public Attendant(int id, String date, Employee employee, String room, Department department, String status) {
        this.id = id;
        this.date = date;
        this.employee = employee;
        this.room = room;
        this.department = department;
        this.status = status;
    }

    public int getId() {
        return id;
    }

    @Override
    public String toString() {
        return "Attendant{" + "id=" + id + ", date=" + date + ", employee=" + employee + ", room=" + room + ", department=" + department + ", status=" + status + '}';
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public Employee getEmployee() {
        return employee;
    }

    public void setEmployee(Employee employee) {
        this.employee = employee;
    }

    public String getRoom() {
        return room;
    }

    public void setRoom(String room) {
        this.room = room;
    }

    public Department getDepartment() {
        return department;
    }

    public void setDepartment(Department department) {
        this.department = department;
    }

    public String isStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
    
    
}
