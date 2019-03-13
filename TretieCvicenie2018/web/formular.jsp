<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 07.03.2018
  Time: 8:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Tretie cvicenie - formular</title>

      <script
              src="https://code.jquery.com/jquery-3.3.1.min.js"
              integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
              crossorigin="anonymous"></script>

      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>

      <!-- Latest compiled and minified CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

      <!-- Optional theme -->
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

      <!-- Latest compiled and minified JavaScript -->

      <script src="https://cdn.jsdelivr.net/npm/jquery-validation@1.17.0/dist/jquery.validate.min.js"></script>
      <script src="js/messages_sk.js"></script>

      <link rel="stylesheet" href="css/style.css" type="text/css">
  </head>
  <body>
      <div class="top-img">
      </div>

      <!-- Takto vlozim na miesto kod zo suboru menu.jsp -->
      <%@include file="menu.jsp"%>

      <div class="div-img">

      </div>

      <div class="container p10">
          <form action="formular.jsp" method="get" id="form1">
              <div class="form-group">
                  <label for="ecv">ECV</label>
                  <input type="text" class="form-control" id="ecv" name="ecv" placeholder="ZA-001AA">
              </div>
              <div class="form-group">
                  <label for="druh">Druh tovaru</label>
                  <select class="form-control" id="druh" name="druh">
                      <option>Potraviny</option>
                      <option>Farba</option>
                      <option>Piesok</option>
                      <option>Beton</option>
                      <option>Drogeria</option>
                  </select>
              </div>

              <div class="form-group">
                  <label for="cena">Cena</label>
                  <input type="number" class="form-control" id="cena" name="cena" placeholder="od 1 po 1000">
              </div>

              <div class="form-group">

                  <button type="submit" class="btn btn-primary">Odoslat</button>
              </div>

          </form>
      </div>

  </body>
</html>
<script src="js/overenie.js"></script>
