package com.kmikt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by miro on 04.04.2018.
 */
@WebServlet(name = "SpracujServlet", urlPatterns = "/spracuj")
public class SpracujServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // nastavenie kodovania na UTF-8 pre spravne zobrazenie znakov
        request.setCharacterEncoding("UTF-8");

        // spracovanie parametrov z formulara
        // vstupny argument do metody getParameter je rovnaky ako atributa name vo formulary!!!!
        String name = request.getParameter("name");
        String rc = request.getParameter("rc");
        int age = Integer.valueOf(request.getParameter("age"));
        int sex = Integer.valueOf(request.getParameter("sex"));

        // vytvorenie objektu z nasej vytvorenej triedy s nazvom User
        User user = new User();
        user.setName(name); // vyplnenie properties v objekte
        user.setRc(rc); // vyplnenie properties v objekte
        user.setAge(age);   // vyplnenie properties v objekte
        user.setSex(sex);   // vyplnenie properties v objekte

        // vytvorenie objektu session z requestu!!!
        HttpSession session = request.getSession();

        ArrayList<User> users = (ArrayList<User>) session.getAttribute("user");

        if (users != null) {
            users.add(user);
            System.out.println(users.size());
        }
        else {
            users = new ArrayList<>();
            users.add(user);
            System.out.println(users.size());
            session.setAttribute("users", users);
        }


        response.sendRedirect("/zobraz.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);      // pomocka aby sa formular spracoval aj ked bude odoslany
        // pomocou metody get aj post
    }
}
