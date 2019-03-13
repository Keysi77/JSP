<%@ page import="java.util.HashMap" %>
<%@ page import="sk.pisomka.Auto" %><%--
  Created by IntelliJ IDEA.
  User: student
  Date: 05.04.2018
  Time: 8:06
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <%@include file="head.jsp"%>
  </head>
  <body>

  <%
    Auto auto = new Auto();
    auto.setFarba("red");
    auto.setCislo(526);

    HashMap<String, Auto> auta= new HashMap<>() ;
    auta.put("Audi", auto);
    auta.put("BMW", auto);

    auto.setFarba("white");
    auto.setCislo(985);

    auta.put("Škoda", auto);

   /* HashMap<String,Auto> auto = new HashMap<String, Auto>();
    auto.put("Skoda", new Auto(request.getAttribute()) );
    auto.put("BMW", );
    auto.put("Audi", );*/
  %>


  <div class="container">
    <table class="table table-striped">
      <th>
       Kluc
      </th>
      <th>
        Farba
      </th>
      <th>
        Cislo
      </th>
      <%
        for (String key : auta.keySet()) {
      %>
      <tr>
        <td><%=key%></td>
        <td><%=auta.get(key).getFarba()%></td>
        <td><%=auta.get(key).getCislo()%></td>
      </tr>
      <%
        }
      %>
    </table>
  </div>

  </body>
</html>
