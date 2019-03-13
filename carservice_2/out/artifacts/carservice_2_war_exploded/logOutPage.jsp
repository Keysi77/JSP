<%--
  Created by IntelliJ IDEA.
  User: Kanderka
  Date: 03.05.2017
  Time: 22:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
session.invalidate();
response.sendRedirect("index.jsp");
%>
</body>
</html>
