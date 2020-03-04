
const minusPlusButton = () => {
  const minusButtons = document.querySelectorAll('#minusbutton');
  minusButtons.forEach((minusButton) => {

    minusButton.addEventListener('click', (event) => {
      const input = minusButton.nextElementSibling;
      console.log(input);
      const prixunitaireht = document.getElementById(`prixunitaireht-${input.dataset.itemid}`);
      const prixtotalht = document.getElementById(`totalht-${input.dataset.itemid}`);
      const valeurunitaireht = parseFloat(prixunitaireht.innerHTML);
      let currentValue = parseFloat(input.value);
      if (currentValue > 0) {
        currentValue = currentValue - 1;
      } else {
        currentValue = 0;
      }
      input.value = currentValue;
      const valeurtotalht = valeurunitaireht * currentValue;
      prixtotalht.innerHTML =valeurtotalht.toFixed(1);
      const itemquantity = document.getElementById(`item-quantity-${input.dataset.itemid}`);
      itemquantity.innerHTML = currentValue;
      const hiddenquantity = document.getElementById(`hidden-quantity-${input.dataset.itemid}`);
      hiddenquantity.value = currentValue;

    });
  });

  const plusButtons = document.querySelectorAll('#plusbutton');
  plusButtons.forEach((plusButton) => {
    // console.log('coucou');
    plusButton.addEventListener('click', (event) => {
      // console.log('salut');
      const input = plusButton.previousElementSibling;
      // console.log(input);
      const prixunitaireht = document.getElementById(`prixunitaireht-${input.dataset.itemid}`);
      const prixtotalht = document.getElementById(`totalht-${input.dataset.itemid}`);
      const valeurunitaireht = parseFloat(prixunitaireht.innerHTML);
      let currentValue = parseFloat(input.value);
      currentValue = currentValue + 1;
      input.value = currentValue;
      // console.log (parseFloat(prixunitaireht.innerHTML) * currentValue);
      const valeurtotalht = valeurunitaireht * currentValue;
      prixtotalht.innerHTML = valeurtotalht.toFixed(1);
      const itemquantity = document.getElementById(`item-quantity-${input.dataset.itemid}`);
      itemquantity.innerHTML = currentValue ;
      const hiddenquantity = document.getElementById(`hidden-quantity-${input.dataset.itemid}`);
      hiddenquantity.value = currentValue;
    });
  });
}
export {minusPlusButton};
