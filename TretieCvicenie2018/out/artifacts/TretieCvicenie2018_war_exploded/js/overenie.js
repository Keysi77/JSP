/**
 * Created by miro on 07.03.2018.
 */

$( document ).ready(function() {

    $("#form1").validate({

        rules: {
            ecv: {
                required: true,
                rangelength: [7, 8]
            },
            druh: {
                required: true
            },
            cena: {
                range: [1, 1000]
            }
        }
    });
});
