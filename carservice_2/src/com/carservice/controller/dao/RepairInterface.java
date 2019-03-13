package com.carservice.controller.dao;

import com.carservice.model.Repair;

import java.util.ArrayList;

/**
 * Created by Kanderka on 30.04.2017.
 */
public interface RepairInterface {

    public ArrayList<Repair> getAllRepairs();

    public Repair getRepairWhereId(int id_repair);

    public ArrayList <Repair> getRepairWhereIdClient(int id_client);

    public void addRepair(Repair repair);

    public void deleteRepair(int id_repair);

    public void updateRepairWhereId(Repair repair);

    public ArrayList<Repair> getAllClientsRepairs(String client_email);

    public ArrayList<Repair> getAllClientsRepairsWithStatus(String client_email);

    public ArrayList<Repair> getAllStatusRepair();

    public ArrayList<Repair> getAllWaitingRepairs();

    public ArrayList<Repair> getAllDoneRepairs();

    public ArrayList<Repair> getAllRepairsWithStatusCode(int status_repair);


}
