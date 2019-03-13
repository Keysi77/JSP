<%@ page import="com.mongodb.client.MongoCursor" %>
<%@ page import="org.bson.Document" %>
<%@ page import="com.kmikt.UserController" %><%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 02.05.2018
  Time: 12:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Show all</title>
      <%@include file="head.jsp"%>
  </head>
  <body>

      <div class="container">
          <p>
              <a href="/insertUser"> Inseert a new user via Servlet </a>
          </p>
        <table class="table table-striped">
            <th> Name </th>
            <th> Age </th>
            <th> E-mail </th>
      <%

        MongoCursor<Document> cursor = new UserController().getAllUsers();

        try{
            while(cursor.hasNext()) {
                Document result = cursor.next();
        %>
                <tr>
                  <td><%=result.get("name")%></td>
                  <td><%=result.get("age")%></td>
                  <td><%=result.get("email")%></td>
                </tr>
        <%
            }
        }
        catch (Exception e) {
            e.printStackTrace();
        }
      %>
        </table>
      </div>
  </body>
</html>
