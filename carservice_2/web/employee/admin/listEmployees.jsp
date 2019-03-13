<%@taglib uri='http://java.sun.com/jsp/jstl/core' prefix="c" %>
<%@ page import="com.carservice.controller.dao.EmployeeImplement" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="com.carservice.model.Employee" %>
<%@ page import="java.util.List" %>


<%@include file="../includes/header.jsp" %>
<title> List of Employee</title>

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
    EmployeeImplement emplDb = new EmployeeImplement();
    ArrayList<Employee> employees = new ArrayList<>();
    Employee employee = new Employee();

    List<Employee> listEmpl = emplDb.getAllEmployees();

    employees = emplDb.getAllEmployees();
    //request.setAttribute("listEmpl", listEmpl);
%>
<%--_______________________________--%>
<%--<table class="table">
    <tr>
        <td>ID Zamestnanca</td>
        <td>Nic name</td>
        <td>Pozicia</td>
        <td>Heslo</td>
        <td>Email</td>
        <td>Tel. Cislo</td>
        <td>Rodne cislo</td>
        <td>Admin</td>
        &lt;%&ndash;<td>Edit</td>&ndash;%&gt;
        <td>Edit</td>
        <td>Delete</td>
        <td>Delete Ajax</td>

    </tr>
    <% %>
    <c:forEach items="${listEmpl}" var="u">

        <tr>
            <td id="id_empl">${u.id_empl} </td>
            <td>${u.empl_nic_name} </td>
            <td>${u.empl_position} </td>
            <td>${u.empl_pass} </td>
            <td>${u.empl_email} </td>
            <td>${u.empl_tel_mun} </td>
            <td>${u.empl_personal_id} </td>
            <td id="isAdmin">${u.is_admin}
           &lt;%&ndash; <c:if test="${u.is_admin == true}"><p class="hi">hidden</p></c:if>&ndash;%&gt;
            </td>

                &lt;%&ndash;<td><a href="/editEmplForm?id_empl=<c:out value="${u.id_empl}"/>">Edit</a></td>&ndash;%&gt;
            <td><a href="/employee/admin/updateEmpl.jsp?id_empl=<c:out value="${u.id_empl}"/>">Edit jsp</a></td>

            <td><a href="/deleteEmpl?id_empl=<c:out value="${u.id_empl}"/>" id="deleteEmpl">Delete new</a></td>
                &lt;%&ndash;<td><button id="deleteEmpl" data-id="<c:out value="${u.id_empl}"/>" >Delete new</button></td>&ndash;%&gt;

                &lt;%&ndash;<td><a href="<c:out value="${u.id_empl}"/>" id="id_empl">Delete new</a></td>&ndash;%&gt;
            <td>
                <button id="btnId_empl" value="<c:out value="${u.id_empl}"/>"><span
                        class="glyphicon glyphicon-remove"></span></button>
            </td>

        </tr>
    </c:forEach>

</table>--%>
<%--_______________________________--%>

<script>
    /*_______________________________*/
    /*function doAjax(id) {
     $.ajax({
     url: "/deleteEmpl?id_empl=" + id
     }).done(function () {
     /!*$('.result').html(data);*!/
     location.reload();
     });
     }
     $(function () {
     $("button#btnId_empl").click(function () {
     var id = $(this).val();
     doAjax(id);
     });
     });*/
    /*_______________________________*/


    /*   $(document).ready(function () {
     $('button#btnId_empl').click(function () {


     $.post(
     "/deleteEmpl?id_empl=",
     {
     id : $(this).val()
     },
     function(data, status) {
     alert("Záznam bol vymazaný !");
     location.reload();
     });

     });
     });*/
</script>


<%--<%
  employee.setEmpl_nic_name("AddNew");
  employee.setEmpl_email("nvy@casd.sk");
  employee.setEmpl_position("pozicia add");
  employee.setEmpl_tel_mun("sadsad");
  employee.setEmpl_pass("pass aad");
  employee.setEmpl_personal_id("12312");
  employee.setIs_admin(false);
  emplDb.addEmployee(employee);



%>--%>

<table class="table">
    <tr>
        <td>ID Zamestnanca</td>
        <td>Nic name</td>
        <td>Pozicia</td>
        <%--<td>Heslo</td>--%>
        <td>Email</td>
        <td>Tel. Cislo</td>
        <td>Rodne cislo</td>
        <td>Admin</td>
        <td>Edit</td>
        <td>Delete</td>

    </tr>


    <%
        for (int i = 0; i < employees.size(); i++) {%>
    <tr>
        <td><%=employees.get(i).getId_empl()%>
        </td>
        <td><%=employees.get(i).getEmpl_nic_name()%>
        </td>
        <td><%=employees.get(i).getEmpl_position()%>
        </td>
        <%--<td><%=employees.get(i).getEmpl_pass()%>
        </td>--%>
        <td><%=employees.get(i).getEmpl_email()%>
        </td>
        <td><%=employees.get(i).getEmpl_tel_mun()%>
        </td>
        <td><%=employees.get(i).getEmpl_personal_id()%>
        </td>
        <td class="isAdmin">
            <%
                if (employees.get(i).isIs_admin() == true) {
                    out.println("Admin");
                } else {
                    out.println("");
                }
            %>

        </td>
        <td><a href="/employee/admin/updateEmpl.jsp?id_empl=<%=employees.get(i).getId_empl()%>" class="btn btn-warning">Edit</a></td>
        <%-- <td><a href="/updateEmpl.jsp?id_empl=<%=employees.get(i).getId_empl()%>" >Edit jsp</a></td>--%>
        <%-- <td><a href="/deleteEmpl?id_empl=<%=employees.get(i).getId_empl()%>" >Delete</a></td>--%>

        <td>
            <button id="btnId_empl" class="btn btn-danger" value="<%=employees.get(i).getId_empl()%>" class="btnClAdmin "><span
                    class="glyphicon glyphicon-remove"></span></button>
        </td>
    </tr>
    <%
        }
    %>
</table>

<script>
    function doAjax(id) {
        $.ajax({
            url: "/deleteEmpl?id_empl=" + id
        }).done(function (result) {
            $('.result').html(result);
           setTimeout(function () {
               location.reload();
           },2000);
           });
        };

    $(function () {
        $("button#btnId_empl").click(function () {
            var id = $(this).val();
            doAjax(id);
        });
    });


</script>
<script>
    /*    $(document).ready(function () {
     $('tr').each(function () {
     if ($('#td:contains("Admin")', this).length) {

     /!*$("button#btnId_empl").addClass('disabled')*!/
     $('button#btnId_empl').addClass('disabled');
     }
     });

     });*/




    /*    $(document).ready(function () {
     $('tr').each(function () {
     if ($("td.isAdmin:contains('Admin')", this).length) {
     /!*$('button').addClass("disabled");*!/
     $('button.btnClAdmin').css("display", "static");
     } else {
     $('button.btnClAdmin').css("display", "none");
     }
     });

     });*/
</script>


</body>
</html>
