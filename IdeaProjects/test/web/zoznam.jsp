<%@ page import="java.util.ArrayList" %>
<%@ page import="sk.bla.Udaj" %>
<%--
  Created by IntelliJ IDEA.
  User: Keys1
  Date: 5. 4. 2018
  Time: 6:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Zoznam v Array</title>
    <%@include file="head.jsp"%>
</head>
<body>
<%
    session.setAttribute(ArrayList<Udaj>);

    ArrayList<Udaj> arrayListUdaj = new ArrayList<>();
    for (int i=0; i<arrayListUdaj.size(); i++){
        arrayListUdaj.add(new Udaj());
    }

%>


<div class="container">
    <table class="table table-striped">
        <tr>
            <th> Meno </th>
            <th> Priezvisko </th>
            <th> Vek </th>
            <th> Email </th>
            <%
                for (int i = 0; i < arrayListUdaj.size(); i++) {
            %>
        </tr>
        <tr>
            <td>
                <%=arrayListUdaj.get(i).getMeno()%>
            </td>
            <td>
                <%=arrayListUdaj.get(i).getPriezvisko()%>
            </td>
            <td>
                <%=arrayListUdaj.get(i).getVek()%>
            </td>
            <td>
                <%=arrayListUdaj.get(i).getEmail()%>
            </td>
        </tr>
        <%
            }
        %>
        <%
            response.setHeader("Refresh", "2;url=zoznam2.jsp");
        %>
    </table>
</div>


</body>
</html>
