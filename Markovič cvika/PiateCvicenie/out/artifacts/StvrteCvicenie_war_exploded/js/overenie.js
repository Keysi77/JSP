/**
 * Created by miro on 07.03.2018.
 */

$( document ).ready(function() {

    $("#form1").validate({

        rules: {
            bankName: {
                required: true,
                rangelength: [5, 20]
            },
            iban: {
                required: true,
                rangelength: [24, 24]
            },
            amount: {
                range: [1, 1000]
            }
        }
    });
});
