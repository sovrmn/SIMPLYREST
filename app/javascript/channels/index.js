// Load all the channels within this directory and all subdirectories.
// Channel files must be named *_channel.js.

// import { initSelect2 } from './plugins/init_select2';

const channels = require.context('.', true, /_channel\.js$/)
channels.keys().forEach(channels)





// toggle du shopping cart
$(document).ready(function () {
    $('.toggle-cart').on('click', function () {
        $('.shopping').toggleClass('active');
        $(this).toggleClass('active');
        return false
    });
});

// initSelect2();
