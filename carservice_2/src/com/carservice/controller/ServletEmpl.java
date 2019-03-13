package com.carservice.controller;

import com.carservice.controller.dao.EmployeeImplement;
import com.carservice.model.Employee;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


/**
 * Created by Kanderka on 19.04.2017.
 */
@WebServlet(name = "servletEmpl", urlPatterns = "/servletEmpl")
public class ServletEmpl extends HttpServlet {
    private static final long serialVersionUID = 1L;

    private EmployeeImplement emplDao;

    private static String INSERT_OR_EDIT = "/insertEmpl.jsp";
    private static String LIST_USER = "/listEmployees.jsp";

    public ServletEmpl() {
        emplDao = new EmployeeImplement();
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        String forward="";
        String action = request.getParameter("action");
        //EmployeeImplement emplDao = new EmployeeImplement();

        //String uzivatel = request.getRemoteUser();

        /*INSERT NEW EMPLOYEE TO DATABASE*/

        /*if (action.equalsIgnoreCase("insert")) {

            String empl_nic_name = request.getParameter("empl_nic_name");
            String empl_position = request.getParameter("empl_position");
            String empl_pass = request.getParameter("empl_pass");
            String empl_email = request.getParameter("empl_email");
            String empl_tel_mun = request.getParameter("empl_tel_mun");
            String empl_personal_id = request.getParameter("empl_personal_id");
            boolean is_admin = Boolean.parseBoolean(request.getParameter("is_admin"));

            if (!empl_position.isEmpty() && !empl_email.isEmpty() && !empl_pass.isEmpty() && !empl_tel_mun.isEmpty() && !empl_personal_id.isEmpty()) {
                Employee employee = new Employee();

                employee.setEmpl_nic_name(empl_nic_name);
                employee.setEmpl_position(empl_position);
                employee.setEmpl_pass(empl_pass);
                employee.setEmpl_email(empl_email);
                employee.setEmpl_tel_mun(empl_tel_mun);
                employee.setEmpl_personal_id(empl_personal_id);
                employee.setIs_admin(is_admin);

                //EmployeeImplement emplDao = new EmployeeImplement();
                this.emplDao.addEmployee(employee);
                out.println("<div class=\"alert-success\">Uspesne pridany zamestnanec <b>" + empl_nic_name + "</b></div>");
            } else {
                out.println("<div class=\"alert-danger\">Nevyplnil si potrebne udaje</div>");
            }*/


           /* String empl_nic_name = request.getParameter("empl_nic_name");
            String empl_position = request.getParameter("empl_position");
            String empl_pass = request.getParameter("empl_pass");
            String empl_email = request.getParameter("empl_email");
            String empl_tel_mun = request.getParameter("empl_tel_mun");
            String empl_personal_id = request.getParameter("empl_personal_id");
            boolean is_admin = Boolean.parseBoolean(request.getParameter("is_admin"));

            out.println("<div> REgistroval si noveho zamestnanca</div>");

            Employee employee = new Employee();

            employee.setEmpl_nic_name(empl_nic_name);
            employee.setEmpl_position(empl_position);
            employee.setEmpl_pass(empl_pass);
            employee.setEmpl_email(empl_email);
            employee.setEmpl_tel_mun(empl_tel_mun);
            employee.setEmpl_personal_id(empl_personal_id);
            employee.setIs_admin(is_admin);

            EmployeeImplement daoEmpl = new EmployeeImplement();
            daoEmpl.addEmployee(employee);*/

            //request.getRequestDispatcher("insertEmpl.jsp").include(request, response);

            /*END INSERT NEW EMPL*/
        /*}*/

        /*else*/
            if (action.equalsIgnoreCase("delete")) {
            int id_empl = Integer.parseInt(request.getParameter("id_empl"));
            emplDao.deleteEmployee(id_empl);
            forward = LIST_USER;
            request.setAttribute("employees", emplDao.getAllEmployees());

        } else if (action.equalsIgnoreCase("edit")) {
            forward = INSERT_OR_EDIT;
            int id_empl = Integer.parseInt(request.getParameter("id_empl"));
            Employee employee = emplDao.getEmployeeWhereId(id_empl);
            request.setAttribute("employee", employee);
        } //else if (action.equalsIgnoreCase("insert")) {
            //forward = INSERT_OR_EDIT;

        //}

        else if (action.equalsIgnoreCase("login")) {
            String empl_nic_name = request.getParameter("empl_nic_name");
            String empl_pass = request.getParameter("empl_pass");
// TODO
// if (empl_nic_name.equals())
        } else {
            forward = LIST_USER;
            request.setAttribute("employees", emplDao.getAllEmployees());
        }

         RequestDispatcher view = request.getRequestDispatcher(forward);
         view.forward(request, response);
    }//END doGet()

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
        Employee employee = new Employee();

        employee.setEmpl_nic_name(request.getParameter("empl_nic_name"));
        employee.setEmpl_position(request.getParameter("empl_position"));
        employee.setEmpl_pass(request.getParameter("empl_pass"));
        employee.setEmpl_email(request.getParameter("empl_email"));
        employee.setEmpl_tel_mun(request.getParameter("empl_tel_mun"));
        employee.setEmpl_personal_id(request.getParameter("empl_personal_id"));
        employee.setIs_admin(Boolean.parseBoolean(request.getParameter("is_admin")));

        //String id_empl = request.getParameter("id_empl");
        RequestDispatcher view = request.getRequestDispatcher( LIST_USER );
        request.setAttribute("students", emplDao.getAllEmployees());
        view.forward(request, response);

    }//END doPost()


}
