<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 22.03.2018
  Time: 8:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Piate cviko stvrtok</title>
    <%@include file="head.jsp"%>
  </head>
  <body>
      <%

        Double[] doubleArray = new Double[10];

        for (int i = 0; i < 10; i++) {  // cyklus nastavim manualne podla poctu prvkov pola

            /*
                Random random = new Random();
                Double randomDouble = ranom.nextDouble();

                ak pouzijem objekt random len raz nemusim vytvarat pomocne premen.

                mozem pouzit skrateny zapis

                new Random().nextDouble()

            */

            doubleArray[i] = new Random().nextDouble();
        }

      %>

      <h2>Nahodne 1. rozmerne pole Double vypis 1</h2>
      <!-- vypis do tabulky pomocou out.println -> nevidim oznacene HTML znacky -->
      <table class="table table-striped">
        <tr>
          <%
            for (int i = 0; i < doubleArray.length; i++) { // zistenie poctu prvkov pola
                out.println("<td>" + doubleArray[i] + "</td>");
            }
          %>
        </tr>
      </table>

      <h2>Nahodne 1. rozmerne pole Double vypis 2</h2>
      <!-- vypis do tabulky ukoncenim skripletu -> vidim HTML znacky -->
      <table class="table table-striped">
          <tr>
              <%
                  for (int i = 0; i < doubleArray.length; i++) {
              %>
                <td>
                    <%=doubleArray[i]%>
                </td>
              <%
                  }
              %>
          </tr>
      </table>

      <%
          Double[][] doubleArrayDouble = new Double[5][5];

          for (int i = 0; i < doubleArrayDouble.length; i++) {
              for (int j = 0; j < doubleArrayDouble[i].length; j++) {
                  doubleArrayDouble[i][j] = new Random().nextDouble();
              }
          }
      %>

      <h2>Nahodne 2. rozmerne pole Double vypis 1</h2>
      <!-- vypis do tabulky pomocou out.println -> nevidim HTML znacky -->
      <table class="table table-striped">
          <%
              for (int i = 0; i < doubleArrayDouble.length ; i++) {      // prechadzanie riadkov array2.length nam vrati pocet riadkov
                  out.println("<tr>");

                  for (int j = 0; j < doubleArrayDouble[i].length; j++) {        // prechadzanie stlpcov array2[i].length nam vrati pocet stlpcov
                      out.println("<td>" + doubleArrayDouble[i][j] + "</td>");
                  }

                  out.println("</tr>");
              }
          %>
      </table>

      <h2>Nahodne 2. rozmerne pole Double vypis 2</h2>
      <!-- vypis do tabulky ukoncenim skripletu -> vidim HTML znacky -->
      <table class="table table-striped">
          <%
              for (int i = 0; i < doubleArrayDouble.length; i++) {
          %>
          <tr>
              <%
                  for (int j = 0; j < doubleArrayDouble[i].length; j++) {
              %>
              <td>
                  <%=doubleArrayDouble[i][j]%>
              </td>
              <%
                  }
              %>
          </tr>
          <%
              }
          %>
      </table>
  </body>
</html>
