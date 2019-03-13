<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 14.03.2018
  Time: 9:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>stvrtecviko</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%
    String nazov = (String) session.getAttribute("bank");
    String iban = (String) session.getAttribute("iban");
    String suma = (String) session.getAttribute("suma");

    nazov bank = new nazov();
%>
<table class="table">
    <thead>
    <tr>
        <td>
            Názov Banky
        </td>
        <td>
            Iban
        </td>
        <td>
            Suma
        </td>
    </tr>
    </thead>
    <tbody>
    <tr>
        <td>
            <%=session.getAttribute("nazov")%>
        </td>
        <td>
            <%=session.getAttribute("iban")%>
        </td>
        <td>
            <%=session.getAttribute("suma")%>
        </td>
    </tr>
    </tbody>
</table>
</body>
</html>
