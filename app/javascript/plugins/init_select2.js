import $ from 'jquery';
import 'select2';
const formatSupplier = (state) => {
  if(state.id) {
    return state.element.dataset.label;
  }
}









const initSelect2 = () => {
 $('.select2').select2({
  templateResult: formatSupplier
 }); // (~ document.querySelectorAll)
};
export { initSelect2 };

