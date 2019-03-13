<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 15.03.2018
  Time: 8:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    request.getParameter("username");
    request.getParameter("email");
    request.getParameter("mobile");

    out.println("Tvoje meno: "+request.getParameter("name")+"<br>!");
    out.println("Tvoj email: "+request.getParameter("email")+"<br>!");
    out.println("Tvoje telefonne cislo: "+request.getParameter("mobile")+"<br>!");
%>
</body>
</html>
