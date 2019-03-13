package com.carservice.servlets.repair;

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
 * Created by Kanderka on 02.05.2017.
 */
@WebServlet(name = "ServletDeleteRepair", urlPatterns = "/deleteRepair")
public class ServletDeleteRepair extends HttpServlet {

    private Repair repair;
    private RepairImplement repairDao;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        int id_repair = Integer.parseInt(request.getParameter("id_repair"));
        this.repairDao = new RepairImplement();
        this.repair = new Repair();
        repairDao.deleteRepair(id_repair);
        out.println("<div class=\"alert-success\">Uspesne si odstranil tuto opravu</div>");


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
