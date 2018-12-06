var btn = document.getElementById("catalog-btn");
btn.addEventListener("click", displayModal);

function displayModal() {
  var modal = document.querySelector(".catalog-modal");
  modal.classList.remove("hidden")
}

var close = document.querySelector(".close");
close.addEventListener("click", closeWindow);

function closeWindow() {
  var modal = document.querySelector(".catalog-modal");
  modal.classList.toggle("hidden");
}

var submitBtn = document.getElementById("submitBtn");
submitBtn.addEventListener("click", showMessage);

function showMessage(){
  var alertbox = document.querySelector(".alert-box");
  alertbox.classList.remove("hidden")
  var modal2 = document.querySelector(".catalog-modal");
  modal2.classList.add("hidden");
}

var closebtn = document.querySelector(".closebtn");
closebtn.addEventListener("click", closeWindow2);

function closeWindow2() {
  var modal = document.querySelector(".alert-box");
  modal.classList.add("hidden");
}

var button = document.getElementById("showdes");
button.addEventListener("click", showDescription);

function showDescription(){
  var description = document.querySelector(".product-description");
  description.classList.remove("hidden");
}
