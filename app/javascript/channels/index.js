// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.



const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)

// définir la première tab avec la class checked

$(document).ready(function () {
    $('#sidebarCollapse').on('click', function () {
        $('#sidebar').toggleClass('active');
        $(this).toggleClass('active');
    });
});


