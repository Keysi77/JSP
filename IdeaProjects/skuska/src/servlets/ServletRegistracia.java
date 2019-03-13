package servlets;

import controllers.UserController;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by student on 16.05.2017.
 */
@WebServlet(name = "ServletRegistracia", urlPatterns = "/registruj")
public class ServletRegistracia extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String email = request.getParameter("email");
        String celeMeno = request.getParameter("celeMeno");
        String heslo1 = request.getParameter("heslo1");
        String krajna = request.getParameter("krajna");
        String zamestnany = request.getParameter("zamestnany");

        int z = 0;

        if(zamestnany!=null){
            if(zamestnany.equals("on")){
                z = 1;
            }
        }


        UserController uc = new UserController();
        uc.pridaj(email,heslo1,celeMeno,krajna,z);
        String redirectURL = "index.jsp";
        response.sendRedirect(redirectURL);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request,response);
    }
}
