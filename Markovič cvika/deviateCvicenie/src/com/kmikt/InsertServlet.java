package com.kmikt;

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
 * Created by miro on 19.04.2018.
 */
@WebServlet(name = "InsertServlet", urlPatterns = "/insertProdukt")
public class InsertServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        Integer amount = null;

        try {
            amount = Integer.valueOf(request.getParameter("amount"));
        }
        catch (NumberFormatException e) {
            e.printStackTrace();
        }

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sqlQuery = "INSERT INTO produkty (name, price, amount) VALUES (?,?,?)";

        try (
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/produktycvicenia", "produktyCvicenia", "hesloheslo");
            PreparedStatement ps = con.prepareStatement(sqlQuery);
        ){
            ps.setString(1, name);
            ps.setString(2, price);
            ps.setInt(3, amount);

            ps.executeUpdate();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

        response.sendRedirect("/zobraz.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
