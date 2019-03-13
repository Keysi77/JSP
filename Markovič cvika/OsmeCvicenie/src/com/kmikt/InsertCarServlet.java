package com.kmikt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import java.sql.*;


/**
 * Created by miro on 11.04.2018.
 */
@WebServlet(name = "InsertCarServlet", urlPatterns = "/insertCar")
public class InsertCarServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // nastavenie kodovania na UTF-8 pre spravne zobrazenie znakov
        request.setCharacterEncoding("UTF-8");

        // Spracovanie udajov z formulara
        String brand = request.getParameter("brand");
        String color = request.getParameter("color");


        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();        // vypisanie celej chyby do console!!!
        }

        String sqlQuery = "INSERT INTO cars (brand, color) VALUES (?,?)";

        try(
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp11042018", "jsp11042018", "hesloheslo");
                PreparedStatement ps = con.prepareStatement(sqlQuery);
        ){

            ps.setString(1,brand);     // vlozenie hdnoty Miroslav za 1. otaznik
            ps.setString(2, color);               // vlozenie hodnoty 33 za 2. otaznik
            ps.execute();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }


        response.sendRedirect("/zobraz.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
