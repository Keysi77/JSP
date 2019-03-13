<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 28.02.2017
  Time: 8:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>

  <%
    int mesiac =6;
    if (mesiac <6 && mesiac >=1) {
      out.println("1. polrok");
    }
    else {
        out.println("zadajte hodnotu <1,6>");
    }
    if (mesiac > 6 && mesiac <=12){
        out.println("2.polrok");
    }
    else {
        out.println("zadaj hodnotu od 1-12 ");

    }
switch ()

  %>

    <a href="http://www.google.sk" target="_blank">Go to Google </a>
  </p>
  <p style="color:red;"><%=a1%></p>
  <p style="color:blue;"><%=a1%></p>
  <p style="color:green;"><%=a1%></p>



  </body>
</html>
