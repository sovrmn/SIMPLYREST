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

import {autoSubmit} from "../components/autosubmitform";

import {chartTopVentes, comparisonCart, kpis} from "../plugins/charts";

import {displayOrderAndItems} from "../plugins/shoppingCartDisplay";

import {initSelect2} from "../plugins/init_select2";

import {minusPlusButton} from "../plugins/minusplusbutton";

import {minusPlusButtonOrder} from "../plugins/minusplusbuttonorder";

import {move} from "../plugins/move";

import {orderCollap} from "../plugins/collapsible";

import {toggleSide} from "../plugins/toggleSideBar";

import {toggleShoppingCart} from "../plugins/toggleShoppingCart";

import {updateSupplierUnitPrice} from "../plugins/update_supplier_unit_price";

import {totalshopcart} from "../plugins/compute_total_shopcart.js";

import {totalorder} from "../plugins/compute_total_order.js";


document.addEventListener('turbolinks:load', () => {

  orderCollap();
  toggleSide();
  toggleShoppingCart();
  displayOrderAndItems();
  minusPlusButton();
  minusPlusButtonOrder();
  move();
  if (document.getElementById("bar-chart-grouped")) {
    comparisonCart();
  };
  if (document.getElementById("doughnut-chart")) {
    chartTopVentes();
  };
  if (document.getElementById("kpis")) {
    kpis();
  }
  autoSubmit();
  displayOrderAndItems();
  initSelect2();
  updateSupplierUnitPrice();
  if (document.getElementById("total-shop-cart")) {
    totalshopcart();
  }
  totalorder();
});
