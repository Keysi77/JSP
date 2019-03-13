<%@ page import="com.kmikt.Bank" %><%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 14.03.2018
  Time: 9:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Spracovanie udajov z formulara</title>
    <%@include file="head.jsp"%>
</head>
<body>
    <%
        String bankName1 = request.getParameter("bankName");
        // nazov premennej bankName1 moze byt lubovolny nazov
        // parameter objektu request vsak musi byt zhodny s tym co je vo formul. v atribute
        // name

        String iban1 = request.getParameter("iban");

        // Pretypovanie String na Integer - amount je v nasom pripade suma od 1 po 1000
        Integer amount1 = Integer.valueOf(request.getParameter("amount"));

        // nastavenie premn. v session v nasom pripade "bankName" je nazov prem. v Session
        // bankName1 - je nazov prem. ktorej hodnotu chcem ulozit do Session


        // Ulozenie objektu Bank do Session
        Bank bank = new Bank();
        bank.setBankName(bankName1);
        bank.setIban(iban1);
        bank.setAmount(amount1);

        // ulozenie celeho objektu typu Bank do Session !!!
        session.setAttribute("bank", bank);

        // Ulozenie 3. prem. do Session
//        session.setAttribute("bankName", bankName1);
//        session.setAttribute("iban", iban1);
//        session.setAttribute("amount", amount1);
    %>
    <h1>Spracuj.jsp súbor</h1>
    <div class="container">
        <table class="table table-striped">
            <tr>
                <th> Názov banky </th>
                <th> IBAN </th>
                <th> Suma </th>
            </tr>
            <tr>
                <td>
                    <%=bankName1%>
                </td>
                <td>
                    <%=iban1%>
                </td>
                <td>
                    <%=amount1%>
                </td>
            </tr>
        </table>
    </div>
    <%
        response.setHeader("Refresh", "5;url=zobraz.jsp");
    %>
</body>
</html>
