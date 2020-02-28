const displayOrderAndItems = () => {

<<<<<<< HEAD
  $('.tab:first').addClass('checked');
  const radios = document.querySelectorAll('.radio');
=======
$('.tab:first').addClass('checked');
const radios = document.querySelectorAll('.radio');
>>>>>>> 2f15fb2f267347927872b4f6db964b64185af118

  radios.forEach((radio) => {
    radio.addEventListener("click",(event) => {
      document.querySelector('.checked').classList.remove('checked');
      radio.classList.add('checked');
      const display = document.getElementById(radio.dataset.order);
      const order_items = document.querySelectorAll('.order-items')
      order_items.forEach((order_item) => {
        order_item.classList.add('d-none');
      });
      display.classList.remove('d-none');
    });
  });
};

export {displayOrderAndItems};
