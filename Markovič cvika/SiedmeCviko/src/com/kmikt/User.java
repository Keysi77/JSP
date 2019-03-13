package com.kmikt;

/**
 * Created by miro on 04.04.2018.
 */
public class User {
    private String name, rc;
    private int age, sex;

    /*public User(String name, String rc, int age, int sex) {
        this.name = name;
        this.rc = rc;
        this.age = age;
        this.sex = sex;
    }*/

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getRc() {
        return rc;
    }

    public void setRc(String rc) {
        this.rc = rc;
    }

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public int getSex() {
        return sex;
    }

    public void setSex(int sex) {
        this.sex = sex;
    }

    public String getSexString() {
        if (sex == 0) {
            return "Žena";
        }
        else {
            return "Muž";
        }
    }
}
