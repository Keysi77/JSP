package com.carservice.servlets.employee;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.PreparedStatement;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import com.carservice.controller.DbConfing;
import com.carservice.model.Employee;
import com.carservice.controller.dao.EmployeeImplement;


/**
 * Created by Kanderka on 24.04.2017.
 */
@WebServlet(name = "ServletInsertEmpl", urlPatterns = "/ServletInsertEmpl")
public class ServletInsertEmpl extends HttpServlet {

    private EmployeeImplement emplDao;
    private Employee employee;
    private boolean emailIsExist;

    public ServletInsertEmpl() {
        //this.emplDao = new EmployeeImplement();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String empl_nic_name = request.getParameter("empl_nic_name");
        String empl_position = request.getParameter("empl_position");
        String empl_pass = request.getParameter("empl_pass");
        String empl_email = request.getParameter("empl_email");
        String empl_tel_mun = request.getParameter("empl_tel_mun");
        String empl_personal_id = request.getParameter("empl_personal_id");
        boolean is_admin = Boolean.parseBoolean(request.getParameter("is_admin"));


        if (!empl_nic_name.isEmpty() && !empl_email.isEmpty() && !empl_position.isEmpty() && !empl_pass.isEmpty() && !empl_tel_mun.isEmpty() && !empl_personal_id.isEmpty()) {

            this.employee = new Employee();
            this.emplDao = new EmployeeImplement();

            if (this.emplDao.checkRegEmployeeEmail(empl_email)) {
                out.println("<div class=\"alert-danger\">Email sa uz je registrovany <b></b></div>");
            } else {
                employee.setEmpl_nic_name(empl_nic_name);
                employee.setEmpl_position(empl_position);
                employee.setEmpl_pass(empl_pass);
                employee.setEmpl_email(empl_email);
                employee.setEmpl_tel_mun(empl_tel_mun);
                employee.setEmpl_personal_id(empl_personal_id);
                employee.setIs_admin(is_admin);
                this.emplDao.addEmployee(employee);
                out.println("<div class=\"alert-success\">Uspesne pridany zamestnanec <b>" + empl_nic_name + "</b></div>");
            }
        } else {
            out.println("<div class=\"alert-danger\">Nevyplnil si potrebne udaje</div>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
