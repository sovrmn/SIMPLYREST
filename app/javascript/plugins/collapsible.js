

const orderCollap = () => {

  const collapsible = document.querySelectorAll(".order-details");

  collapsible.forEach((btn)=>{
    btn.addEventListener("click", (event) => {


      document.querySelectorAll(`.${btn.id}`).forEach((content)=>{
        content.classList.toggle("d-none");
      })

    });
  })


}

export {orderCollap};
