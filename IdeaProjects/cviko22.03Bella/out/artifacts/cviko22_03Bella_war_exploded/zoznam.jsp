<%@ page import="java.util.ArrayList" %>
<%@ page import="com.sun.org.apache.xerces.internal.xs.StringList" %>
<%@ page import="com.monitor.Monitor" %><%--
  Created by IntelliJ IDEA.
  User: student
  Date: 22.03.2018
  Time: 9:35
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
    ArrayList<String>  al = new ArrayList<String>();
    al.add("Januar");
    al.add("Februar");
    al.add("Marec");
    al.add("April");
    al.add("Maj");
    al.add("Jun");
    al.add("Jul");
    al.add("August");
    al.add("Septembrer");
    al.add("Oktober");
    al.add("December");
    int pocet_prvkov = al.size();
    out.println("pocet prvkov je: " +pocet_prvkov);

%>

<table class="table table-striped">
    <tr>
        <%
            for (int i=0; i<al.size() ; i++){
        %>
        <td>
                <% out.println(al.get(i)); %>
        </td>
        <%
            }
        %>
    </tr>
</table>

<%

%>
<%
    ArrayList  Monitor = new ArrayList();

    Monitor.add("werwer");
    Monitor.add("rtzrz");
    Monitor.add("ertet");
    Monitor.add("zertzrz");



%>
<%
    Monitor monitor = new Monitor();

    String typMonitor = request.getParameter("typ");
    String farbaMonitor = request.getParameter("farba");
  //  Integer velkostMonitor = Integer.valueOf(request.getParameter("velkost"));

    monitor.setTyp(typMonitor);
    monitor.setFarba(farbaMonitor);
   // monitor.setVelkost(velkostMonitor);
%>

<table class="table table-striped">
    <tr>
        <th> Typ </th>
        <th> Farva </th>
        <th> Velkost </th>
    </tr>
    <tr>
        <td>
            <%=monitor.getTyp()%>
        </td>
        <td>
            <%=monitor.getFarba()%>
        </td>
        <td>
            <%=//monitor.getVelkost()+"  \" "%>
        </td>
    </tr>
</table>

</body>
</html>
