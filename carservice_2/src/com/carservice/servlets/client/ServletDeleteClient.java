package com.carservice.servlets.client;

import com.carservice.controller.dao.ClientImplement;
import com.carservice.model.Client;

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
@WebServlet(name = "ServletDeleteClient", urlPatterns = "/deleteClient")
public class ServletDeleteClient extends HttpServlet {

    private Client client;
    private ClientImplement clientDao;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();
        int id_client = Integer.parseInt(request.getParameter("id_client"));

        client = new Client();
        clientDao = new ClientImplement();
        clientDao.deleteClient(id_client);
        out.println("<div class=\"alert-success\">Uspesne si odstranil Klienta</div>");
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
