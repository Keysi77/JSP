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
 * Created by miro on 26.04.2018.
 */
@WebServlet(name = "UpdateServlet", urlPatterns = "/updateItem")
public class UpdateServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String price = request.getParameter("price");
        Integer amount = null;
        Integer id = null;

        try {
            amount = Integer.valueOf(request.getParameter("amount"));
            id = Integer.valueOf(request.getParameter("id"));
        }
        catch (NumberFormatException e) {
            e.printStackTrace();
        }

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sqlQuery = "UPDATE produkty SET name=?, price=?, amount=? WHERE id=?";

        try (
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/produktycvicenia", "produktyCvicenia", "hesloheslo");
                PreparedStatement ps = con.prepareStatement(sqlQuery);
        ){
            ps.setString(1, name);
            ps.setString(2, price);
            ps.setInt(3, amount);
            ps.setInt(4,id);

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
