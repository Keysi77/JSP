<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 29.03.2018
  Time: 9:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%
        String q = (String) request.getParameter("question");
        String a = (String) request.getParameter("answer");
        Boolean aB = Boolean.valueOf(a);  // zmena zo String na Boolean

        HashMap<String, Boolean> quiz;  // vytvorim objekt typu HashMap

        quiz = (HashMap<String, Boolean>) session.getAttribute("quizQuestions");

        if (quiz != null) {
            // uz som nieco zapisal do Session, resp. uz som vyplnil formular
            quiz.put(q, aB);  // ak mam uz vytvorene v session objekt tak len do neho
            //ulozim novy udaj
        }
        else {
            quiz = new HashMap<>(); // v session nie je vytvoreny objekt, tak si ho musim vytvorit
            quiz.put(q, aB);
            session.setAttribute("quizQuestions",quiz);  // ulozenie HashMap do Session
        }


    %>
</body>
</html>
