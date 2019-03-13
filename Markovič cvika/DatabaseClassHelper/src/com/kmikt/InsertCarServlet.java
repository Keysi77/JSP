package com.kmikt;

import com.kmikt.cars.CarController;
import com.kmikt.cars.CarModel;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;


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

        CarModel car = new CarModel();
        car.setBrand(brand);
        car.setColor(color);

        new CarController().insertCar(car);

        response.sendRedirect("/zobraz.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
