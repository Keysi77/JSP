<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: student
  Date: 22.03.2018
  Time: 8:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>index</title>
    <%@include file="head.jsp"%>
  </head>
  <body>
  <!-- Jednorozmerne pole Double-->
  <%
    Double[] pole = new Double[10];
    for (int i=0; i<pole.length; i++){
       // Random random = new Random();
      //  Double randomDOuble = random.nextDouble();
      // to iste ako: new Random().nextDouble();

        pole[i]=new Random().nextDouble();
    }
  %>
  <table class="table table-striped">
    <tr>
      <%
        for(int i=0; i < pole.length; i++){
      %>
      <td>
        <%= pole[i]%>
      </td>
      <%
        }
      %>
    </tr>
  </table>
<!-- Dvojrozmerne pole Double-->
  <%
    Double[][] pole_2 = new Double[5][5];
    for (int i=0; i<pole_2.length; i++){
        for (int j=0; j<pole_2[i].length; j++){
      pole_2[i][j]=new Random().nextDouble();
        }
    }
  %>

  <table class="table table-striped">
    <% for(int i=0; i<pole_2.length; i++){
    %>
    <tr>
      <%
        for(int j=0; j<pole_2[i].length; j++){
      %>
      <td>
        <%=pole_2[i][j]%>
      </td>
      <%
        }
      %>
    </tr>
    <%
      }
    %>
  </table>

  </body>
</html>
