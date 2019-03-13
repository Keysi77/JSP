package com.kmikt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

@WebServlet(name = "DeleteZviera", urlPatterns = "/deleteZviera")
public class DeleteZviera extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");
        // zistenie IDečka a podla neho mazanie riadku
        int idZviera = Integer.parseInt (request.getParameter("id"));

        // pomocna trieda pre premenne na pripojenie k DB a JDBC connector
        Connect connect = new Connect();
        try {
            Class.forName(connect.getJdbc());
        }
        catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        try(
                Connection con = DriverManager.getConnection(connect.getDbURL()+connect.getDbname(), connect.getUser(), connect.getPassword());
                Statement stat = con.createStatement();
        ) {


            stat.executeUpdate("DELETE FROM zvierata WHERE id='"+idZviera+"'");
            response.sendRedirect("sent.jsp");
        }
        catch (SQLException e) {
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
