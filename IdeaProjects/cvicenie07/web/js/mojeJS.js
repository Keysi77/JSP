$(document).ready(function(){

    $("button#mojBtn").click(function () {
        servletCall();
    });

    $("#btnForm").click(function () {
        servletCall1();
        //alert("sfdkldsjl");
    });
});

function servletCall() {
    $.post(
        "/francis",
        function (result) {

            var html = '';
            html = '<div style="color: red">'
            html += result;
            html += '</div>'
            $("div.div1").html(html);
        });
}

function servletCall1() {
    $.post(
        "/formular",
        {
            meno: $('#name').val(),
            vek: $('#vek').val(),
            email: $('#email').val(),
            phone: $('#phone').val()
        },
        function (result) {

            $("#divForm").html(result);
        });
}