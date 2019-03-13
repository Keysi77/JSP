<%@ page import="java.util.ArrayList" %>
<%@ page import="com.kmikt.Monitor" %><%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 22.03.2018
  Time: 9:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Zoznam JSP</title>
    <%@include file="head.jsp"%>
</head>
<body>
    <%
        ArrayList al = new ArrayList();
        al.add("Pondelok");     // vlozenie prvku
        al.add(5);

        out.println("1. prvok v zozname je: " + al.get(0));
        // vyber prvku, POZOR prvok s indexom 0 musi existovat!!!

        al.remove(0);    // vymazanie prvku zo zoznamu

        int pocetPrvkov = al.size();       // zistenie poctu prvkov zoznamu


        ArrayList arrayList = new ArrayList();

        for (int i = 0; i < 10; i++) {
            arrayList.add("prvok" + (i + 1));
        }
    %>
    <!-- vypis do tabulky ukoncenim skripletu -> vidim HTML znacky -->
    <table class="table table-striped">
        <tr>
            <%
                for (int i = 0; i < arrayList.size(); i++) {
            %>
            <td>
                <%=arrayList.get(i)%>
            </td>
            <%
                }
            %>
        </tr>
    </table>

    <%
        ArrayList<String> stringList = new ArrayList<>();   // zoznam typu String
        stringList.add("Prvy zazanm");
    %>

    <%
        ArrayList<Monitor> arrayListMonitor = new ArrayList<>();
        for (int i = 0; i < 10; i++) {
            arrayListMonitor.add(new Monitor());    // nahodne vygenerovane udaje z konstruktora -> pozri v triede Monitor ako sa to generuje
        }
    %>
    <!-- vypis do tabulky ukoncenim skripletu -> vidim HTML znacky -->
    <table class="table table-striped">
        <th> Veľkosť </th>
        <th> Typ </th>
        <th> Farba </th>
        <%
            for (int i = 0; i < arrayListMonitor.size(); i++) {
        %>
            <tr style="background-color: <%=arrayListMonitor.get(i).getFarba()%>">
                <td><%=arrayListMonitor.get(i).getVelkost()%>"</td>
                <td><%=arrayListMonitor.get(i).getTyp()%></td>
                <td><%=arrayListMonitor.get(i).getFarba()%></td>
            </tr>
        <%
            }
        %>
    </table>


</body>
</html>
