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
  const plusButtons = document.querySelectorAll('#plusbutton');

  plusButtons.forEach((plusButton) => {
    // console.log('coucou');
    plusButton.addEventListener('click', (event) => {
      // console.log('salut');
      const input = plusButton.previousElementSibling;
      // console.log(input);
      let currentValue = parseFloat(input.value);
      currentValue = currentValue + 1;
      input.value = currentValue;
    });

  });

}

export {minusPlusButton};
