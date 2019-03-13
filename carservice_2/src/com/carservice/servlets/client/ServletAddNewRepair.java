package com.carservice.servlets.client;

import com.carservice.controller.dao.RepairImplement;
import com.carservice.model.Repair;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Kanderka on 30.04.2017.
 */
@WebServlet(name = "ServletAddNewRepair", urlPatterns = "/addNewRepair")
public class ServletAddNewRepair extends HttpServlet {
    private Repair repair;
    private RepairImplement repairDao;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        //int id_repair = Integer.parseInt(request.getParameter("id_repair"));
//        int id_client = Integer.parseInt(request.getParameter("id_client"));
        String client_email = request.getParameter("client_email");
        String car_brand = request.getParameter("car_brand");
        String car_model = request.getParameter("car_model");
        String motor_vehicle_licence_plate = request.getParameter("motor_vehicle_licence_plate");
        String vin_number = request.getParameter("vin_number");
        String what_repair = request.getParameter("what_repair");
        int status_repair = Integer.parseInt(request.getParameter("status_repair"));

        if (!car_brand.isEmpty() && !car_model.isEmpty()) {
            this.repair = new Repair();
            this.repairDao = new RepairImplement();

//            repair.setId_client(id_client);
            repair.setClient_email(client_email);
            repair.setCar_brand(car_brand);
            repair.setCar_model(car_model);
            repair.setMotor_vehicle_licence_plate(motor_vehicle_licence_plate);
            repair.setVin_number(vin_number);
            repair.setWhat_repair(what_repair);
            repair.setStatus_repair(status_repair);


            repairDao.addRepair(repair);
            out.println("<div class=\"alert-success\">Uspesne pridana ziadost o opravu auta</div>");
        } else {
            out.println("<div class=\"alert-danger\">Nevyplnil si potrebne udaje</div>");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
