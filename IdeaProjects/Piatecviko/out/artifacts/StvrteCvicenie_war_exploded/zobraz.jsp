<%@ page import="com.kmikt.Bank" %><%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 14.03.2018
  Time: 9:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Zobraz udaje zo Session</title>
    <%@include file="head.jsp"%>
</head>
<body>
    <div class="container">
        <%
            // musim povedat aky datovy typ som umiestnil do session!!!!
            // 1. priklad ked mam v session ulozene 3 premen.
//            String bankName1 = (String) session.getAttribute("bankName");
//
//            String iban1 = (String) session.getAttribute("iban");
//
//            Integer amount1 = (Integer) session.getAttribute("amount");

            // 2. priklad ked mam data v Session ulozene v objekte typu Bank
            Bank bank = new Bank();
            bank = (Bank) session.getAttribute("bank");

        %>
        <h1>Zobraz.jsp súbor</h1>
        <div class="container">
            <table class="table table-striped">
                <tr>
                    <th> Názov banky </th>
                    <th> IBAN </th>
                    <th> Suma </th>
                </tr>
                <tr>
                    <td>
                        <%=bank.getBankName()%>
                    </td>
                    <td>
                        <%=bank.getIban()%>
                    </td>
                    <td>
                        <%=bank.getAmount()%>
                    </td>
                </tr>
            </table>
        </div>
    </div>

</body>
</html>
