<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: Keys1
  Date: 5. 4. 2018
  Time: 6:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>zoznam v Hash</title>
</head>
<body>
<%
    request.setCharacterEncoding("UTF-8"); // formula bol odoslany v UTF8
    String meno = (String) request.getParameter("meno");
    String priezvisko = (String) request.getParameter("priezvisko");
    //Boolean answer = Boolean.valueOf((String) request.getParameter("answer")); // ziskam string true/false a pretypujem ho na Boolean

    // ak som isiel priamo na spracuj.jsp alebo nebol vyplneny formular tak ma presmeruje spat na formular
    if (meno == null || priezvisko == null && !meno.isEmpty()) {
        response.sendRedirect("index.jsp");
    }
    HashMap<String,String> quiz =(HashMap<String, String>) session.getAttribute("quizQuestions");


    if (quiz != null) {
        quiz.put(meno, priezvisko);
    }
    else {
        quiz = new HashMap<>();
        quiz.put(meno, priezvisko);
        session.setAttribute("quizQuestions", quiz);
    }
    // presmerujem uzivatela na index aby sa mu zobrazili udaje zo session
    //response.sendRedirect("index.jsp");

%>
<%
HashMap<String, String> quiz2 = (HashMap<String, String>) session.getAttribute("quizQuestions");
if (quiz2 != null) {
%>
<div class="container">
    <table class="table table-striped">
        <th>
            Otátka
        </th>
        <th>
            Odpoveď
        </th>
        <%
            for (String key : quiz2.keySet()) {
        %>
        <tr>
            <td><%=key%></td>
            <td><%=quiz2.get(key)%></td>
        </tr>
        <%
            }
        %>
    </table>
    <p>
        <a href="index.jsp">Začnite vložením otázky do formulára</a>
    </p>
</div>
<%
    }
    else {
%>
<div class="container">
    <p class="warning">
        Zatiaľ nemáte žiadne otázky
    </p>
    <p>
        <a href="index.jsp">Začnite vložením otázky do formulára</a>
    </p>
</div>
<%
    }

%>

</body>
</html>
