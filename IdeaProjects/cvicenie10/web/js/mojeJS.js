$(document).ready(function(){

    $("button#mojBtn").click(function () {
        servletCall();
    });


    $("button#mojBtn2").click(function () {
        servletCall2();
    });

});

function servletCall() {
    $.post(
        "/formServlet",
        {
            nazov: $('#nazov').val(),
            popis: $('#popis').val(),
            cena: $('#cena').val(),
            pozicana: $('#pozicana').is(':checked')
        },
        function (result) {


        });
}

function servletCall2() {
    $.post(
        "/servletUpdate",
        {
            idcko: $('#idcko').val(),
            nazov: $('#nazov2').val(),
            popis: $('#popis2').val(),
            cena: $('#cena2').val(),
            pozicana: $('#pozicana2').is(':checked')
        },
        function (result) {


        });
}