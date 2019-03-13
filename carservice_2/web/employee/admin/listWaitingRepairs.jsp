<%@ page import="com.carservice.controller.dao.RepairImplement" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.carservice.model.Repair" %><%--
  User: Kanderka
  *****************************
  SHOW ONLY FOR LOGIN ADMIN
  *****************************
--%>
<%@include file="../../includes/header.jsp" %>
<title>Car repairs -Admin</title>
</head>
<body>
<%@include file="../includes/navbarAdmin.jsp" %>

<%
    if (session.getAttribute("empl_admin") == null) {
        response.sendRedirect("loginEmplAdmin.jsp");
        return;
    }
%>

<%
    RepairImplement repairDao = new RepairImplement();
    ArrayList<Repair> repairs = new ArrayList<>();
    repairs = repairDao.getAllWaitingRepairs();
%>

<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <a href="/employee/admin/logOutAdmin.jsp">Odhlas
                sa:</a> <%out.println(" " + (String) session.getAttribute("empl_admin"));%>
        </div>
    </div>
    <div class="row">
        <h1>All Waiting repairs</h1>
        <div class="col-lg-12">
            <table class=" table table-bordered">
                <thead>
                <tr>
                    <td>id_repair</td>
                    <td>client_email</td>
                    <%--<td>id_client</td>--%>
                    <td>car_brand</td>
                    <td>car_model</td>
                    <td>motor_vehicle_licence_plate</td>
                    <td>vin_number</td>
                    <td>what_repair</td>

                    <td>Edit</td>
                    <td>Delete</td>
                </tr>
                </thead>
                <%
                    for (int i = 0; i < repairs.size(); i++) {
                %>
                <tr>
                    <td><%=repairs.get(i).getId_repair()%>
                    </td>
                    <td><%=repairs.get(i).getClient_email()%>
                    </td>

                    <td><%=repairs.get(i).getCar_brand()%>
                    </td>
                    <td><%=repairs.get(i).getCar_model()%>
                    </td>
                    <td><%=repairs.get(i).getMotor_vehicle_licence_plate()%>
                    </td>
                    <td><%=repairs.get(i).getVin_number()%>
                    </td>
                    <td><%=repairs.get(i).getWhat_repair()%>
                    </td>

                    <td class="center-block"><a href="/employee/admin/updateRepairAdmin.jsp?id_repair=<%=repairs.get(
i).getId_repair()%>" class="btn btn-warning">Edit</a>

                    </td>
                    <td>
                        <%--<button id="btnId_repair" value="<%=repairs.get(i).getId_repair()%>"
                                class="btnClAdmin "><span
                                class="btn glyphicon glyphicon-remove"></span></button>--%>
                        <button  id="btnId_repair" class="btn btn-danger" value="<%=repairs.get(i).getId_repair()%>">
                            <span class="glyphicon glyphicon-remove"></span></button>
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
            url: "/deleteRepair?id_repair=" + id
        }).done(function (result) {
            $('.result').html(result);
            location.reload();
        });
    };

    $(function () {
        $("button#btnId_repair").click(function () {
            var id = $(this).val();
            doAjax(id);
        });
    });


</script>
</body>
</html>
