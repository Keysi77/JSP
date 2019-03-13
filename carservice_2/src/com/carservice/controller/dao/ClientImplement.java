package com.carservice.controller.dao;

import com.carservice.controller.DbConfing;
import com.carservice.model.Client;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 * Created by Kanderka on 29.04.2017.
 */
public class ClientImplement implements ClientInterface {
    @Override
    public ArrayList<Client> getAllClients() {
        ArrayList<Client> clients = new ArrayList<>();

        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;

        DbConfing db = new DbConfing();
        con = db.getConnection();

        try {
            ps = con.prepareStatement("SELECT * FROM `clients`");
            rs = ps.executeQuery();

            while (rs.next()) {
                Client client = new Client();

                client.setId_client(rs.getInt("id_client"));
                client.setClient_first_name(rs.getString("client_first_name"));
                client.setClient_second_name(rs.getString("client_second_name"));
                client.setClient_email(rs.getString("client_email"));
                client.setClient_pass(rs.getString("client_pass"));

                clients.add(client);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            db.closeResultSet(rs);
            db.closePreparedStatement(ps);
            db.closeConnection(con);
        }
        return clients;
    }

    @Override
    public Client getClientWhereId(int id_client) {
        Connection con = null;
        ResultSet rs = null;
        PreparedStatement ps = null;
        DbConfing db = new DbConfing();
        con = db.getConnection();
        Client client = new Client();

        try {
            String sql = "SELECT * FROM `clients` WHERE id_client = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, id_client);
            rs = ps.executeQuery();
            while (rs.next()) {
                client.setId_client(rs.getInt("id_client"));
                client.setClient_first_name(rs.getString("client_first_name"));
                client.setClient_second_name(rs.getString("client_second_name"));
                client.setClient_email(rs.getString("client_email"));
                client.setClient_pass(rs.getString("client_pass"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            db.closePreparedStatement(ps);
            db.closeResultSet(rs);
            db.closeConnection(con);
        }
        return client;
    }

    @Override
    public void addClient(Client client) {
        Connection con = null;
        PreparedStatement ps = null;
        DbConfing db = new DbConfing();
        con = db.getConnection();

        try {
            String sql = "INSERT INTO `clients` (`client_first_name`, `client_second_name`, `client_email`, `client_pass`) VALUES (?,?,?,?)";
            ps = con.prepareStatement(sql);

            ps.setString(1, client.getClient_first_name());
            ps.setString(2, client.getClient_second_name());
            ps.setString(3, client.getClient_email());
            ps.setString(4, client.getClient_pass());

            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            db.closePreparedStatement(ps);
            db.closeConnection(con);
        }
    }

    @Override
    public void deleteClient(int id_client) {
        Connection con = null;
        PreparedStatement ps = null;
        DbConfing db = new DbConfing();
        con = db.getConnection();
        try {
            String sql = "DELETE FROM `clients` WHERE id_client = ?";
            ps = con.prepareStatement(sql);
            ps.setInt(1, id_client);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            db.closePreparedStatement(ps);
            db.closeConnection(con);
        }
    }

    @Override
    public void updateClientWhereId(Client client) {
        Connection con = null;
        PreparedStatement ps = null;
        DbConfing db = new DbConfing();
        con = db.getConnection();
        try {
            String sql = "UPDATE `clients` SET `client_first_name` = ?, `client_second_name` = ?, `client_email` = ?, `client_pass` = ? WHERE `clients`.`id_client` = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1,client.getClient_first_name());
            ps.setString(2,client.getClient_second_name());
            ps.setString(3,client.getClient_email());
            ps.setString(4,client.getClient_pass());
            ps.setInt(5,client.getId_client());
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            db.closePreparedStatement(ps);
            db.closeConnection(con);
        }
    }

    @Override
    public Boolean checkRegClientEmail(String client_email) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        DbConfing db = new DbConfing();
        Client client = new Client();
        con = db.getConnection();
        Boolean pom = null;
        try {
            String sql = "SELECT * FROM `clients` WHERE client_email= ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, client_email);
            rs = ps.executeQuery();
            if (rs.next()) {
                pom = true;
            } else {
                pom = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return pom;
    }

    @Override
    public Boolean loginCheckClient(String client_email, String client_pass) {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;
        DbConfing db = new DbConfing();
        Client client = new Client();
        con = db.getConnection();
        Boolean pom = null;
        try {
            String sql = "SELECT * FROM `clients` WHERE client_email= '"+client_email+"' AND client_pass= '"+client_pass+"'";
            ps = con.prepareStatement(sql);
           /* ps.setString(1, client_email);*/
           /* ps.setString(2, client_pass);*/
            rs = ps.executeQuery();
            if (rs.next()) {
                pom = true;
            } else {
                pom = false;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return pom;
    }
}
