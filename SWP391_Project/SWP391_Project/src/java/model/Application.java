/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Admin
 */
public class Application {
    private int Aid;
    private String Eid;
    private String Title;
    private String Body;
    private String Ename;
    private String Status;
    private String Time;
    public Application() {
    }

    public int getAid() {
        return Aid;
    }

    public void setAid(int Aid) {
        this.Aid = Aid;
    }

    public String getEid() {
        return Eid;
    }

    public void setEid(String Eid) {
        this.Eid = Eid;
    }

    public String getTitle() {
        return Title;
    }

    public void setTitle(String Title) {
        this.Title = Title;
    }

    public String getBody() {
        return Body;
    }

    public void setBody(String Body) {
        this.Body = Body;
    }

    public String getEname() {
        return Ename;
    }

    public void setEname(String Ename) {
        this.Ename = Ename;
    }

    public String getStatus() {
        return Status;
    }

    public void setStatus(String Status) {
        this.Status = Status;
    }

    public String getTime() {
        return Time;
    }

    public void setTime(String Time) {
        this.Time = Time;
    }

    public Application(String Eid, String Title, String Body, String Status, String Time) {
        this.Eid = Eid;
        this.Title = Title;
        this.Body = Body;
        this.Status = Status;
        this.Time = Time;
    }

   
    
}
