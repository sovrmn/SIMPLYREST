
const minusPlusButton = () => {

  const minus = document.getElementById('minusbutton');
  minus.addEventListener('click', (event) => {
    event.preventDefault();
    const input = document.getElementById('quantityinput');
    const currentValue = parseInt(input.val());
    if currentValue > 0
      const newValue = currentValue - 1;
    else
     newValue = 0;
  });

  const plus = document.getElementById("plusbutton");
  plus.addEventListener('click', (event) => {
    event.preventDefault();
    const input = document.getElementById('quantityinput');
    const currentValue = parseInt(input.val());
    const newValue = currentValue + 1;
  });

}


export {minusPlusButton};


