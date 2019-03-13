package com.carservice.servlets.employee;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import com.carservice.model.Employee;
import com.carservice.controller.dao.EmployeeImplement;

/**
 * Created by Kanderka on 24.04.2017.
 */
@WebServlet(name = "ServletDeleteEmpl", urlPatterns = "/deleteEmpl")
public class ServletDeleteEmpl extends HttpServlet {
    private EmployeeImplement emplDao;
    private Employee employee;

    public ServletDeleteEmpl() {
        this.emplDao = new EmployeeImplement();
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        int id_empl = Integer.parseInt(request.getParameter("id_empl"));

        this.employee = new Employee();
        this.emplDao = new EmployeeImplement();

        if (emplDao.chceckIsAdmin(id_empl)) {
            out.println("<div class=\"alert-danger\">Admina nemozno odstranit <b></b></div>");
        } else {


            emplDao.deleteEmployee(id_empl);
            out.println("<div class=\"alert-success\">Uspesne si odstranil zamestnanaca <b></b></div>");
            request.setAttribute("employees", emplDao.getAllEmployees());
            //response.getWriter().write("Uspesne odstraneny");

           /* RequestDispatcher view = request.getRequestDispatcher("listEmployees.jsp");
            request.setAttribute("students", emplDao.getAllEmployees());*/
            //view.forward(request, response);

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
