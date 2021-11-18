function colorize() {
    // Create variable with hexadecimal characters for randomizing
    var letters = "0123456789ABCDEF".split('');

    // Initialize color variable
    var color = "#";

    // For loop generating hexadecimal code out of randomized results from letters array
    for (var i = 0; i < 6; i++ ) {
        color += letters[Math.floor(Math.random() * 16)];
    }

    // Add generated color to page
    document.body.style.backgroundColor = color;
}

// Alphabetical validation method
jQuery.validator.addMethod("lettersonly", function(value, element) {
    return this.optional(element) || /^[a-z," "]+$/i.test(value);
  }, "Letters only please");   

// jQuery validate implementation
$().ready(function() {
    $("#signupForm").validate({
        // Validation rules for specified fields
        rules: {
            articulo: {
                required: true,
                lettersonly: true,
            },
            marca: "required",
            stock: {
                required: true,
                // Require only digits to be input in stock field
                digits: true,
            },
        },
        // Error messages if failed validation
        messages: {
            articulo: {
                required: "Favor ingresar nombre del artículo",
                lettersonly: "Favor ingresar sólo letras",
            },
            marca: {
                required: "Favor ingresar nombre del artículo",
                lettersonly: "Favor ingresar sólo letras",
            },
            stock: {
                required: "Favor ingresar cantidad de stock disponible",
                digits: "Favor ingresar un número válido",
            }, 
        },
    })
})