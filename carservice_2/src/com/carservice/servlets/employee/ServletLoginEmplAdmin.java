package com.carservice.servlets.employee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.*;

/**
 * Created by Kanderka on 28.04.2017.
 */
@WebServlet(name = "ServletLoginEmplAdmin", urlPatterns = "/loginEmplAdmin")
public class ServletLoginEmplAdmin extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String empl_email = request.getParameter("empl_email");
        String empl_pass = request.getParameter("empl_pass");



        Connection con = null;
        Statement s = null;
        ResultSet rs = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/carservice",
                    "root", "");
            //con = dbConfing.getConnection();

            s = con.createStatement();
            //String sql = "SELECT * FROM employeesservice WHERE empl_email='"+empl_email+"' empl_pass+'"+empl_pass+"'";
            rs = s.executeQuery("SELECT * FROM employeesservice WHERE empl_email='"+empl_email+"'and empl_pass='"+empl_pass+"'and is_admin= '1'");
            if (rs.next()) {
                //response.getWriter().write("Podarislo sa prihlasit");
                HttpSession session = request.getSession(false);
                if (session != null) {

                    session.setAttribute("empl_admin", empl_email);
                    response.sendRedirect("../employee/admin/carRepairsAdmin.jsp");
                } else {
                    response.sendRedirect("../employee/admin/loginEmplAdmin.jsp");
                }

                 //response.getWriter().write("podarilo sa prihlasit "+ empl_email);
            } else {
                //response.getWriter().write("nepodarilo sa prihlasit");
                response.sendRedirect("../employee/admin/loginEmplAdmin.jsp");
                //response.getWriter().write("nepodarilo sa prihlasit");
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } finally {
            if (s != null) {
                try {
                    s.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
