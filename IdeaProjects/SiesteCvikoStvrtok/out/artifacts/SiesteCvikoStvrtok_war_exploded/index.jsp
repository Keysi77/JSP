<%@ page import="java.util.HashMap" %><%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 29.03.2018
  Time: 8:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Kvíz</title>
    <%@include file="head.jsp"%>
  </head>
  <body>
    <%
      /*
      HashMap<String, Boolean> otazky = new HashMap<>();
      otazky.put("Najväčšia rieka pretekajúca Slovenskom je Váh.", false);
      otazky.put("Košický kraj má viac obyvateľov ako Bratislavský.", true);
      otazky.put("Prvým česko-slovenským filmom oceneným Oscarom v kategórii najlepší cudzojazyčný film bol Obchod na korze.", true);
      otazky.put("Najvyšším vrchom Slovenska je Lomnický štít.", false);
      otazky.put("Slovensko malo od svojho vzniku v roku 1993 piatich prezidentov.", false);
      */

      HashMap<String, Boolean> quiz = (HashMap<String, Boolean>) session.getAttribute("quizQuestions");
      if (quiz != null) {
    %>
      <div class="container">
        <table class="table table-striped">
          <th>
            Otátka
          </th>
          <th>
            Odpoveď
          </th>
          <%
            for (String key : quiz.keySet()) {
          %>
          <tr>
            <td><%=key%></td>
            <td><%=quiz.get(key)%></td>
          </tr>
          <%
            }
          %>
        </table>
        <p>
          <a href="zadajOtazku.jsp">Začnite vložením otázky do formulára</a>
        </p>
      </div>
    <%
      }
      else {
    %>
      <div class="container">
        <p class="warning">
          Zatiaľ nemáte žiadne otázky
        </p>
        <p>
          <a href="zadajOtazku.jsp">Začnite vložením otázky do formulára</a>
        </p>
      </div>
    <%
      }

    %>

  </body>
</html>
