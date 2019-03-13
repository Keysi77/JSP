<%@ page import="sk.bla.Udaj" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Keys1
  Date: 4. 4. 2018
  Time: 22:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Zobraz session</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%

      ArrayList udajArrayList = new ArrayList<Udaj>();
    // vytiahnutie dat z celeho objektu ktory je ulozeny v session v spracuj.jsp
  //   Udaj udaj = new Udaj();
       udajArrayList  = (Udaj) session.getAttribute("udaj");
        session.getAttribute(udajArrayList);
%>


<div class="container">
    <table class="table table-striped">
        <tr>
            <th> Meno session</th>
            <th> Priezvisko session</th>
            <th> Vek session</th>
            <th> Email session</th>
        </tr>
        <tr>
            <td>
                <%=udaj.getMeno()%>
            </td>
            <td>
                <%=udaj.getPriezvisko()%>
            </td>
            <td>
                <%=udaj.getVek()%>
            </td>
            <td>
                <%=udaj.getEmail()%>
            </td>
        </tr>
    </table>
</div>
<%
    response.setHeader("Refresh", "2;url=zoznam.jsp");
%>
</body>
</html>
