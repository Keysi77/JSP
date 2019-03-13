package com.carservice.controller.dao;

import com.carservice.model.Client;

import java.util.ArrayList;

/**
 * Created by Kanderka on 29.04.2017.
 */
public interface ClientInterface {
    public ArrayList<Client> getAllClients();

    public Client getClientWhereId(int id_client);

    public void addClient(Client client);

    public void deleteClient(int id_client);

    public void updateClientWhereId(Client client);

    public Boolean checkRegClientEmail(String client_email);

    public Boolean loginCheckClient(String empl_email, String client_pass);



}
