let menuBtn = document.getElementById("menuIcon"),
    hiddenMenu = document.getElementById("hiddenMenu");

menuBtn.addEventListener("click",()=>{
    hiddenMenu.classList.toggle("toggle");
},false);

