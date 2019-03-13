package com.kmikt;

import org.bson.Document;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by miro on 02.05.2018.
 */
@WebServlet(name = "InsertUserServlet", urlPatterns = "/insertUser")
public class InsertUserServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Document user = new Document();
        user.put("name", "new user");
        user.put("age", 30);
        user.put("email", "a@a.sk");

        new UserController().insertUser(user);


        response.sendRedirect("/index.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
