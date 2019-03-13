package com.kmit;

/**
 * Created by student on 14.03.2018.
 */
public class bank {
    private String nazov;
    private String iban;
    private Integer suma;

    //void znamena ze metoda nebude nic vracat

    public String getNazov() {
        return nazov;
    }

    public void setNazov(String nazov) {
        this.nazov = nazov;
    }

    public String getIban() {
        return iban;
    }

    public void setIban(String iban) {
        this.iban = iban;
    }

    public Integer getSuma() {
        return suma;
    }

    public void setSuma(Integer suma) {
        this.suma = suma;
    }
}
