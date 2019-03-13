<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 14.03.2018
  Time: 8:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
        <title>stvrtecviko</title>
          <%@include file="head.jsp"%>
          </head>
  <body>
  <div class="container text">
    <div class="row">
      <form role="form" method="post" action="spracuj.jsp" id="formular">
        <div class="form-group">
          <label for="nazov">Nazov banky:</label>
          <input type="text" name="nazov" id="nazov" class="form-control">
        </div>
        <div class="form-group">
          <label for="iban">Iban:</label>
          <input type="text" name="iban" id="iban" class="form-control">
        </div>
        <div class="form-group">
          <label for="suma">Suma:</label>
          <input type="number" name="suma" id="suma" class="form-control">
        </div>
        <input type="submit" class="btn btn-primary" value="Odoslať">
      </form>
    </div>
  </div>

  <script>
      $("#formular").validate({
          rules: {
              nazov: {
                  required: true,
                  rangelength: [5, 20]
              },
              iban:{
                  required: true,
                  rangelength:[24, 24]
              },
              suma:{
                  required: true,
                  number: true,
                  range: [1, 1000]
              }
          },
          messages: {
              nazov: {
                  required: "Toto pole je povinné",
                  rangelength: "Počet znakov musí byť v rozmedzí 5-20"
              },
              iban:{
                  required: "Toto pole je povinné",
                  rangelength: "Počet čísel musí byť 24"
              },
              suma:{
                  required: "Toto pole je povinné",
                  number: "Zadajte prosím len číslo",
                  range: "Celková cena musí byť od 1 po 1000€"
              }
          }
      });
  </script>
  </body>
</html>

