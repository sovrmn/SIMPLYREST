const cartEmpty = () => {





    if (inCartItemsNum > 0) {
        $('#cart-dropdown .hidden').removeClass('hidden');
        $('#empty-cart-msg').hide();
    }

    else {
        $('#cart-dropdown .go-to-cart').addClass('hidden');
        $('#empty-cart-msg').show();
    }
}


const minusPlusButton = () => {

  const minusButtons = document.querySelectorAll('#minusbutton');

  minusButtons.forEach((minusButton) => {
    // console.log('coucou');
    minusButton.addEventListener('click', (event) => {
      // console.log('salut');
      const input = minusButton.nextElementSibling;
      // console.log(input);
      let currentValue = parseFloat(input.value);
      if (currentValue > 0) {
        currentValue = currentValue - 1;
      } else {
        currentValue = 0;
      }
      input.value = currentValue;
    });

  });
