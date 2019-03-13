package com.kmikt;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;

/**
 * Created by miro on 11.04.2018.
 */
@WebServlet(name = "LoadTypeServlet", urlPatterns = "/loadType")
public class LoadTypeServlet extends HttpServlet {

    private HashMap<String, String[]> carType = new HashMap<>();


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("UTF-8");


        String[] audiType = {"A1", "A2", "A3", "A4"};
        String[] bmwType = {"Series 1", "Series 2", "Series 3", "Series 4"};
        String[] skodaType = {"Fabia", "Superb", "Octavia"};
        String[] vwType = {"Golf", "Touareg", "Passat"};

        carType.put("audi", audiType);
        carType.put("bmw", bmwType);
        carType.put("skoda", skodaType);
        carType.put("vw", vwType);

        String brand = request.getParameter("brand");

        response.setContentType("text/html");

        if (brand != null) {
            response.getWriter().write(getModels(brand));
        }
        else {
            response.getWriter().write(getModels("audi"));
        }




    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }

    private String getModels(String brand) {
        String pom = "";

        for (int i = 0; i < carType.get(brand).length; i++) {
            pom += "<option value=\"" + carType.get(brand)[i] +"\">" + carType.get(brand)[i] +"</option>";
        }

        return pom;
    }
}
