

const orderCollap = () => {
console.log("test")
  const collapsible = document.querySelectorAll(".order-details");

  collapsible.forEach((btn)=>{
    btn.addEventListener("click", (event) => {
      console.log(btn.id)

      document.querySelectorAll(`.${btn.id}`).forEach((content)=>{
        content.classList.toggle("d-none");
      })

    });
  })


}

export {orderCollap};
