<%@ page import="com.carservice.controller.dao.ClientImplement" %>
<%@ page import="com.carservice.model.Client" %>
<%@ page import="java.util.ArrayList" %>
<%@include file="../includes/header.jsp" %>
<title> List of Clients</title>

</head>
<body>
<%@include file="../includes/navbarAdmin.jsp" %>

<%
    if (session.getAttribute("empl_admin") == null) {
        response.sendRedirect("loginEmplAdmin.jsp");
        return;
    }
%>
<%--<div class="container">
    <div class="row">
        <div class="col-lg-7">
            <a href="/employee/admin/logOutAdmin.jsp">Odhlas
                sa:</a> <%out.println(" " + (String) session.getAttribute("empl_admin"));%>
        </div>
        <div class="col-lg-5">
            <div class="result"></div>
        </div>
    </div>
</div>--%>


<%
    ClientImplement clientDao = new ClientImplement();
    ArrayList<Client> clients = new ArrayList<>();
    //Client client = new Client();
    clients = clientDao.getAllClients();
%>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <h1>List of Clients</h1>
            <table class="table table-bordered">
                <thead>
                <tr>
                    <td>id</td>
                    <td>Frirst name</td>
                    <td>Second name</td>
                    <td> client's Email</td>
                    <%--<td> pass</td>--%>
                    <td>Edit</td>
                    <td>Delete</td>
                </tr>
                </thead>
                <%
                    for (int i = 0; i < clients.size(); i++) {
                %>
                <tr>
                    <td><%=clients.get(i).getId_client()%>
                    </td>
                    <td><%=clients.get(i).getClient_first_name()%>
                    </td>
                    <td><%=clients.get(i).getClient_second_name()%>
                    </td>
                    <td><%=clients.get(i).getClient_email()%>
                    </td>
                    <%--<td><%=clients.get(i).getClient_pass()%>
                    </td>--%>
                    <td><a href="/employee/admin/updateClient.jsp?id_client=<%=clients.get(i).getId_client()%>" class="btn btn-warning">Edit</a>
                    </td>
                    <td><button id="btnId_client" class="btn btn-danger" value="<%=clients.get(i).getId_client()%>" class="btnClAdmin "><span
                            class="glyphicon glyphicon-remove"></span></button>
                    </td>
                </tr>
                <%
                    }
                %>

            </table>

        </div>
    </div>
</div>
<script>
    function doAjax(id) {
        $.ajax({
            url: "/deleteClient?id_client=" + id
        }).done(function (result) {
            $('.result').html(result);
            setTimeout(function () {
                location.reload();
            },2000);
        });
    };

    $(function () {
        $("button#btnId_client").click(function () {
            var id = $(this).val();
            doAjax(id);
        });
    });


</script>
</body>
</html>
