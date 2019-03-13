<%@ page import="java.util.ArrayList" %>
<%@ page import="com.kmikt.Bank" %><%--
  Created by IntelliJ IDEA.
  User: miro
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
        // zoznam je nedefinovaneho typu, t.j. mozem vlozit lubovolny datovy typ

        // pridanie prvku do zoznamu
        zoznam.add("prvy riadok");      // index = 0
        zoznam.add(5);                  // index = 1

        for (int i = 0; i < zoznam.size(); i++) {
    %>
        <p>
    <%        // vypisanie vsetkych prvkov v zozname
            out.println(zoznam.get(i));
        }
    %>
        </p>
    <%
        zoznam.remove(0);       // vymazem polozku prvy riadok

        // vytvorenie zoznamu typu Bank
        ArrayList<Bank> zoznamBank = new ArrayList<>();

        // vytvorenie pomconeho objektu typu Bank a naplnenie udajov
        Bank bank = new Bank();
        bank.setBankName("Tatra");
        bank.setIban("SK4546454645");
        bank.setAmount(50);

        // vlozenie pomocneho objektu do zoznamu
        zoznamBank.add(bank);

        // ked chcem vybrat udaj zo zoznamu a nieco s nim urobit
        Bank pomBank = new Bank();  // vytvorenie pomoc. objektu
        pomBank = zoznamBank.get(0); // do pomocneho objektu vlozime udaje zo zonamu z indexu 0


    %>
</body>
</html>
