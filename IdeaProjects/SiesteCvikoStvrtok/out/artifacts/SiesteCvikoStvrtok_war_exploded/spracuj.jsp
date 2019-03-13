<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 29.03.2018
  Time: 9:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Spracovanie formulara</title>
</head>
<body>
    <%
        request.setCharacterEncoding("UTF-8"); // formula bol odoslany v UTF8
        String question = (String) request.getParameter("question");
        Boolean answer = Boolean.valueOf((String) request.getParameter("answer")); // ziskam string true/false a pretypujem ho na Boolean

        // ak som isiel priamo na spracuj.jsp alebo nebol vyplneny formular tak ma presmeruje spat na formular
        if (question == null || answer == null && !question.isEmpty()) {
            response.sendRedirect("zadajOtazku.jsp");
        }

        HashMap<String, Boolean> quiz = (HashMap<String, Boolean>) session.getAttribute("quizQuestions");

        if (quiz != null) {
            quiz.put(question, answer);
        }
        else {
            quiz = new HashMap<>();
            quiz.put(question, answer);
            session.setAttribute("quizQuestions", quiz);
        }
        // presmerujem uzivatela na index aby sa mu zobrazili udaje zo session
        response.sendRedirect("index.jsp");

    %>
</body>
</html>
