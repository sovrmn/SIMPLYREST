const totalorder = () => {
  const totalorders = document.getElementById(`total-order-validate`);
  const subtotalorders = Array.from(document.querySelectorAll(".subtotalorder"));
  const textToFloat = (order) => {
    return parseFloat(order.innerText.split("€")[0]);
  }
  const subtotalordersFloat = subtotalorders.map(order => textToFloat(order));
  if(subtotalordersFloat.length > 0) {
    totalorders.innerHTML = subtotalordersFloat.reduce((a , x) => a + x).toFixed(2);
  };
  // const totalorderpage = document.getElementById(`card-product-total<%=order.id%>`)
};


export {totalorder};
