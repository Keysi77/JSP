<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 22.02.2018
  Time: 8:23
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Prve cviko ukazka</title>
    <link rel="stylesheet" href="css/styles.css" type="text/css">
  </head>
  <body>
    <p>
    <%
      out.println("Ahoj svet :)");
    %>
    </p>
    <%
      int age = 20; // definovanie datoveho typu a priradenie hodnoty
      /*
         Komentar na viac riadkov
      */
      String name = "Miroslav"; // definovanie retazca musi byt velke String

      //TODO: nieco urob; Vypis: Volam sa Miroslav a mam 20 rokov.
      // mozem pouzit zlucovanie retazcov pomocou operatora + !!! vsetky musia byt retazce, t.j. String
      out.println("Volam sa " + name + " a mam " + age + " rokov");
    %>

    <p>
      Volam sa <%=name%> a mam <%=age%> rokov.
    </p>

    <%!
      String lorem1 ="Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ac lectus auctor, tempor nulla sed.";
      String lorem2 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean tempus arcu eget dolor gravida aliquam. Phasellus nibh enim, finibus eget porta ut, pretium quis mauris. Praesent laoreet massa sed sed.";
      String lorem3 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In volutpat suscipit faucibus. Vestibulum vel blandit arcu. Vestibulum aliquet eros in fringilla venenatis. Donec aliquet augue nunc, in aliquet urna facilisis in. Quisque eu sem eu nibh vehicula consectetur. Cras quis dolor elementum posuere.";
    %>
    <p class="color1">
      <%=lorem1%>
    </p>
    <p class="color2">
      <%=lorem2%>
    </p>
    <p class="color3">
      <%=lorem3%>
    </p>






  </body>
</html>
