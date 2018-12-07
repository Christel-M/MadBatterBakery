let prod = document.querySelectorAll('#showdes');
let closeit = document.querySelectorAll(".close_it");
// console.log(closeit);

for(let x = 0; x < closeit.length; x++){
  closeit[x].addEventListener("click", displayProduct);

  function displayProduct() {
    var closed = closeit[x].parentNode;
    closed.classList.add("hidden")
  }
}

for(let i = 0; i < prod.length; i++){
  prod[i].addEventListener("click", displayProduct);

  function displayProduct() {
    var display = prod[i].nextElementSibling;
    display.classList.remove("hidden")
  }

}
