<%@ page import="com.kmikt.User" %><%--
  Created by IntelliJ IDEA.
  User: student
  Date: 05.04.2018
  Time: 10:05
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%
    User user = (User)session.getAttribute("user"); // pretypovanie na objekt (User)
    if(user != null){
%>

    <table class="table table-stripped">
        <tr>
            <th>Meno</th>
            <th>Vek</th>
        </tr>
        <tr>
            <td> <%=user.getMeno()%> </td>
            <td> <%=user.getVek()%> </td>
        </tr>

    </table>
<%
    }else{

    out.println("neni session");

    }
%>


</body>
</html>
