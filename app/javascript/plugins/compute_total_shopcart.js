const totalshopcart = () => {
  const totalcart = document.getElementById(`total-shop-cart`);
  // console.log(totalcart);
  const subtotals = document.querySelectorAll(".sous-total");
  // console.log(subtotals);
  // const soustotalht = document.getElementById(`totalht-${input.dataset.itemid}`);
  // console.log(soustotalht);
  let total = 0;
  subtotals.forEach((subtotal) => {
    total += parseFloat(subtotal.innerHTML);
    // console.log(parseFloat(subtotal.innerHTML.replace("total :")));
  });
  totalcart.innerHTML = total.toFixed(2);
}


export {totalshopcart};
