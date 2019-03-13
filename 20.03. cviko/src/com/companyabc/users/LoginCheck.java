package com.companyabc.users;

/**
 * Created by student on 13.03.2017.
 */
public class LoginCheck {
    public LoginCheck(){

    }
    public boolean isValid(String login, String password){
        Users user = new Users();
        boolean isOk = false;
        if(user.getLogin().equals(login)&& user.getPassword().equals(password)){
            isOk=true;
        }
        else{
            isOk=false;
        }
        return(isOk);
    }
}