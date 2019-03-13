package com.carservice.model;

/**
 * Created by Kanderka on 30.04.2017.
 */
public class Repair {
    private int id_repair;
    private int id_client;
    private String client_email;
    private String car_brand;
    private String  car_model;
    private String  motor_vehicle_licence_plate;
    private String  vin_number;
    private String  what_repair;
    private int status_repair;
    private String status;
    private int id_status;

    public Repair() {
    }

    public int getId_repair() {
        return id_repair;
    }

    public void setId_repair(int id_repair) {
        this.id_repair = id_repair;
    }

    public int getId_client() {
        return id_client;
    }

    public String getClient_email() {
        return client_email;
    }

    public void setClient_email(String client_email) {
        this.client_email = client_email;
    }

    public void setId_client(int id_client) {
        this.id_client = id_client;
    }

    public String getCar_brand() {
        return car_brand;
    }

    public void setCar_brand(String car_brand) {
        this.car_brand = car_brand;
    }

    public String getCar_model() {
        return car_model;
    }

    public void setCar_model(String car_model) {
        this.car_model = car_model;
    }

    public String getMotor_vehicle_licence_plate() {
        return motor_vehicle_licence_plate;
    }

    public void setMotor_vehicle_licence_plate(String motor_vehicle_licence_plate) {
        this.motor_vehicle_licence_plate = motor_vehicle_licence_plate;
    }

    public String getVin_number() {
        return vin_number;
    }

    public void setVin_number(String vin_number) {
        this.vin_number = vin_number;
    }

    public String getWhat_repair() {
        return what_repair;
    }

    public void setWhat_repair(String what_repair) {
        this.what_repair = what_repair;
    }

    public int getStatus_repair() {
        return status_repair;
    }

    public void setStatus_repair(int status_repair) {
        this.status_repair = status_repair;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public int getId_status() {
        return id_status;
    }

    public void setId_status(int id_status) {
        this.id_status = id_status;
    }
}
