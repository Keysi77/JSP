<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 02.05.2018
  Time: 8:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Skuska registracie a prihlasenia</title>
    <%@include file="head.jsp"%>
  </head>
  <body>
    <%
      String emailLogin = (String) session.getAttribute("userEmail");

      if (emailLogin != null) {
    %>
      Ste prihlaseny ako: <%=emailLogin%> <a href="/logout"> Odhlasit </a>
    <%
      } else {
    %>
      <div class="container">
        <a href="login.jsp"> Login </a><br>
        <a href="reg.jsp"> Registration </a>
      </div>
    <%
      }
    %>

  </body>
</html>
