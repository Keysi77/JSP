package com.carservice.servlets.client;

import com.carservice.controller.dao.ClientImplement;
import com.carservice.model.Client;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Kanderka on 02.05.2017.
 */
@WebServlet(name = "ServletUpdateClient", urlPatterns = "/editClient")
public class ServletUpdateClient extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");


        //String id_client = request.getParameter("id_client");
        int id_client = Integer.parseInt(request.getParameter("id_client"));
        String client_first_name = request.getParameter("client_first_name");
        String client_second_name = request.getParameter("client_second_name");
        String client_email = request.getParameter("client_email");
        String client_pass = request.getParameter("client_pass");

        Client client = new Client();

        client.setId_client(id_client);
        client.setClient_first_name(client_first_name);
        client.setClient_second_name(client_second_name);
        client.setClient_email(client_email);
        client.setClient_pass(client_pass);

        ClientImplement clientDao = new ClientImplement();

        clientDao.updateClientWhereId(client);

        response.sendRedirect("../employee/admin/listClients.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
