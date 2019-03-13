<%--
  Created by IntelliJ IDEA.
  User: miro
  Date: 07.03.2018
  Time: 8:56
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="container">
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="#">JSP Cvicenia</a>
            </div>
            <ul class="nav navbar-nav">
                <%
                    // zistovanie ci bol odoslany parameter page!!!!
                    String p = request.getParameter("page");    // request je vzdy String!!
                    Integer pInteger;

                    if (p != null) {        // overenie ci bol poslany parameter p!!!
                        pInteger = Integer.valueOf(p);      // konverzia String na Integer
                    } else {        // ak sa prvy krat spusti stranka je bez parametra page=1
                        pInteger = 1;   // ako primarnu stranku chcem zobrazovat
                    }

                    switch (pInteger) {     // zistujeme aky parameter bol odoslany aby sme vedeli zobrazity spravnu stranku
                        case 1:
                            %>
                                <li class="active"><a href="index.jsp?page=1">Home</a></li>
                                <li><a href="formular.jsp?page=2">Formular</a></li>
                                <li><a href="kontakt.jsp?page=4">Kontakt</a></li>
                            <%
                            break;
                        case 2:
                            %>
                                <li class="active"><a href="index.jsp?page=1">Home</a></li>
                                <li><a href="formular.jsp?page=2">Formular</a></li>
                                <li><a href="kontakt.jsp?page=4">Kontakt</a></li>
                            <%
                        break;
                        case 4:
                            %>
                                <li><a href="index.jsp?page=1">Home</a></li>
                                <li><a href="formular.jsp?page=2">Formular</a></li>
                                <li class="active"><a href="kontakt.jsp?page=4">Kontakt</a></li>
                            <%
                            break;
                        default:    // ak bude page ine ako 1 a 4, primarne nam zobrazi index.jsp!!!
                            %>
                                <li class="active"><a href="index.jsp?page=1">Home</a></li>
                                <li><a href="formular.jsp?page=2">Formular</a></li>
                                <li><a href="kontakt.jsp?page=4">Kontakt</a></li>
                            <%
                    }



                %>

            </ul>
        </div>
    </nav>
</div>

