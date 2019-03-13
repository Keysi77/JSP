<%@ page import="com.kmikt.User" %><%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 05.04.2018
  Time: 9:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>List of users</title>
    <%@include file="head.jsp"%>
  </head>
  <body>
    <%

      User user = (User) session.getAttribute("user");
      if (user != null) {
    %>
    <table class="table table-striped">
      <tr>
        <th>Name</th>
        <th>Age</th>
      </tr>
      <tr>
        <td><%=user.getName()%></td>
        <td><%=user.getAge()%></td>
      </tr>
    </table>
    <%
      }
      else {
           out.print("Session is empty");
      }
    %>

  </body>
</html>
