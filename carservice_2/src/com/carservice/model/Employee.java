package com.carservice.model;

import java.util.Date;

/**
 * Created by Kanderka on 19.04.2017.
 */
public class Employee {
    private int id_empl;
    private String empl_nic_name;
    private String empl_position;
    private String empl_pass;
    private String empl_email;
    private String empl_tel_mun;
    private String empl_personal_id;
    //private Date date_registration;
    private boolean is_admin;

    public Employee() {
    }

    public int getId_empl() {
        return id_empl;
    }

    public void setId_empl(int id_empl) {
        this.id_empl = id_empl;
    }

    public String getEmpl_nic_name() {
        return empl_nic_name;
    }

    public void setEmpl_nic_name(String empl_nic_name) {
        this.empl_nic_name = empl_nic_name;
    }

    public String getEmpl_position() {
        return empl_position;
    }

    public void setEmpl_position(String empl_position) {
        this.empl_position = empl_position;
    }

    public String getEmpl_pass() {
        return empl_pass;
    }

    public void setEmpl_pass(String empl_pass) {
        this.empl_pass = empl_pass;
    }

    public String getEmpl_email() {
        return empl_email;
    }

    public void setEmpl_email(String empl_email) {
        this.empl_email = empl_email;
    }

    public String getEmpl_tel_mun() {
        return empl_tel_mun;
    }

    public void setEmpl_tel_mun(String empl_tel_mun) {
        this.empl_tel_mun = empl_tel_mun;
    }

    public String getEmpl_personal_id() {
        return empl_personal_id;
    }

    public void setEmpl_personal_id(String empl_personal_id) {
        this.empl_personal_id = empl_personal_id;
    }

   /* public Date getDate_registration() {
        return date_registration;
    }

    public void setDate_registration(Date date_registration) {
        this.date_registration = date_registration;
    }*/

    public boolean isIs_admin() {
        return is_admin;
    }

    public void setIs_admin(boolean is_admin) {
        this.is_admin = is_admin;
    }
}
