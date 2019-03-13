package com.companyabc.users;

/**
 * Created by student on 13.03.2017.
 */
public class Users {
    String login;
    String password;

    public Users(){
        this.login = "abc";
        this.password= "abc123"; // udaje naplnene pomocou konstruktora
    }
    public String getLogin() { // PTM generate - getter and setter
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
