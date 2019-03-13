<%--
  Created by IntelliJ IDEA.
  User: student
  Date: 08.03.2018
  Time: 8:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>$Title$</title>

    <%@include file="header.jsp"%>

</head>
<body>

<%@include file="menu.jsp"%>
<form name="myForm" class="form-inline">
    <label class="sr-only" for="inlineFormInput">Name</label>
    <input type="text" name="username" class="form-control mb-2 mr-sm-2 mb-sm-0" id="inlineFormInput" placeholder="Name">

    <div class="form-group row">
        <label for="inputEmail3" class="col-sm-2 col-form-label">Email</label>
        <div class="col-sm-10">
            <input type="email" name="email" class="form-control" id="inputEmail3" placeholder="Email">
        </div>
    </div>

    <div class="form-group row">
        <label for="inlineFormInput" class="col-sm-2 col-form-label">Telephone</label>
        <div class="col-sm-10">
            <input type="text" name="mobile" class="form-control" placeholder="0900111222">
        </div>
    </div>


    <button type="submit" onclick="return validacia();" class="btn btn-primary">Submit</button>
</form>

<h1>Inputy: </h1>
<p> Meno: <%=%></p>
<p> Email: <%=%></p>
<p> Mobil: <%=%></p>


<div class="first-image">
</div>

<div class="container">
    <div class="col-lg-6 col-md-6 float-left">
        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
    </div>


    <div class="col-lg-6 col-md-6 float-right">
        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
        Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
    </div>

</div>


<script type="text/javascript">
    function validacia(){
        var vName=document.myForm.username.value;
        var vEmail=document.myForm.email.value;
        var vMobile=document.myForm.mobile.value;
        /* var povoleneCisla = ["1", "2", "3", "4", "5", "6","7","8","9", "0"];*/
        /* podmienky pre prazdne stringy*/
        /*Array.isArray([1, 2, 3, 4, 5, 6, 7, 8, 9, 0]);*/
        var arr = new xArray(1, 2, 3, 4, 5, 6, 7, 8, 9, 0);
        if (vName==""){
            alert("Zadajte meno");
            document.myForm.username.focus();
            return false;
        }
        if (vEmail==""){
            alert("Zadajte mail");
            document.myForm.username.focus();
            return false;
        }
        if (vMobile==""){
            alert("Zadajte telefonne cislo");
            document.myForm.username.focus();
            return false;
        }
        /* pre kratke/dlhe retazsce */
        if (vName.length<4 || userName.length>30){
            alert("Mimo rozsah");
            document.myForm.username.focus();
            return false;
        }
        if(!Array.isArray(arr)){
            alert("zly format cisla");
            document.myForm.username.focus();
            return false;
        }

    }

</script>

</body>
</html>
