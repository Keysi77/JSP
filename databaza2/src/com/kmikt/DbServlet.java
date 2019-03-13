package com.kmikt;

import com.sun.xml.internal.bind.v2.TODO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

@WebServlet(name = "DbServlet", urlPatterns = "/sent")
public class DbServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        //TODO  Najskor nastavit pre ID -> index a potom v nastaveniach pridat A.I. - auto increment

        // getnute hodnoty z formuláru
        String name = request.getParameter("name");
        Integer amount = Integer.valueOf(request.getParameter("amount"));
        Integer price = Integer.valueOf(request.getParameter("price"));
        Integer suma = amount*price;
        String popis = request.getParameter("popisProdukt");

        // pomocna trieda pre premenne na pripojenie k DB a JDBC connector
        Connect connect = new Connect();

        // SQL INSERT pre hodnoty name, amount, price a suma

        String sqlQuery = "INSERT INTO product (name , amount, price, suma) VALUES (?,?,?,?,?)";
        try {
            // JDBC connector
            Class.forName(connect.getJdbc());
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try(
                // napojenie na databazu skuskadb
                Connection con = DriverManager.getConnection(connect.getDbURL()+connect.getDbname(), connect.getUser(), connect.getPassword());
                PreparedStatement ps = con.prepareStatement(sqlQuery);
        ){
            // vlozenie hodnot do databazy
            ps.setString(1,name);
            ps.setInt(2,amount);
            ps.setInt(3,price);
            ps.setInt(4,suma);
            ps.setString(5,popis);
            ps.execute();
            // presmerovanie po odoslani formularu na adresu: sent.jsp
            response.sendRedirect("sent.jsp");
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response); // osetrenie aby mohol byt poslany aj get aj post je to jedno
    }
}
