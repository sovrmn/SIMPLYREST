import {totalorder} from "../plugins/compute_total_order.js";

const minusPlusButtonOrder = () => {
  const minusButtonsOrder = document.querySelectorAll('#minusbuttonorder');
  minusButtonsOrder.forEach((minusButtonOrder) => {

    minusButtonOrder.addEventListener('click', (event) => {

      const inputorder = minusButtonOrder.nextElementSibling;

      const itemprice = document.getElementById(`itemprice-${inputorder.dataset.orderitemid}`);
      // console.log(itemprice);
      const itempricevalue = parseFloat(itemprice.innerHTML);
      const subtotalorder = document.getElementById(`product-price-${inputorder.dataset.orderitemid}`);
      // console.log(subtotalorder);
      let currentValueOrder = parseFloat(inputorder.value);
      if (currentValueOrder > 0) {
        currentValueOrder = currentValueOrder - 1;
      } else {
        currentValueOrder = 0;
      }
      inputorder.value = currentValueOrder;
      const valeursubtotal = itempricevalue * currentValueOrder;
      subtotalorder.innerHTML =valeursubtotal.toFixed(1);

      $.ajax(`/order_items/${inputorder.dataset.orderitemid}`, {
        method: "PATCH",
        data: {order_item: {quantity: currentValueOrder}}
      })
      totalorder();
    });

  });

  const plusButtonsOrder = document.querySelectorAll('#plusbuttonorder');
  plusButtonsOrder.forEach((plusButtonOrder) => {

    plusButtonOrder.addEventListener('click', (event) => {

      const inputorder = plusButtonOrder.previousElementSibling;
      // console.log(inputorder);
      const itemprice = document.getElementById(`itemprice-${inputorder.dataset.orderitemid}`);
      // console.log(itemprice);
      const itempricevalue = parseFloat(itemprice.innerHTML);
      const subtotalorder = document.getElementById(`product-price-${inputorder.dataset.orderitemid}`);
      // console.log(subtotalorder);
      let currentValueOrder = parseFloat(inputorder.value);
      if (currentValueOrder > 0) {
        currentValueOrder = currentValueOrder + 1;
      } else {
        currentValueOrder = 0;
      }
      inputorder.value = currentValueOrder;
      const valeursubtotal = itempricevalue * currentValueOrder;
      subtotalorder.innerHTML =valeursubtotal.toFixed(1);
      $.ajax(`/order_items/${inputorder.dataset.orderitemid}`, {
        method: "PATCH",
        data: {order_item: {quantity: currentValueOrder}}
      })
      totalorder();
    });

  });

}

export {minusPlusButtonOrder};
