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
                <li><a href="/client/index.jsp">Home</a></li>
                <li><a href="/client/addNewRepair.jsp">Add new Repair</a></li>
                <li><a href="/client/myRepairs.jsp">My repairs</a></li>
                <%--<li><a href="/client/loginClient.jsp">Login</a></li>--%>
            </ul>
            <ul class="nav navbar-nav navbar-right">

                 <%
                    if (session.getAttribute("client_email") != null) {%>
                <li>
                <a href="/client/logOutClient.jsp">Log out: <span class="glyphicon glyphicon-log-out"></span>  <%out.println(" " + (String) session.getAttribute("client_email"));%>
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