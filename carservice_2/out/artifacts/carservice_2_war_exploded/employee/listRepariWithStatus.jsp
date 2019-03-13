<%@ page import="com.carservice.controller.dao.RepairImplement" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.carservice.model.Repair" %>
<%@ page import="com.carservice.model.Employee" %>
<%@ page import="com.carservice.controller.dao.EmployeeImplement" %><%--
  User: Kanderka
  *****************************
  SHOW ONLY FOR LOGIN ADMIN
  *****************************
--%>
<%@include file="includes/header.jsp"%>
<title>Car repairs</title>

</head>
<body>
<%@include file="includes/navbar.jsp"%>

<%
    if (session.getAttribute("empl_email") == null) {
        response.sendRedirect("loginEmpl.jsp");
        return;
    } else {
        String sessionVar = String.valueOf(session.getAttribute("empl_email"));
    }

%>
</div>


<%
    RepairImplement repairDao = new RepairImplement();
    ArrayList<Repair> repairs = new ArrayList<>();
    /*repairs = repairDao.getAllDoneRepairs()*/;
    int status_repair = Integer.parseInt(request.getParameter("status_repair"));
    repairs = repairDao.getAllRepairsWithStatusCode(status_repair);

%>

<div class="container">

    <div class="row">
        <%
            if (status_repair == 1) {
                out.println("<h1>All Waiting repairs</h1>");
            } else if (status_repair == 2) {
                out.println("<h1>Working on Cars</h1>");
            } else if (status_repair == 3) {
                out.println("<h1>All Done Repairs</h1>");
            } else {
                out.println("<h1>All Wrong Repairs</h1>");
            }
        %>


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
<%
    Employee employee = new Employee();
    EmployeeImplement emplDao = new EmployeeImplement();
    if (emplDao.chceckIsAdminEmail("sessionVar")) {%>
                    <td class="center-block"><a href="/employee/admin/updateRepairAdmin.jsp?id_repair=<%=repairs.get(
i).getId_repair()%>" class="btn btn-warning">Edit</a>

                    </td>
                    <%
                        } else {%>
                    <td class="center-block"><a href="/employee/manageRepair.jsp?id_repair=<%=repairs.get(
i).getId_repair()%>" class="btn btn-warning">Edit</a>
                        <%}


%>
                    <%--<td class="center-block"><a href="/employee/admin/updateRepairAdmin.jsp?id_repair=<%=repairs.get(
i).getId_repair()%>" class="btn btn-warning">Edit</a>--%>

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
