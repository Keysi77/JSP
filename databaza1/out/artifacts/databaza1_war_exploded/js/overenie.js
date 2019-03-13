/**
 * Created by miro on 07.03.2018.
 */

$( document ).ready(function() {

    $("#produkt").validate({

        rules: {
            name: {
                required: true,
                rangelength: [5, 40]
            },
            amount: {
                required: true,
                range: [0, 200]
            },
            price: {
                required: true,
                rangelength: [1, 15]
            }
        }
    });
});
