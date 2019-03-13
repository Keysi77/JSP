<%@ page import="com.kmit.User" %><%--
  Created by IntelliJ IDEA.
  User: student
  Date: 04.04.2018
  Time: 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Zobraz</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%
    User user = (User) session.getAttribute("user");
%>

<div class="container">
    <table class="table table-striped">
        <thead>
        <tr>
            <th>Meno</th>
            <th>Rodne Cislo</th>
            <th>Vek</th>
            <th>Pohlavie</th>
        </tr>
        </thead>
        <tbody>
        <tr>
            <td><%=user.getMeno()%></td>
            <td><%=user.getCislo()%></td>
            <td><%=user.getVek()%></td>
            <td><%=user.getSex()%></td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
