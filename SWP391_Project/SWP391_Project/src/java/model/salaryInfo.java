/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author Dell
 */
public class salaryInfo {
    private String eid;
    private String cs;
    private String ol;
    private String hw;
    private String sa;
    private String bonus;
    private String ii;

    public String getEid() {
        return eid;
    }

    public void setEid(String eid) {
        this.eid = eid;
    }

    public String getCs() {
        return cs;
    }

    public void setCs(String cs) {
        this.cs = cs;
    }

    public String getOl() {
        return ol;
    }

    public void setOl(String ol) {
        this.ol = ol;
    }

    public String getHw() {
        return hw;
    }

    public void setHw(String hw) {
        this.hw = hw;
    }

    public String getSa() {
        return sa;
    }

    public void setSa(String sa) {
        this.sa = sa;
    }

    public String getBonus() {
        return bonus;
    }

    public void setBonus(String bonus) {
        this.bonus = bonus;
    }

    public String getIi() {
        return ii;
    }

    public void setIi(String ii) {
        this.ii = ii;
    }

    public salaryInfo() {
    }

    public salaryInfo(String eid, String cs, String ol, String hw, String sa, String bonus, String ii) {
        this.eid = eid;
        this.cs = cs;
        this.ol = ol;
        this.hw = hw;
        this.sa = sa;
        this.bonus = bonus;
        this.ii = ii;
    }

    @Override
    public String toString() {
        return "salaryInfo{" + "eid=" + eid + ", cs=" + cs + ", ol=" + ol + ", hw=" + hw + ", sa=" + sa + ", bonus=" + bonus + ", ii=" + ii + '}';
    }
    
}
