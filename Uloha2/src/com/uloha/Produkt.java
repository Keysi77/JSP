package com.uloha;

public class Produkt {
    private String rozmerX;
    private String rozmerY;
    private String material;
    private String datum;
    private Integer cena;
    private String poznamka;




    public String getRozmerX() {
        return rozmerX;
    }

    public void setRozmerX(String rozmerX) {
        this.rozmerX = rozmerX;
    }

    public String getRozmerY() {
        return rozmerY;
    }

    public void setRozmerY(String rozmerY) {
        this.rozmerY = rozmerY;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public String getDatum() {
        return datum;
    }

    public void setDatum(String datum) {
        this.datum = datum;
    }

    public Integer getCena() {
        return cena;
    }

    public void setCena(Integer cena) {
        this.cena = cena;
    }

    public String getPoznamka() {
        return poznamka;
    }

    public void setPoznamka(String poznamka) {
        this.poznamka = poznamka;
    }

}
