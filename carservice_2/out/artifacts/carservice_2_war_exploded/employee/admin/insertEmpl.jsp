<%--
  Created by IntelliJ IDEA.
  User: Kanderka
  Date: 20.04.2017
  Time: 21:21
  To change this template use File | Settings | File Templates.
--%>
<%@include file="../includes/header.jsp" %>
<title>Inser new employee</title>

</head>
<body>
<%@include file="../includes/navbarAdmin.jsp" %>

<%
    if (session.getAttribute("empl_admin") == null) {
        response.sendRedirect("loginEmplAdmin.jsp");
        return;
    }
%>
<div class="container">
    <div class="row">
        <div class="col-lg-12">
            <a href="/employee/admin/logOutAdmin.jsp">Odhlas
                sa:</a> <%out.println(" " + (String) session.getAttribute("empl_admin"));%>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-lg-7">

            <h1>Insert employee</h1>
            <%-- <form action="/ServletInsertEmpl" method="post">--%>
            <form id="insertFormEmplValid">


                <div class="form-group">
                    <label for="empl_nic_name">empl_nic_name</label>
                    <input type="text" class="form-control" id="empl_nic_name" name="empl_nic_name">
                </div>
                <div class="form-group">
                    <label>empl_position</label>
                    <input type="text" class="form-control" id="empl_position" name="empl_position">
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="password" class="form-control" id="empl_pass" name="empl_pass">
                </div>
                <div class="form-group">
                    <label>Confirm Password</label>
                    <input type="password" class="form-control" id="empl_pass_confirm" name="empl_pass_confirm">
                </div>
                <div class="form-group">
                    <label>empl_email</label>
                    <input type="email" class="form-control" id="empl_email" name="empl_email">
                </div>

                <div class="form-group">
                    <label>empl_tel_mun</label>
                    <input type="text" class="form-control" id="empl_tel_mun" name="empl_tel_mun">
                </div>
                <div class="form-group">
                    <label>empl_personal_id</label>
                    <input type="text" class="form-control" id="empl_personal_id" name="empl_personal_id">
                </div>
                <div class="radio">
                    Registrovat aj ako administratora?
                    <label><input type="radio" class="is_admin" name="is_admin" value="true">Ano</label>
                    <label><input type="radio" class="is_admin" name="is_admin" value="false"
                                  checked="checked">Nie</label>
                </div>
                <%-- <div class="checkbox">
                     <label><input type="checkbox" id="is_admin" name="is_admin" >Registrovat ako admina</label>
                 </div>--%>
                <%--<div class="form-group">--%>
                <%--<label  >is_admin</label>--%>
                <%--<input type="text" class="form-control" id="is_admin" name="is_admin">--%>
                <%--</div>--%>


                <button id="btnInsertEmpl" class="btn btn-success" type="submit">Registration of Employee</button>
                <%--</form>--%>
            </form>
        </div>

        <div class="col-lg-5">
            <div class="result"></div>
        </div>
    </div>
</div>

<script>
    /* $(document).ready(function () {
     $('#BtnInsertEmpl').click(function () {

     $.ajax({
     url : '/ServletEmpl',
     data :{
     empl_nic_name : $('#empl_nic_name').val(),
     empl_position : $('#empl_position').val(),
     empl_pass : $('#empl_pass').val(),
     empl_email : $('#empl_email').val(),
     empl_tel_mun : $('#empl_tel_mun').val(),
     empl_personal_id : $('#empl_personal_id').val(),
     is_admin : $('#is_admin').val()
     },
     success : function (responseText) {
     $('test').text(responseText);
     }
     });
     });
     });*/


   /* $(document).ready(function () {
        $("#insertFormEmplValid").validate({
            rules: {
                empl_nic_name : {
                    required: true,
                    minlength : 5
                },
                empl_position :  {
                    required: true,
                    minlength : 5
                },
                empl_pass :  {
                    required: true,
                    minlength : 5
                },
                empl_pass_confirm: {
                    required:true,
                    equalTo: "#empl_pass"
                },
                empl_email :  {
                    required: true,
                    email : true
                },
                empl_tel_mun :  {
                    required: true,
                    minlength : 5
                },
                empl_personal_id :  {
                    required: true,
                    minlength : 5
                }
            },
            messages: {
                empl_nic_name: "please specify ur name",
                empl_position:"Please enter your correct age.",
                empl_pass:"Please enter your correct age.",
                empl_pass_confirm:"Please enter your correct age.",
                empl_email:"Please enter your correct age.",
                empl_position:"Please enter your correct age.",
                empl_tel_mun:"Please enter your correct age.",
                empl_personal_id:"Please enter your correct age."
            }

        });
    });


    $(document).ready(function () {
        $('#btnInsertEmpl').click(function () {
            $.post(
                "/ServletInsertEmpl",
                {
                    empl_nic_name: $('#empl_nic_name').val(),
                    empl_position: $('#empl_position').val(),
                    empl_pass: $('#empl_pass').val(),
                    empl_email: $('#empl_email').val(),
                    empl_tel_mun: $('#empl_tel_mun').val(),
                    empl_personal_id: $('#empl_personal_id').val(),
                    is_admin: $('.is_admin:checked').val()
                },
                function (result) {
                    $('.result').html(result);
                    /!*location.reload();*!/
                }
            );

        });
    });*/

</script>
<%--
<script>
    $(document).ready(function () {
        $("#insertFormEmplValid").validate({
            rules: {
                empl_nic_name : {
                    required: true,
                    minlength : 5
                },
                empl_position :  {
                    required: true,
                    minlength : 5
                },
                empl_pass :  {
                    required: true,
                    minlength : 5
                },
                empl_email :  {
                    required: true,
                    email : true
                },
                empl_position :  {
                    required: true,
                    minlength : 5
                }
            },
                messages: {
                    empl_nic_name: "please specify ur name",
                    empl_position:"Please enter your correct age.",
                    empl_pass:"Please enter your correct age.",
                    empl_email:"Please enter your correct age.",
                    empl_position:"Please enter your correct age."
                }


        });
    });
</script>--%>

<%--<%@include file="../includes/bottomScripts.jsp" %>--%>

<script src="/sources/js/jquery.validate.min.js"></script>
<script src="/sources/js/insertFormEmplValid.js"></script>
</body>
</html>
