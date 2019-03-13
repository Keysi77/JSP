package com.company.abc;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by StanislavaTomagova on 5/30/2017.
 */
@WebServlet(name = "Servlet_Login", urlPatterns = "/Login")
public class Servlet_Login extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


        String meno = request.getParameter("meno");

        String kruzok = request.getParameter("kruzok");

        int vek = Integer.parseInt(request.getParameter("vek"));

        String hodnotenie1 = request.getParameter("hodnotenie1");

        String hodnotenie2 = request.getParameter("hodnotenie2");

        Statnice statnice = new Statnice();
        statnice.setMeno(meno);
        statnice.setKruzok(kruzok);
        statnice.setVek(vek);
        statnice.setHodnotenie1(hodnotenie1);
        statnice.setHodnotenie2(hodnotenie2);

        Statnice_Controller statniceController = new Statnice_Controller();
        statniceController.insertStatnice(statnice);

        request.getRequestDispatcher("index.jsp").forward(request, response);




    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
