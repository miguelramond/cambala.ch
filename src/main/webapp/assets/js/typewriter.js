
/* Función para hacer efecto de maquina de escribir en página inicio */
var i = 0;
var j = 0;
var k = 0;
// The text
var txt = "fortuitos.";
// Debug feature
console.log(txt);
// The speed/duration of the effect in milliseconds
var speed = 125;

var space = "|";

window.onload = function typeWriter() {
  if (i < txt.length) {
    // Input character by character through string array
    document.getElementById("demo").innerHTML += txt.charAt(i);
    i++;
    setTimeout(typeWriter, speed);
    }

    // Doesn't work, fix later ()
    if (j < 5 && i == txt.length) {
        if (k == 0) {
        document.getElementById("demo").innerHTML += space;
        setTimeout(typeWriter, speed);
        k++;
        }
        if (k == 1) {
        document.getElementById("demo").innerHTML = txt;
        setTimeout(typeWriter, speed);
        k--;
        }
        j++;
    }
    /* OLDER VERSIONif (j < 5 && i == txt.length) {
        if (k == true) {
        document.getElementById("demo").innerHTML += space;
        setTimeout(typeWriter, speed);
        k == false;
        }
        if (k == false) {
        document.getElementById("demo").innerHTML = txt;
        k == true;
        }
        j++;
    } */
}

/* Funcion utilizada como prueba que cambia color de fondo de vista */
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


  