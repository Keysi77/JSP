<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 14.03.2018
  Time: 8:30
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>4. cvicenie</title>

    <%@include file="head.jsp"%>
  </head>
  <body>
    <div class="container">
      <form id="form1" action="spracuj.jsp" method="post">
        <div class="form-group">
          <label for="bankName">Názov banky</label>
          <input type="text" class="form-control" id="bankName" name="bankName" placeholder="Zadajte názov banky">

        </div>
        <div class="form-group">
          <label for="iban">IBAN</label>
          <input type="text" class="form-control" id="iban" name="iban" placeholder="Zadajte IBAN">
          <small>
            <%
              // Generovanie random IBAN kodu pre slovensko
              String randomIban = "SK";
              for (int i=1; i <= 22; i++){    // generovanie nahodnych cisel od 1..9, 22x
                Random ran = new Random();
                randomIban += ran.nextInt(9); // k premen. pridam nahodne vygenerovane cislo
              }
            %>
            <%=randomIban%>
          </small>
        </div>

        <div class="form-group">
          <label for="iban">Suma</label>
          <input type="number" class="form-control" id="amount" name="amount" placeholder="Zadajte IBAN">
        </div>

        <button type="submit" class="btn btn-primary">Odoslať</button>
      </form>
    </div>
  </body>
</html>
<script src="js/messages_sk.js"></script>
<script src="js/overenie.js"></script>