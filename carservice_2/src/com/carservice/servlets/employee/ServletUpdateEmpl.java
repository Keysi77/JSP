package com.carservice.servlets.employee;

import com.carservice.controller.dao.EmployeeImplement;
import com.carservice.model.Employee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Kanderka on 24.04.2017.
 */
@WebServlet(name = "ServletUpdateEmpl", urlPatterns = "/editEmpl")
public class ServletUpdateEmpl extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        int id_empl = Integer.parseInt(request.getParameter("id_empl"));

//        int id_empl = Integer.parseInt(request.getParameter("id_empl"));

        String empl_nic_name = request.getParameter("empl_nic_name");
        String empl_position = request.getParameter("empl_position");
        String empl_pass = request.getParameter("empl_pass");
        String empl_email = request.getParameter("empl_email");
        String empl_tel_mun = request.getParameter("empl_tel_mun");
        String empl_personal_id = request.getParameter("empl_personal_id");
//        boolean is_admin = Boolean.parseBoolean(request.getParameter("is_admin"));
        Employee e = new Employee();

        //e = emplDao.getEmployeeWhereId(id_empl);
        e.setId_empl(id_empl);
        e.setEmpl_nic_name(empl_nic_name);
        e.setEmpl_position(empl_position);
        e.setEmpl_pass(empl_pass);
        e.setEmpl_email(empl_email);
        e.setEmpl_tel_mun(empl_tel_mun);
        e.setEmpl_personal_id(empl_personal_id);
        //e.setIs_admin(is_admin);

        EmployeeImplement empDao = new EmployeeImplement();

        empDao.updateEmployeeWhereId(e);

        response.sendRedirect("../employee/admin/listEmployees.jsp");

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
