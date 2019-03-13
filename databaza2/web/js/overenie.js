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
            },
            nameEdit: {
                required: true,
                rangelength: [5, 40]
            },
            amountEdit: {
                required: true,
                range: [0, 200]
            },
            priceEdit: {
                required: true,
                rangelength: [1, 15]
            }
        }
    });

    $("#zvierata").validate({

        rules: {
            typ: {
                required: true,
                rangelength: [3, 40]
            },
            vaha: {
                required: true,
                range: [1, 50]
            },
            narodenie: {
                required: true,
                rangelength: [5, 40]
            },
            farba: {
                required: true,
                rangelength: [5, 40]
            },
            popis: {
                required: true,
                rangelength: [5, 40]
            }
        }
    });


});