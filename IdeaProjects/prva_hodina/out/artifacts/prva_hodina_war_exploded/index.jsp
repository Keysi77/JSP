<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 27.02.2017
  Time: 9:14
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>JSP</title>
  </head>
  <body>
  <h1>Moja prva stranka</h1>
  <%

    String s1= "Brownie candy canes jelly-o.";
    String s2= "Liquorice dessert jujubes cookie carrot cake cake.";
    String s3= s1+ "" +s2;
    out.println("<p style=");
    out.println("<p>" + s3 + "</p>");
    out.println(s3);
  %>
  <p style="color: blue">
      <%=s3%>
  </p>
  <p style="color: red">
    <%
      out.println(s3);
    %>
  </p>
  <%
    String url="http://www.google.com";
    out.println("<a href = \" "+url+" \" > Stranka googla </a>");
  %>
  <br>
  <%
    String url1 ="http://www.google.com";
    String urlDescription = "Go to google";
  %>
  <a href="<%=url1%>" target="_blank"><%=urlDescription%></a>
  <br>
  <%
    String findString = "uniza";
    String find = "findString" + "&*";
    String url2 = "https://www.google.sk/?gfe_rd=cr&ei=1_KzWM3xJ66E8QfNwIjwBQ#q=sektor&*";

  %>
   <a href="<%=url2%>%>" target="_blank">Find string: <%=findString%></a>
  </body>
</html>
