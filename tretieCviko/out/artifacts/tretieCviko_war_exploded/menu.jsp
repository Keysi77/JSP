<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 08.03.2018
  Time: 9:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <ul class="nav nav-pills">

                <%
                    String p = request.getParameter("page");
                    Integer pInteger;
                    if(p != null){
                        pInteger = Integer.valueOf(p);
                    }else{
                        pInteger = 1;
                    }
                %>

                <%

                    if (pInteger==1){%>
                <li role="presentation " class="active"><a href="index.jsp?page=1">Home</a></li>

                   <% } else {%>
                <li role="presentation "><a href="index.jsp?page=1">Home</a></li>

                <%
                    }

                %>


                <li role="presentation"><a href="galeria.jsp?page=2">Galeria</a></li>
                <li role="presentation"><a href="kontakt.jsp?page=3">Kontakt</a></li>
            </ul>
        </div>
    </nav>
</div>
