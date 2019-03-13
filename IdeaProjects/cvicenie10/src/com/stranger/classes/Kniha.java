package com.stranger.classes;

/**
 * Created by student on 25.04.2017.
 */
public class Kniha {

    private int id;
    private String nazov;
    private String popis;
    private double cena;
    private boolean pozicana;

    public Kniha(int id, String nazov, String popis, double cena, boolean pozicana) {
        this.id = id;
        this.nazov = nazov;
        this.popis = popis;
        this.cena = cena;
        this.pozicana = pozicana;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getNazov() {
        return nazov;
    }

    public void setNazov(String nazov) {
        this.nazov = nazov;
    }

    public String getPopis() {
        return popis;
    }

    public void setPopis(String popis) {
        this.popis = popis;
    }

    public double getCena() {
        return cena;
    }

    public void setCena(double cena) {
        this.cena = cena;
    }

    public boolean isPozicana() {
        return pozicana;
    }

    public void setPozicana(boolean pozicana) {
        this.pozicana = pozicana;
    }
}
