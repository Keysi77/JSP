package com.stranger.servlet;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import com.stranger.controller.KnihaController;

/**
 * Created by student on 25.04.2017.
 */

@WebServlet(name = "FormServlet", urlPatterns = "/servletUpdate")
public class FormServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        int idcko = 0;
        String id = request.getParameter("idcko");
        idcko = Integer.parseInt(id);
        String nazov = request.getParameter("nazov");
        String popis = request.getParameter("popis");
        String c = request.getParameter("cena");

        c.replace(",",".");
        double cena = 0.0;

        try{
            cena = new Double(c);
            //TODO zaokluhlovanie
        }catch (NumberFormatException e){
            e.printStackTrace();
        }

        boolean pozicana = Boolean.parseBoolean(request.getParameter("pozicana"));
        System.out.println(request.getParameter("pozicana")+"aaaa");
        KnihaController kc = new KnihaController();
        kc.udate(idcko,nazov,popis,cena,pozicana);
    }
}
