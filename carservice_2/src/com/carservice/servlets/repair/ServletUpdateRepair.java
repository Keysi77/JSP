package com.carservice.servlets.repair;

import com.carservice.controller.dao.RepairImplement;
import com.carservice.model.Repair;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by Kanderka on 02.05.2017.
 */
@WebServlet(name = "ServletUpdateRepair", urlPatterns = "/updateRepair")
public class ServletUpdateRepair extends HttpServlet {
    private Repair r;
    private RepairImplement repairDao;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");

        int id_repair = Integer.parseInt(request.getParameter("id_repair"));
        /*int id_repair = Integer.parseInt(request.getParameter("id_repair"));*/
        //int id_repair = Integer.parseInt(request.getParameter("id_repair"));

        String client_email = request.getParameter("client_email");
        String car_brand = request.getParameter("car_brand");
        String car_model = request.getParameter("car_model");
        String motor_vehicle_licence_plate = request.getParameter("motor_vehicle_licence_plate");
        String vin_number = request.getParameter("vin_number");
        String what_repair = request.getParameter("what_repair");
        /*String status = request.getParameter("status");*/
        int status_repair = Integer.parseInt(request.getParameter("status_repair"));

        this.r = new Repair();

        r.setId_repair(id_repair);
        r.setClient_email(client_email);
        r.setCar_brand(car_brand);
        r.setCar_model(car_model);
        r.setMotor_vehicle_licence_plate(motor_vehicle_licence_plate);
        r.setVin_number(vin_number);
        r.setWhat_repair(what_repair);
        /*r.setStatus(status);*/
        r.setStatus_repair(Integer.parseInt(String.valueOf(status_repair)));

        this.repairDao = new RepairImplement();

        repairDao.updateRepairWhereId(r);

        HttpSession session = request.getSession();
        if ((session.getAttribute("empl_admin")) != null) {
            response.sendRedirect("/employee/admin/carRepairsAdmin.jsp");
        } else if ((session.getAttribute("client_email")) != null){
            response.sendRedirect("/client/myRepairs.jsp");
        }else if ((session.getAttribute("empl_email")) != null){
            response.sendRedirect("/employee/carRepairs.jsp");
        }

       //response.sendRedirect("/client/myRepairs.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
