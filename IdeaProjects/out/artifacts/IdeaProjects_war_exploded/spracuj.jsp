<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 14.03.2018
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>stvrtecviko</title>
    <%@include file="head.jsp"%>
    <link rel="stylesheet" href="spracuj.css">
</head>
<body>
<%
    String nazov = request.getParameter("nazov");
    String iban = request.getParameter("iban");
    String suma = request.getParameter("suma");

    //ulozenie objektu nazov do session
    nazov bank = new nazov();
    bank.setNazov(nazov);


    session.setAttribute("nazov",nazov);
    session.setAttribute("iban",iban);
    session.setAttribute("suma",suma);
%>
<%
    response.setHeader("Refresh", "5;url=zobraz.jsp");
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
        <%=nazov%>
    </td>
    <td>
        <%=iban%>
    </td>
    <td>
        <%=suma%>
    </td>
</tr>
</tbody>
</table>
</body>
</html>
