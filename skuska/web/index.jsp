<%--
  Created by IntelliJ IDEA.
  User: StanislavaTomagova
  Date: 5/30/2017
  Time: 8:32 AM
  To change this template use File | Settings | File Templates.
--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%@ page import="com.company.abc.Statnice" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.company.abc.Statnice_Controller" %>


<html>

<head>

  <title>Login</title>

  <script

          src="https://code.jquery.com/jquery-3.1.1.min.js"

          integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="

          crossorigin="anonymous"></script>
  <!-- Latest compiled and minified CSS -->

  <link rel="stylesheet"

        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"

        integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"

        crossorigin="anonymous">

  <!-- Optional theme -->

  <link rel="stylesheet"

        href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css"

        integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp"

        crossorigin="anonymous">

  <!-- Latest compiled and minified JavaScript -->

  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"

          integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa"

          crossorigin="anonymous"></script>


</head>

<body>


<%
  Statnice statnice = new Statnice();
  statnice.setMeno("Micka");
  statnice.setKruzok("0123ABC");
  statnice.setVek(7);
  statnice.setHodnotenie1("A");
  statnice.setHodnotenie2("B");

  Statnice statnice1 = new Statnice();
  statnice1.setMeno("Macka");
  statnice1.setKruzok("123123");
  statnice1.setVek(10);
  statnice1.setHodnotenie1("C");
  statnice1.setHodnotenie2("D");

  ArrayList<Statnice> al = new ArrayList();
  al.add(statnice);
  al.add(statnice1);






%>

<div class="container">
  <table class="table table-striped">
    <thead>
      <tr>
        <th>Meno</th>
        <th>Kruzok</th>
        <th>Vek</th>
        <th>Hodnotenie 1</th>
        <th>Hodnotenie 2</th>
      </tr>
      </thead>
    <tbody>
      <tr>
        <td><%out.print(al.get(0).getMeno());%></td>
        <td><%out.print(al.get(0).getKruzok());%></td>
        <td><%out.print(al.get(0).getVek());%></td>
        <td><%out.print(al.get(0).getHodnotenie1());%></td>
        <td><%out.print(al.get(0).getHodnotenie2());%></td>
      </tr>
      <tr>
        <td><%out.print(al.get(1).getMeno());%></td>
        <td><%out.print(al.get(1).getKruzok());%></td>
        <td><%out.print(al.get(1).getVek());%></td>
        <td><%out.print(al.get(1).getHodnotenie1());%></td>
        <td><%out.print(al.get(1).getHodnotenie2());%></td>
      </tr>


    </tbody>
  </table>
</div>


<form method="post" action="/Login">
  <div class="container" >
    <div class="form-group">

      <label for="meno">Meno:</label>

      <input id="meno" type="text" class="form-control" name="meno">

    </div>

    <div class="form-group">

      <label for="kruzok">Kruzok:</label>

      <input id="kruzok" type="text" class="form-control" name="kruzok">

    </div>


    <div class="form-group">

      <label for="vek">Vek:</label>

      <input id="vek" type="number" class="form-control" name="vek">

    </div>

    <div class="form-group">

      <label for="hodnotenie1">Hodnotenie1:</label>

      <input id="hodnotenie1" type="text" class="form-control" name="hodnotenie1">

    </div>

    <div class="form-group">

      <label for="hodnotenie2">Hodnotenie2:</label>

      <input id="hodnotenie2" type="text" class="form-control" name="hodnotenie2">

    </div>

    <button id="odoslat" type="submit" class="form-control">Odoslat</button>
  </div>

</form>



<%
  ArrayList<Statnice> alStatnice;
  alStatnice = new ArrayList<Statnice>();

  Statnice_Controller statniceController = new Statnice_Controller();
  alStatnice = statniceController.selectStatnice();

%>


<div class="container">
  <table class="table table-striped">
    <thead>
    <tr>
      <th>Meno</th>
      <th>Kruzok</th>
      <th>Vek</th>
      <th>Hodnotenie 1</th>
      <th>Hodnotenie 2</th>
    </tr>
    </thead>
    <tbody>

    <%
      for (int i=0; i< alStatnice.size(); i++)
      {
          out.print("<tr>");

              out.print("<td>");
              out.print (alStatnice.get(i).getMeno());
              out.print("</td>");

              out.print("<td>");
              out.print (alStatnice.get(i).getKruzok());
              out.print("</td>");

              out.print("<td>");
              out.print (alStatnice.get(i).getVek());
              out.print("</td>");

              out.print("<td>");
              out.print (alStatnice.get(i).getHodnotenie1());
              out.print("</td>");

              out.print("<td>");
              out.print (alStatnice.get(i).getHodnotenie2());
              out.print("</td>");
        out.print("</tr>");

      }
    %>

    </tbody>
  </table>
</div>





</body>
</html>