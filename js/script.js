let menuBtn = document.getElementById("menuIcon"),
    hiddenMenu = document.getElementById("hiddenMenu");

menuBtn.addEventListener("click",()=>{
    hiddenMenu.classList.toggle("toggle");
    document.body.classList.toggle("scrollOff");
    document.documentElement.classList.toggle("scrollOff");
},false);



//toggle Buttons

let accessibility = document.getElementById("accessibility"),
    productPlans = document.getElementById("productPlans"),
    installation = document.getElementById("installation");

let accessibilityBtn = document.getElementById("accessibilityBtn"),
    productPlansBtn = document.getElementById("productPlansBtn"),
    installationBtn = document.getElementById("installationBtn");


accessibilityBtn.addEventListener("click",()=>{
    accessibility.classList.toggle("visibleItem");
},false);
productPlansBtn.addEventListener("click",()=>{
    productPlans.classList.toggle("visibleItem");
},false);
installationBtn.addEventListener("click",()=>{
    installation.classList.toggle("visibleItem");
},false);