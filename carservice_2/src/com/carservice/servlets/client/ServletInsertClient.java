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
 * Created by Kanderka on 30.04.2017.
 */
@WebServlet(name = "ServletInsertClient", urlPatterns = "/registrationClient")
public class ServletInsertClient extends HttpServlet {
    private Client client;
    private ClientImplement clientDao;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String client_first_name = request.getParameter("client_first_name");
        String client_second_name = request.getParameter("client_second_name");
        String client_email = request.getParameter("client_email");
        String client_pass = request.getParameter("client_pass");

        if (!client_first_name.isEmpty() && !client_second_name.isEmpty() && !client_email.isEmpty() && !client_pass.isEmpty()) {


            this.client = new Client();
            this.clientDao = new ClientImplement();

            if (clientDao.checkRegClientEmail(client_email)) {
                out.println("<div class=\"alert-danger\">Emial uz je registrovany</div>");
            } else {
                client.setClient_first_name(client_first_name);
                client.setClient_second_name(client_second_name);
                client.setClient_email(client_email);
                client.setClient_pass(client_pass);

                clientDao.addClient(client);
                out.println("<div class=\"alert-success\">Uspesne si sa zaregistroval</div>");
            }
        } else {
            out.println("<div class=\"alert-danger\">musis zadat vsetky udaje</div>");
        }

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
