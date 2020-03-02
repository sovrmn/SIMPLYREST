const toggleShoppingCart = () => {

  $(document).ready(function () {
      $('.toggle-cart').on('click', function () {
          $('.shopping').toggleClass('display');
          return false
      });
  });
}

export {toggleShoppingCart};
