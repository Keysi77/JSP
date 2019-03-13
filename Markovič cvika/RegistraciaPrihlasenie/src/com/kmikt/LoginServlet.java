package com.kmikt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 * Created by miro on 02.05.2018.
 */
@WebServlet(name = "LoginServlet", urlPatterns = "/loginUser")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String email = request.getParameter("email");
        String password = request.getParameter("password");

        HttpSession session = request.getSession();

        String sqlQuery = "SELECT * FROM users WHERE email=? AND password=AES_ENCRYPT(?,?)";

        try(
                Connection con = ConnectionManager.getConnection(); // vyuzitie vytvorenej triedy ConnectionManager
                PreparedStatement ps = con.prepareStatement(sqlQuery);
        ){
            ps.setString(1, email);
            ps.setString(2, password);
            ps.setString(3, ConnectionManager.AES_KEY);

            try(
                ResultSet rs = ps.executeQuery();
            ){
                if (rs.next()) {
                    session.setAttribute("userEmail", rs.getString("email"));
                }

            }
            catch (SQLException e) {
                e.printStackTrace();
            }

            response.sendRedirect("/index.jsp");
        }
        catch (SQLException e) {
            e.printStackTrace();
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
