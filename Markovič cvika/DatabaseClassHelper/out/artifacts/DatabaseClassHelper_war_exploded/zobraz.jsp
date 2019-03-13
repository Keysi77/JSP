<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="com.kmikt.cars.CarModel" %>
<%@ page import="com.kmikt.cars.CarController" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 11.04.2018
  Time: 9:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Udaje z DB</title>
    <%@include file="head.jsp"%>
</head>
<body>
    <div class="container">
    <table class="table table-striped">
        <%
            List<CarModel> cars = new CarController().getAllCars();

            for (int i=0; i < cars.size(); i++) {
            %>
               <tr>
                <td><%=cars.get(i).getId()%></td>
                <td><%=cars.get(i).getBrand()%></td>
                <td style="background-color: <%=cars.get(i).getColor()%>; color: #FFFFFF"><%=cars.get(i).getColor()%></td>
                <td><a href="/deleteItem?id=<%=cars.get(i).getId()%>">Zmazať</a></td>
                
               </tr>
            <%
            }


        %>
    </table>
    </div>
</body>
</html>
