import $ from 'jquery';

console.log('coucou2');

const updateSupplierUnitPrice = () => {
  $('.select2').on('select2:select', function (e) {
    console.log();
    console.log(e.target.value);
    console.log(document.getElementById(e.target.value).dataset.prix);
    document.getElementById(e.target.dataset.prixht).innerText = document.getElementById(e.target.value).dataset.prix + ' €'
  });
  // const supplierSelectors = document.querySelectorAll('.select2-selection select2-selection--single');

  //   supplierSelectors.forEach((supplierSelector) => {

  //   supplierSelector.addEventListener('change', (event) => {
  //     console.log ("coucou");
  //   });
  // });
};



export {updateSupplierUnitPrice}


// const minusPlusButton = () => {
//   const minusButtons = document.querySelectorAll('#minusbutton');
//   minusButtons.forEach((minusButton) => {

//     minusButton.addEventListener('click', (event) => {
//       const input = minusButton.nextElementSibling;
//       console.log(input);
//       const prixunitaireht = document.getElementById(`prixunitaireht-${input.dataset.itemid}`);
//       const prixtotalht = document.getElementById(`totalht-${input.dataset.itemid}`);
//       const valeurunitaireht = parseFloat(prixunitaireht.innerHTML);
//       let currentValue = parseFloat(input.value);
//       if (currentValue > 0) {
//         currentValue = currentValue - 1;
//       } else {
//         currentValue = 0;
//       }
//       input.value = currentValue;
//       const valeurtotalht = valeurunitaireht * currentValue;
//       prixtotalht.innerHTML =valeurtotalht.toFixed(1);
//     });
//   });
