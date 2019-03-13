package com.carservice.servlets.client;

import com.carservice.controller.dao.ClientImplement;
import com.carservice.model.Client;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Created by Kanderka on 29.04.2017.
 */
@WebServlet(name = "ServletLoginClient", urlPatterns = "/loginClient")
public class ServletLoginClient extends HttpServlet {

    private ClientImplement clientDao;
    private Client client;

    /*public ServletLoginClient() {
        this.clientDao = new ClientImplement();
    }*/

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        response.setContentType("text/html");
        PrintWriter out = response.getWriter();

        String client_email = request.getParameter("client_email");
        String client_pass = request.getParameter("client_pass");

        this.client = new Client();
        this.clientDao = new ClientImplement();

        boolean pom = clientDao.loginCheckClient(client_email, client_pass);

        if (pom) {
            HttpSession session = request.getSession();
            session.setAttribute("client_email", client_email);
            response.sendRedirect("../client/myRepairs.jsp");
            //out.println("prihlasney");
            //request.setAttribute("client_email", client_email);
        } else {
            response.sendRedirect("../client/loginClient.jsp");
//            out.println("Neprihlaseny");
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
