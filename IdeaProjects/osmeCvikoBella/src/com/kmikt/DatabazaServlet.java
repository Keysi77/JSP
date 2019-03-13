package com.kmikt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

/**
 * Created by student on 12.04.2018.
 */

@WebServlet(name = "DatabazaServlet", urlPatterns = "/spracuj")
public class DatabazaServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        String name = request.getParameter("name");
        Integer amount = Integer.valueOf(request.getParameter("amount"));
        String price = request.getParameter("price");

        String sqlQuery = "INSERT INTO products (name , amount, price) VALUES (?,?,?)";
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try(
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/12042018", "Michal2", "111111");
                PreparedStatement ps = con.prepareStatement(sqlQuery);
        ){

           // out.print("Pripojeny k DB :)");
            ps.setString(1,name);
            ps.setInt(2, amount);
            ps.setString(3,price);
            ps.execute();
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response); // moze byt poslany aj get aj post je to jedno
        // ak by bol poslany cez GET tak by fungoval aj ked je v POST
    }
}
