</head>
<body>

<!-- Static navbar -->
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Cars Service</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="#">Home</a></li>

                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Administracia<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/employee/admin/insertEmpl.jsp">Registrovat Zamestnanca</a></li>
                        <li><a href="/employee/admin/listEmployees.jsp">Zobrazit Zamestnancov</a></li>
                        <li><a href="/employee/admin/listClients.jsp">Zobrazit Klientov</a></li>
                       <%-- <li><a href="/employee/admin/carRepairsAdmin.jsp">Opravy aut</a></li>--%>
                        <%-- <li><a href="/employee/loginEmpl.jsp">login </a></li>--%>
                        <%--<li><a href="/employee/admin/loginEmplAdmin.jsp">Logi in As Admin</a></li>--%>

                    </ul>
                </li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Repairs<span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/employee/admin/carRepairsAdmin.jsp">Vsetky opravy</a></li>
                        <li><a href="/employee/admin/testListStatusCode.jsp?status_repair=1">Nevybavene</a></li>
                        <li><a href="/employee/admin/testListStatusCode.jsp?status_repair=2">Na aute sa pracuje</a></li>
                        <li><a href="/employee/admin/testListStatusCode.jsp?status_repair=3">Hotove</a></li>
                        <li><a href="/employee/admin/testListStatusCode.jsp?status_repair=4">Chybne</a></li>

                        <%--<li><a href="/employee/admin/listWaitingRepairs.jsp">Cakajuce na vybavenie</a></li>
                        <li><a href="/employee/admin/doneRepairs.jsp">Vybavene</a></li>
                        <li><a href="#">Prave sa opravuju</a></li>
                        <li><a href="#">Problemove</a></li>
                        <li><a href="/employee/admin/testListStatusCode.jsp?status_repair=3">TEst</a></li>--%>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">


                    <%
                        if (session.getAttribute("empl_admin") != null) {%>
                    <li>
                        <a href="/logOutPage.jsp">Log out: <span class="glyphicon glyphicon-log-out"></span>  <%out.println(" " + (String) session.getAttribute("empl_admin"));%>
                        </a></li>
                    <%
                        } else {
                            out.println("");
                        }

                    %>


            </ul>
        </div><!--/.nav-collapse -->
    </div><!--/.container-fluid -->
</nav>