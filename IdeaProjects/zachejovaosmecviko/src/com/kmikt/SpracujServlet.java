package com.kmit;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;
/**
 * Created by student on 04.04.2018.
 */
@WebServlet(name = "SpracujServlet", urlPatterns = "/spracuj")
public class SpracujServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String brand = request.getParameter("brand");
        String color = request.getParameter("color");

        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }

        String sqlQuery = "INSERT INTO cviko8 (brand, color) VALUES (?,?)";
        try(
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cviko8", "cviko8", "cviko8");
                PreparedStatement ps = con.prepareStatement(sqlQuery);
        ){
            ps.setString(1,brand);
            ps.setString(2,color);
            ps.execute();
        }
        catch (SQLException e1) {
            e1.printStackTrace();
        }

    }
}
