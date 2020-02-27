const move =() =>{

    const elements = document.querySelectorAll(".progressBar");
    elements.forEach((element)=>{
      let width = 0;
      const progressRed = element.querySelector(".progressRed");
      const progressOrange = element.querySelector(".progressOrange");
      const progressGreen = element.querySelector(".progressGreen");
      const stocklevel = parseInt(element.nextElementSibling.querySelector("#stocklevel").innerText);
      let timer = setInterval(function() {
        if (width >= stocklevel) {
          clearInterval(timer);
          console.log('stop');
        }
        else if  (width < 30) {
          width += 1;
          progressRed.style.width = `${width}px`;
        }
        else if (width <60) {
          width += 1;
          progressRed.style.width = '0px';
          progressOrange.style.width = `${width}px`;
        }
        else {
          width += 1;
          progressRed.style.width = `0px`;
          progressOrange.style.width = `0px`;
          progressGreen.style.width = `${width}px`;
        }

       }, 25);
    })


    // const element= document.querySelector(".progressBar");
    // const progressRed = element.querySelector(".progressRed");
    // const progressOrange = element.querySelector(".progressOrange");
    // const progressGreen = element.querySelector(".progressGreen");
    // const stocklevel = parseInt(element.querySelector("#stocklevel").innerText);
    // let timer = setInterval(function() {
    //   if (width >= stocklevel) {
    //     clearInterval(timer);
    //     console.log('stop');
    //   }
    //   else if  (width < 30) {
    //     width += 1;
    //     progressRed.style.width = `${width}px`;
    //   }
    //   else if (width <60) {
    //     width += 1;
    //     progressOrange.style.width = `${width-30}px`;
    //   }
    //   else {
    //     width += 1;
    //     progressGreen.style.width = `${width-60}px`;
    //   }

    //  }, 100);

}

export {move};

