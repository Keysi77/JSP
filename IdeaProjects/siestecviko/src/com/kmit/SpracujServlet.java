package com.kmit;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by student on 04.04.2018.
 */
@WebServlet(name = "SpracujServlet", urlPatterns = "/spracuj")
public class SpracujServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");

        String meno = request.getParameter("meno");
        String cislo = request.getParameter("cislo");
        String sex = request.getParameter("sex");
        int vek = Integer.valueOf(request.getParameter("vek"));

        User user = new User();
        user.setMeno(meno);
        user.setCislo(cislo);
        user.setSex(sex);
        user.setVek(vek);

        HttpSession session = request.getSession();
        session.setAttribute("user", user);

        response.sendRedirect("zobraz.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
