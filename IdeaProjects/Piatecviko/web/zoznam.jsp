<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: student
  Date: 21.03.2018
  Time: 10:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Zoznam</title>
    <%@include file="head.jsp"%>

</head>
<body>
<%
    ArrayList zoznam = new ArrayList();
    zoznam.add("prvy riadok"); //index = 0
    zoznam.add(5); //index = 1

    for (int i=0; i < zoznam.size(); i++) {
        //vypisanie vsetkych prvkov v zozname
%>
<p>
<%
        out.println(zoznam.get(i));
    }
    %>
</p>
<%
    zoznam.remove(0); // vymazem polozku prvy riadok
%>

</body>
</html>
