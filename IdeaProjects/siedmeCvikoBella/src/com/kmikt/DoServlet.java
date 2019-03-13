package com.kmikt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by student on 05.04.2018.
 */
@WebServlet(name = "DoServlet", urlPatterns = "/doSomething")
public class DoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("meno");
        Integer age = Integer.valueOf(request.getParameter("vek"));

        User user = new User();
        user.setMeno(name);
        user.setVek(age);
// pridat aby sa upodatovalo
        HttpSession session = request.getSession();
        session.setAttribute("user", user);

        response.sendRedirect("/zoznam.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response); // moze byt poslany aj get aj post je to jedno
        // ak by bol poslany cez GET tak by fungoval aj ked je v POST

    }
}
