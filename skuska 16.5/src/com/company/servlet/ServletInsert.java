package com.company.servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.*;

/**
 * Created by Kanderka on 16.05.2017.
 */
@WebServlet(name = "ServletInsert", urlPatterns = "/inserting")
public class ServletInsert extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        String meno = request.getParameter("meno");
        String km = request.getParameter("km");
        String email = request.getParameter("email");
        Boolean is_new = Boolean.valueOf(request.getParameter("is_new"));
        String type_car = request.getParameter("type_car");

        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/exam","root","");
            String sql = "INSERT INTO test (meno,km,email,is_new,type_car) VALUES (?,?,?,?,?)";
            ps= con.prepareStatement(sql);
            ps.setString(1, meno);
            ps.setString(2, km);
            ps.setString(3, email);
            ps.setBoolean(4, is_new);
            ps.setString(5, type_car);

            ps.executeUpdate();
            response.sendRedirect("index.jsp");
/*out.println("ok");*/
        }
        catch(ClassNotFoundException e1){
            System.out.println(e1.getMessage());
        }
        catch(SQLException e2){
            System.out.println(e2.getMessage());
        } finally{
            try {
                ps.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    }
}
