
const minusPlusButton = () => {

  const minus = document.getElementById('minusbutton');
  if (minus) {
    minus.addEventListener('click', (event) => {
      const input = document.getElementById('quantityinput');
      let currentValue = parseInt(input.value);
      if (currentValue > 0) {
        currentValue = currentValue - 1;
      } else {
        currentValue = 0;
      }
      input.value = currentValue;

    });
  };


  const plus = document.getElementById("plusbutton");
  if (plus) {
    plus.addEventListener('click', (event) => {
      const input = document.getElementById('quantityinput');
      let currentValue = parseInt(input.value);
      currentValue = currentValue + 1;
        input.value = currentValue;
    });
  }
}


export {minusPlusButton};


