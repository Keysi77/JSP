<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 21.02.2018
  Time: 8:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Prve cviko - abc</title>
    <link rel="stylesheet" href="css/styles.css" type="text/css">
  </head>
  <body>
      <div>
        Toto je div v HTML
      </div>
      <p>
          <%
              out.println("Toto je vypis pomocou JSP");
          %>
      </p>
        <%
            int age = 20;       // vytvorenie prem. typu Integer
            String name = "Miro";   // vytvorenie prem. typu String
            //Volam sa Miro a mam 20 rokov.
            out.println("Volam sa " + "<strong>" +name + "</strong>" + "a mam " + age + " rokov.");
        %>
      <p>
          <%! // vytvorenie a definovanie prem., pripadne funkcii (musi byt !) pre celu stranku
            int age2 = 30;
            String name2 = "Miro";
          %>
          Volam sa <strong><%=name2%></strong> a mam <%=age2%>
      </p>
      <%!
          String lorem1 = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Quisque ac lectus auctor, tempor nulla sed.";
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
