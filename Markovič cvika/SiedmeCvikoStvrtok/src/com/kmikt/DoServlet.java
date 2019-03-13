package com.kmikt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by miro on 05.04.2018.
 */
@WebServlet(name = "DoServlet", urlPatterns = "/doSomething")
public class DoServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        Integer age = Integer.valueOf(request.getParameter("age"));

        User user = new User();
        user.setName(name);
        user.setAge(age);

        HttpSession session = request.getSession();
        session.setAttribute("user", user);

        response.sendRedirect("/index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
