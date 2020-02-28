// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------
import "bootstrap";
import {orderCollap} from "../plugins/collapsible";
document.addEventListener('turbolinks:load', () => {
  orderCollap();
});

import {toggleSide} from "../plugins/toggleSideBar";
document.addEventListener('turbolinks:load', () => {
  toggleSide();
});

import {toggleShoppingCart} from "../plugins/toggleShoppingCart";
document.addEventListener('turbolinks:load', () => {
  toggleShoppingCart();
});

import {displayOrderAndItems} from "../plugins/shoppingCartDisplay";
document.addEventListener('turbolinks:load', () => {
  displayOrderAndItems();
});

import {minusPlusButton} from "../plugins/minusplusbutton";
document.addEventListener('turbolinks:load', () => {
  minusPlusButton();
});

import {move} from "../plugins/move";
move();
