/**
 * Created by miro on 11.04.2018.
 */

$( document ).ready(function(){

    $("#brand").on('change', function(){

        $.ajax({
            url: '/loadType',
            type: 'post',
            data: {
                brand : $("#brand").val()
            },
            success: function(data){
                $("#type").html(data);
            },
            error: function (xhr, ajaxOptions, thrownError) {
                var errorMsg = 'Ajax request failed: ' + xhr.responseText;
                $('#content').html(errorMsg);
            }
        });
    });


});