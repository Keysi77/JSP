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

@WebServlet(name = "InsertZviera", urlPatterns = "/sentZviera")
public class InsertZviera extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        //TODO  Najskor nastavit pre ID -> index a potom v nastaveniach pridat A.I. - auto increment
       // typ, vaha, narodenie, farba, popis

        // getnute hodnoty z formuláru
        String typ = request.getParameter("typ");
        Integer vaha = Integer.valueOf(request.getParameter("vaha"));
        String narodenie = request.getParameter("narodenie");
        String farba = request.getParameter("farba");
        String popis = request.getParameter("popis");


        // pomocna trieda pre premenne na pripojenie k DB a JDBC connector
        Connect connect = new Connect();

        // SQL INSERT pre hodnoty name, amount, price a suma

        String sqlQuery = "INSERT INTO zvierata (typ , vaha, narodenie, farba, popis) VALUES (?,?,?,?,?)";
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
            ps.setString(1,typ);
            ps.setInt(2,vaha);
            ps.setString(3,narodenie);
            ps.setString(4,farba);
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

    }
}
