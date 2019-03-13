<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 28.02.2017
  Time: 8:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Title</title>
  </head>
  <body>
  <%
    out.println("ahoj JSP");
    out.println("dalsi text");
    String a1="Etiam velit dui, vestibulum sed pharetra ut, aliquet sed justo. Phasellus iaculis quis velit quis sodales. Cras volutpat posuere elit sed accumsan. Nulla posuere varius dui nec ultrices. Phasellus mattis ultrices leo vitae congue. Phasellus faucibus neque non risus mollis, eu ultrices dui sagittis. Praesent ultricies mi ac scelerisque consectetur. Suspendisse lobortis gravida ex. Nulla rutrum felis eget dapibus blandit. Nam id sodales diam. Quisque laoreet turpis non condimentum ultricies. Proin nec porta turpis. Vestibulum eu sagittis magna.";
    String a2="Vestibulum sodales ante vitae euismod egestas. Donec non sapien condimentum, vulputate enim eget, facilisis lorem. In id tellus id neque ornare efficitur. Nulla facilisi. Aliquam non luctus magna. In in purus nisi. Nullam non lectus sit amet augue congue egestas. Donec et elit leo. Nunc et sapien in magna aliquet sodales. Suspendisse posuere lectus vitae sapien blandit, vel porta nulla facilisis. Donec cursus finibus purus vitae luctus. Etiam vitae tortor vel odio venenatis interdum vel vel tellus. Cras id quam eros. Sed non felis cursus ante interdum auctor. Phasellus pulvinar eros arcu, et eleifend diam tristique in.";
    out.println("<p>"+a1+ "</p>");
    out.println("<p>" +a2+ "</p>");

  %>
  <a href="https://www.google.sk/?gfe_rd=cr&ei=ujG1WK69HbKE8QeDupewBA#q=uniza&*" target="_blank">Google </a>
  <p>
    <a href="http://www.google.sk" target="_blank">Google </a>
  </p>
  <p>
    <a href="http://www.google.sk" target="_blank">Go toGoogle </a>
  </p>
  <p style="color:red;"><%=a1%></p>
  <p style="color:blue;"><%=a1%></p>
  <p style="color:green;"><%=a1%></p>



  </body>
</html>
