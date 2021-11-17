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