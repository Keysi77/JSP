<%@ page import="com.kmikt.User" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 04.04.2018
  Time: 9:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Zobrazenie udajov</title>
    <%@include file="head.jsp"%>
</head>
<body>
    <%
        ArrayList<User> users = (ArrayList<User>) session.getAttribute("users");
    %>
    <div class="container">
        <table class="table table-striped">
            <th>
                Meno
            </th>
            <th>
                Vek
            </th>
            <td>
                Rodne číslo
            </td>
            <td>
                Pohlavie
            </td>
            <%
                for (int i = 0; i < users.size(); i++) {
            %>
                <tr>
                    <td><%=users.get(i).getName()%></td>
                    <td><%=users.get(i).getAge()%></td>
                    <td><%=users.get(i).getRc()%></td>
                    <td><%=users.get(i).getSexString()%>
                    </td>
                </tr>
            <%
                }
            %>
        </table>
    </div>
</body>
</html>
