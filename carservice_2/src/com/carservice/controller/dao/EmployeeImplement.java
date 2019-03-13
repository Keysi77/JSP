package com.carservice.controller.dao;

import com.carservice.model.Employee;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.carservice.controller.DbConfing;

import javax.crypto.spec.SecretKeySpec;

/**
 * Created by Kanderka on 19.04.2017.
 */
public class EmployeeImplement implements EmplInterface {
    private DbConfing con;

    public EmployeeImplement() {
        this.con = new DbConfing();
    }

    @Override
    public ArrayList<Employee> getAllEmployees() {
        ArrayList<Employee> employees = new ArrayList<>();

        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;

        DbConfing db = new DbConfing();
        con = db.getConnection();

        try {
            ps = con.prepareStatement("SELECT * FROM `employeesservice`");
            rs = ps.executeQuery();
// ArrayList<Employee> pom = new ArrayList<>();
            while (rs.next()) {
                Employee employee = new Employee();


                employee.setId_empl(rs.getInt("id_empl"));
                employee.setEmpl_nic_name(rs.getString("empl_nic_name"));
                employee.setEmpl_position(rs.getString("empl_position"));
                employee.setEmpl_pass(rs.getString("empl_pass"));

                employee.setEmpl_email(rs.getString("empl_email"));
                employee.setEmpl_tel_mun(rs.getString("empl_tel_mun"));
                employee.setEmpl_personal_id(rs.getString("empl_personal_id"));
                employee.setIs_admin(rs.getBoolean("is_admin"));

                employees.add(employee);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closeResultSet(rs);
            db.closePreparedStatement(ps);
            db.closeConnection(con);
        }
        return employees;     // retrun Students ArrayList
    }

    @Override
    public Employee getEmployeeWhereId(int id_empl) {
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;

        DbConfing db = new DbConfing();
        Employee pom = new Employee();
        con = db.getConnection();

        try {
            ps = con.prepareStatement("SELECT * FROM `employeesservice` WHERE id_empl = ?");
            ps.setInt(1, id_empl);
            rs = ps.executeQuery();
            while (rs.next()) {
                pom.setId_empl(rs.getInt("id_empl"));
                pom.setEmpl_nic_name(rs.getString("empl_nic_name"));
                pom.setEmpl_position(rs.getString("empl_position"));
                pom.setEmpl_pass(rs.getString("empl_pass"));
                pom.setEmpl_email(rs.getString("empl_email"));
                pom.setEmpl_tel_mun(rs.getString("empl_tel_mun"));
                pom.setEmpl_personal_id(rs.getString("empl_personal_id"));
                pom.setIs_admin(rs.getBoolean("is_admin"));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closeResultSet(rs);
            db.closePreparedStatement(ps);
            db.closeConnection(con);
        }
        return pom;
    }

    @Override
    public void addEmployee(Employee employee) {
        Connection con = null;
        PreparedStatement ps = null;

        DbConfing db = new DbConfing();
        con = db.getConnection();

        try {
            String sql = "insert into employeesservice (empl_nic_name, empl_position, empl_pass,empl_email,empl_tel_mun , empl_personal_id , is_admin) values (?,?,?,?,?,?,?)";

            ps = con.prepareStatement(sql);
            ps.setString(1, employee.getEmpl_nic_name());
            ps.setString(2, employee.getEmpl_position());
            ps.setString(3, employee.getEmpl_pass());
            ps.setString(4, employee.getEmpl_email());
            ps.setString(5, employee.getEmpl_tel_mun());
            ps.setString(6, employee.getEmpl_personal_id());
            ps.setBoolean(7, employee.isIs_admin());

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closePreparedStatement(ps);
            db.closeConnection(con);
        }
    }

    @Override
    public void deleteEmployee(int id_empl) {
        Connection con = null;
        PreparedStatement ps = null;

        DbConfing db = new DbConfing();

        con = db.getConnection();
        try {
            String sql = "DELETE FROM employeesservice WHERE id_empl = ? ";
            ps = con.prepareStatement(sql);
            ps.setInt(1, id_empl);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closePreparedStatement(ps);
            db.closeConnection(con);
        }
    }

    @Override
    public void updateEmployeeWhereId(Employee employee) {
        Connection con = null;
        PreparedStatement ps = null;

        DbConfing db = new DbConfing();

        con = db.getConnection();

        try {
            String sql = "UPDATE `employeesservice` SET `empl_nic_name` = ?, `empl_position` = ?, `empl_pass` = ?, `empl_email` = ?, `empl_tel_mun` = ?, `empl_personal_id` = ?, `is_admin` = ? WHERE `employeesservice`.`id_empl` = ?";
            ps = con.prepareStatement(sql);

            ps.setString(1, employee.getEmpl_nic_name());
            ps.setString(2, employee.getEmpl_position());
            ps.setString(3, employee.getEmpl_pass());
            ps.setString(4, employee.getEmpl_email());
            ps.setString(5, employee.getEmpl_tel_mun());
            ps.setString(6, employee.getEmpl_personal_id());
            ps.setBoolean(7, employee.isIs_admin());
            ps.setInt(8, employee.getId_empl());

            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closePreparedStatement(ps);
            db.closeConnection(con);
        }
    }

    @Override
    public Boolean checkRegEmployeeEmail(String empl_email) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        DbConfing db = new DbConfing();
        Employee e = new Employee();
        con = db.getConnection();
        Boolean pom = null;

        try {
            //String sql = "SELECT * FROM `employeesservice` WHERE empl_email='" + empl_email + "'";
            String sql = "SELECT * FROM `employeesservice` WHERE empl_email= ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, empl_email);
            rs = ps.executeQuery();

            if (rs.next()) {
                pom = true;
            } else {
                pom = false;
            }
        } catch (SQLException e1) {
            e1.printStackTrace();
        }

        return pom;
    }


    @Override
    public Boolean chceckIsAdmin(int id_empl) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        DbConfing db = new DbConfing();
        Employee e = new Employee();
        con = db.getConnection();
        Boolean pom = null;

        try {
            //String sql = "SELECT * FROM `employeesservice` WHERE empl_email='" + empl_email + "'";
            String sql = "SELECT * FROM `employeesservice` WHERE id_empl = '"+id_empl+"' AND is_admin= '1'";
            ps = con.prepareStatement(sql);
            //ps.setInt(1, id_empl);
            rs = ps.executeQuery();
            if (rs.next()) {
                pom = true;
            } else {
                pom = false;
            }
        } catch (SQLException e1) {
            e1.printStackTrace();
        }

        return pom;
    }

    @Override
    public Boolean chceckIsAdminEmail(String empl_email) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        DbConfing db = new DbConfing();
        Employee e = new Employee();
        con = db.getConnection();
        Boolean pom = null;

        try {
            //String sql = "SELECT * FROM `employeesservice` WHERE empl_email='" + empl_email + "'";
            String sql = "SELECT * FROM `employeesservice` WHERE empl_email = '"+empl_email+"' AND is_admin= '1'";
            ps = con.prepareStatement(sql);
            //ps.setInt(1, id_empl);
            rs = ps.executeQuery();
            if (rs.next()) {
                pom = true;
            } else {
                pom = false;
            }
        } catch (SQLException e1) {
            e1.printStackTrace();
        }
        return pom;
    }
}
