package com.kmikt;

import com.kmikt.cars.CarController;

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
 * Created by miro on 18.04.2018.
 */
@WebServlet(name = "DeleteServlet", urlPatterns = "/deleteItem")
public class DeleteServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Integer id = null;

        try {
            id = Integer.valueOf(request.getParameter("id"));

            new CarController().deleteCar(id);
        }
        catch (NumberFormatException numberFormatException) {
            numberFormatException.printStackTrace();        // problem s ID nevie ho konvertovat
        }

        response.sendRedirect("/zobraz.jsp");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
