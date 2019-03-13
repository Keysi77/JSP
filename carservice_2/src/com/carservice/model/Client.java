package com.carservice.model;

/**
 * Created by Kanderka on 29.04.2017.
 */
public class Client {
    private int id_client;
    private String client_first_name;
    private String client_second_name;
    private String client_email;
    private String client_pass;

    public Client() {

    }

    public int getId_client() {
        return id_client;
    }

    public void setId_client(int id_client) {
        this.id_client = id_client;
    }

    public String getClient_first_name() {
        return client_first_name;
    }

    public void setClient_first_name(String client_first_name) {
        this.client_first_name = client_first_name;
    }

    public String getClient_second_name() {
        return client_second_name;
    }

    public void setClient_second_name(String client_second_name) {
        this.client_second_name = client_second_name;
    }

    public String getClient_email() {
        return client_email;
    }

    public void setClient_email(String client_email) {
        this.client_email = client_email;
    }

    public String getClient_pass() {
        return client_pass;
    }

    public void setClient_pass(String client_pass) {
        this.client_pass = client_pass;
    }
}
