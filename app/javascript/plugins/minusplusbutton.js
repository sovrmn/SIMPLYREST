
const minusPlusButton = () => {

  const minus = document.getElementById('minusbutton');
  minus.addEventListener('click', (event) => {
    event.preventDefault();
    const input = document.getElementById('quantityinput');
    const currentValue = parseInt(input.val());
    if currentValue >= 0
      const count = currentValue - 1;
      currentValue.val(count);
      currentValue.change();
    else
    return false
  });

  const plus = document.getElementById("plusbutton");
  plus.addEventListener('click', (event) => {
    event.preventDefault();
    const input = document.getElementById('quantityinput');
    const currentValue = parseInt(input.val());
    const count = currentValue + 1;
    currentValue.val(count);
    currentValue.change();
  });

}


export {minusPlusButton};
