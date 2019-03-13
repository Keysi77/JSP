<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 21.02.2018
  Time: 8:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
    <link rel="stylesheet" href="oo.css">
  </head>
  <body>

  <div>Toto je div v HTML</div>


 <%
     int age=23;
     String name="Rasto";


     //TODO: Volam sa Rasto a mam 23 rokov
     out.println(" Volam sa " +name + " a mam " + age + " rokov.");

  %>



<%!
     String lorem1= "dawdawd pdsadkslakdls kdlskl";
      String lorem2= "dasdadasdasdadsadsadads dsdsds dsds dsdsds ds";
      String lorem3= "dwadwadawdwaddddddddddddsd sdsdsdsds dsdsds d";

%>
  <p><div class="a"><%=lorem1%></div></p>
  <p><div class="b"><%=lorem2%></div></p>
  <p><div class="c"><%=lorem3%></div></p>

  $END$
  </body>
</html>
