package com.kmikt;

import java.util.Random;

/**
 * Created by miro on 22.03.2018.
 */
public class Monitor {
    private int velkost;
    private String typ, farba;

    private String[] colorArray = {"#95EEF8", "#DEDEDE", "#EF6527", "#C0E941", "#6A68DB"}; // pomocne pole s nahodnou farbou
    private String[] typeArray = {"LCD", "OLED", "CRT"};    // pomocne pole s nahodnou hodnotou
    private Random random = new Random();   // objekt pre nahodne generovanie cisel z rozsahu

    public Monitor(int velkost, String typ, String farba) {
        this.velkost = velkost;
        this.typ = typ;
        this.farba = farba;
    }

    public Monitor() {
        this.velkost = random.nextInt(70);      // nahodna velkost do 70"
        this.typ = typeArray[random.nextInt(typeArray.length)];     // nahodna hodnota z pola typeArray
        this.farba = colorArray[random.nextInt(colorArray.length)];  // nahodna hodnota z pola colorArray
    }

    public int getVelkost() {
        return velkost;
    }

    public void setVelkost(int velkost) {
        this.velkost = velkost;
    }

    public String getTyp() {
        return typ;
    }

    public void setTyp(String typ) {
        this.typ = typ;
    }

    public String getFarba() {
        return farba;
    }

    public void setFarba(String farba) {
        this.farba = farba;
    }
}
