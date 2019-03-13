package com.kmikt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "DoServlet", urlPatterns = "/spracuj")
public class DoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");

        String name = request.getParameter("name");
        Integer amount = Integer.valueOf(request.getParameter("amount"));
        String price = request.getParameter("price");

        String sqlQuery = "INSERT INTO product (name , amount, price) VALUES (?,?,?)";
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try(
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/product", "Michal", "111111");
                PreparedStatement ps = con.prepareStatement(sqlQuery);
        ){
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

    }
}
