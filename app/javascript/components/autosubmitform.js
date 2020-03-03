
const autoSubmit = () => {
  const forms = document.querySelectorAll(".edit_order_item");

  forms.forEach((form) => {
      // console.log(form.querySelector(".order-item-quantity-input"));
    form.querySelector(".order-item-quantity-input").addEventListener("blur", (event) => {
      // console.log('test');
      form.submit();
    });
  });
}

export {autoSubmit};
