/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Dell
 */
public class Contract {
    private int Eid;
    private int Did;
    private String name;
    private String StartingDate;
    private String EndDate;
    private String Status;
    private String workingTime;
    private double Salary;

    public Contract(int Eid, int Did, String name, String StartingDate, String EndDate, String Status, String workingTime, double Salary) {
        this.Eid = Eid;
        this.Did = Did;
        this.name = name;
        this.StartingDate = StartingDate;
        this.EndDate = EndDate;
        this.Status = Status;
        this.workingTime = workingTime;
        this.Salary = Salary;
    }

    public Contract() {
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

    public String getStartingDate() {
        return StartingDate;
    }

    public void setStartingDate(String StartingDate) {
        this.StartingDate = StartingDate;
    }

    public String getEndDate() {
        return EndDate;
    }

    public void setEndDate(String EndDate) {
        this.EndDate = EndDate;
    }

    @Override
    public String toString() {
        return "Contract{" + "Eid=" + Eid + ", Did=" + Did + ", name=" + name + ", StartingDate=" + StartingDate + ", EndDate=" + EndDate + ", Status=" + Status + ", workingTime=" + workingTime + ", Salary=" + Salary + '}';
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    public String getWorkingTime() {
        return workingTime;
    }

    public void setWorkingTime(String workingTime) {
        this.workingTime = workingTime;
    }

    public double getSalary() {
        return Salary;
    }

    public void setSalary(double Salary) {
        this.Salary = Salary;
    }
}
