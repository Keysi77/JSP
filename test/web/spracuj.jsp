<%@ page import="sk.bla.Udaj" %>
<%@ page import="java.util.ArrayList" %>
<%--
Created by IntelliJ IDEA.
  User: Keys1
  Date: 4. 4. 2018
  Time: 21:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>spracuj</title>
    <%@include file="head.jsp"%>
</head>
<body>

<%
    // zobrazovanie udajov z formulara pomocou triedy Udaj a set/get
    String menoPremenna = request.getParameter("meno");
    String priezviskoPremenna = request.getParameter("priezvisko");
    Integer vekPremenna = Integer.valueOf(request.getParameter("vek"));
    String emailPremenna = request.getParameter("email");

    Udaj udaj = new Udaj();
    udaj.setMeno(menoPremenna);
    udaj.setPriezvisko(priezviskoPremenna);
    udaj.setVek(vekPremenna);
    udaj.setEmail(emailPremenna);

    // ulozenie celeho objektu udaj do session
   // session.setAttribute("udaj", udaj);


    ArrayList udajArrayList = new ArrayList<Udaj>();
    udajArrayList.add(udaj.getMeno());
    udajArrayList.add(udaj.getPriezvisko());
    udajArrayList.add(udaj.getVek());
    udajArrayList.add(udaj.getEmail());

   // session.getAttribute("meno");
    // udaj = new ArrayList<Udaj>();
    // udaj.add("meno");
    //udaj = new HashMap<>(); // v session nie je vytvoreny objekt, tak si ho musim vytvorit
    //quiz.put(q, aB);
    session.setAttribute("udaj", udajArrayList);  // ulozenie HashMap do Session


%>

<div class="container">
    <table class="table table-striped">
        <tr>
            <th> Meno </th>
            <th> Priezvisko </th>
            <th> Vek </th>
            <th> Email </th>
        </tr>
        <tr>
            <td>
                <%=menoPremenna%>
            </td>
            <td>
                <%=priezviskoPremenna%>
            </td>
            <td>
                <%=vekPremenna%>
            </td>
            <td>
                <%=emailPremenna%>
            </td>
        </tr>
    </table>
</div>
<%
    response.setHeader("Refresh", "2;url=zobraz.jsp");
%>

</body>
</html>
