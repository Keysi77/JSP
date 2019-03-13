package com.kmikt.cars;

import com.kmikt.DatabaseConnectionManager;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by miro on 25.04.2018.
 */
public class CarController {

    public List<CarModel> getAllCars() {

        List<CarModel> results = new ArrayList<>();

        String sqlQuery = "SELECT * FROM cars";

        try (
                Connection con = DatabaseConnectionManager.getConnection();
                PreparedStatement ps = con.prepareStatement(sqlQuery);
                ResultSet rs = ps.executeQuery();
        ){
            while (rs.next()) {
                CarModel car = new CarModel();

                car.setId(rs.getInt("id"));
                car.setBrand(rs.getString("brand"));
                car.setColor(rs.getString("color"));

                results.add(car);
            }
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        return results;
    }

    public void insertCar(CarModel carModel) {

        String sqlQuery = "INSERT INTO cars (brand, color) VALUES (?,?)";

        try(
                Connection con = DatabaseConnectionManager.getConnection();
                PreparedStatement ps = con.prepareStatement(sqlQuery);
        ){

            ps.setString(1, carModel.getBrand() );     // vlozenie hdnoty Miroslav za 1. otaznik
            ps.setString(2, carModel.getColor());               // vlozenie hodnoty 33 za 2. otaznik
            ps.execute();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

    }

    public void deleteCar(int carID) {

        String sqlQuery = "DELETE FROM cars WHERE id = ?";
        try(
                Connection con = DatabaseConnectionManager.getConnection();
                PreparedStatement ps = con.prepareStatement(sqlQuery);
        ){
            ps.setInt(1, carID);     // vlozenie hdnoty id
            ps.execute();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

    }
























}
