<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 08.03.2018
  Time: 8:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Tretie cviko / stvrtok</title>

    <%@include file="header.jsp"%>

  </head>
  <body>
        <%@include file="menu.jsp"%>


        <%
            HashMap hasmapa = new HashMap();
            hasmapa.put(1, "jedna");
            hasmapa.put(2, "dva");
            hasmapa.put(10, "desat");
            out.println("<p>"+hasmapa.get(10)+"</p>");
            hasmapa.remove(2);
            out.println("<p>"+hasmapa.get(10));
        %>




        <div class="top-img">
        </div>

        <div class="row container">
          <div class="col-lg-6 col-md-6">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida lobortis pulvinar. Morbi eget varius velit. Mauris sagittis condimentum mauris a iaculis. Aenean mattis nunc mauris, ac viverra enim dignissim id. Etiam purus mi, auctor sit amet interdum at, mollis sed nisi. Etiam laoreet ultrices aliquam. Donec viverra orci et felis ultrices, sit amet aliquam neque tristique. Integer feugiat in tellus feugiat porta. Donec non tortor a tellus venenatis pellentesque et non tellus. Quisque eget libero ullamcorper, molestie ante at, fermentum lacus. Nunc consequat justo vitae feugiat faucibus. Duis eu tincidunt felis. Nam imperdiet, ante a aliquam laoreet, elit erat faucibus nulla, sit amet tempus ex neque nec ante. Vivamus sed tempus dolor. Phasellus eu dictum augue.
          </div>

          <div class="col-lg-6 col-md-6">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed gravida lobortis pulvinar. Morbi eget varius velit. Mauris sagittis condimentum mauris a iaculis. Aenean mattis nunc mauris, ac viverra enim dignissim id. Etiam purus mi, auctor sit amet interdum at, mollis sed nisi. Etiam laoreet ultrices aliquam. Donec viverra orci et felis ultrices, sit amet aliquam neque tristique. Integer feugiat in tellus feugiat porta. Donec non tortor a tellus venenatis pellentesque et non tellus. Quisque eget libero ullamcorper, molestie ante at, fermentum lacus. Nunc consequat justo vitae feugiat faucibus. Duis eu tincidunt felis. Nam imperdiet, ante a aliquam laoreet, elit erat faucibus nulla, sit amet tempus ex neque nec ante. Vivamus sed tempus dolor. Phasellus eu dictum augue.
          </div>

        </div>

        <div class="div-img">

        </div>

        <!-- Main content of our page -->
        <div class="container">
          <%
             switch (pInteger) {
                 case 1:
                 %>
                        <%@include file="mainPage.jsp"%>
                 <%
                        break;
                 case 2:
                 %>
                        <%@include file="galeria.jsp"%>
                 <%
                        break;
                 case 3:
                 %>
                        <%@include file="kontakt.jsp"%>
                 <%
                        break;
                 default:
                 %>
                    <%@include file="mainPage.jsp"%>
                 <%
             }
          %>
        </div>
  </body>
</html>
