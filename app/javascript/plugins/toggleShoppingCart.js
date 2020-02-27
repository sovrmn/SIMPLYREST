const toggleShoppingCart = () => {

  $(document).ready(function () {
      $('.toggle-cart').on('click', function () {
          $('.shopping').toggleClass('active');
          $(this).toggleClass('active');
          return false
      });
  });
}

export {toggleShoppingCart};
