package com.kmikt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 * Created by miro on 02.05.2018.
 */
@WebServlet(name = "RegUserServlet", urlPatterns = "/regUser")
public class RegUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        String sqlQuery = "INSERT INTO users (name, email, password) VALUES (?,?, AES_ENCRYPT(?,?))";

        try(
            Connection con = ConnectionManager.getConnection(); // vyuzitie vytvorenej triedy ConnectionManager
            PreparedStatement ps = con.prepareStatement(sqlQuery);
        ){
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, ConnectionManager.AES_KEY);

            ps.execute();


            response.sendRedirect("/login.jsp");
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
