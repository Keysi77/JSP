<%@ page import="com.kmikt.Car" %>
<%@ page import="com.kmikt.Pacient" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 05.04.2018
  Time: 8:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Testik</title>
    <%@include file="head.jsp"%>
  </head>
  <body>
    <%
      Car car = new Car();
      car.setColor("red");
      car.setNumber("za-000-aa");


      Pacient pacient = new Pacient();
      pacient.setId(1);
      pacient.setAge(25);
      pacient.setName("Miroslav");

      HashMap<String, Car> cars = new HashMap<>();
      cars.put("BMW", car);

      car.setColor("white");
      car.setNumber("km-111-aa");
      cars.put("Audi", car);

      cars.put("Skoda", car);

      ArrayList<Pacient> pacients = new ArrayList<>();
      pacients.add(pacient);
      pacients.add(pacient);
      pacients.add(pacient);



    %>

    <table class="table table-striped">
      <%

        for (int i = 0 ; i < pacients.size(); i++) {
          out.print("<tr>");
          out.print("<td>" + pacients.get(i).getId() + "</td>");
          out.print("<td>" + pacients.get(i).getName() + "</td>");
          out.print("<td>" + pacients.get(i).getAge() + "</td>");
          out.print("</tr>");
        }

      %>
    </table>

    <table class="table table-striped">
      <%
        for (String key : cars.keySet()) {
          out.print("<tr>");
          out.print("<td>" + key + "</td>");
          out.print("<td>" + cars.get(key).getNumber() + "</td>");
          out.print("<td>" + cars.get(key).getColor() + "</td>");
          out.print("<tr>");
        }
      %>
    </table>




  </body>
</html>
