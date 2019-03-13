package com.carservice.controller.dao;

import com.carservice.model.Employee;

import java.util.ArrayList;

/**
 * Created by Kanderka on 19.04.2017.
 */
public interface EmplInterface {
    public ArrayList<Employee> getAllEmployees();

    public Employee getEmployeeWhereId(int id_empl);

    public void addEmployee(Employee employee);

    public void deleteEmployee(int id_empl);

    public void updateEmployeeWhereId(Employee employee);

    public Boolean checkRegEmployeeEmail(String empl_email);

    public Boolean chceckIsAdmin(int id_empl);

    public Boolean chceckIsAdminEmail(String empl_email);

}
