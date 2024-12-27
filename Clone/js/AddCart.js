function AllFunction() {
  onload();
  PriceList();
  lok();
}
let data = [];
data = JSON.parse(localStorage.getItem("bagdata"));
let CartItem;
let cpyData;
let Amount = document.querySelector(".amount");
let Total = 0;
let FinalAmount = 0;
let items;
// NewTotal=parseInt(localStorage.getItem("newAdd"));
AllFunction();
// its should be call atleast one time

// Add Value on Cart
function AddCart(img, title, price) {
  data.push({ image: img, title: title, price: price });
  localStorage.setItem("bagdata", JSON.stringify(data));
  lok();
}

//Display Cart
function onload() {
  cpyData = JSON.parse(localStorage.getItem("bagdata"));
  CartItem = document.querySelector("#cartsItem");
  if (!CartItem) {
    return;
  }
  if (cpyData) {
    cpyData.forEach((element, index) => {
      CartItem.innerHTML += `<div class="products-data">
     <div class="row">
     <div class="col-md-3 pro-img">
         <img src="${element.image}" alt="">
     </div>
     <div class="col-md-9">
       <div class="pro-detail">
         <h3>${element.title}</h3>
       </div>
       <div class="pro-price">
         <h6>₹${element.price}</h6>
       </div>
        <div class="pro-val">
          <button onclick="remove(${index})">Remove</button>
        </div>
     </div>
    </div>
      </div>`;
    });
  } else {
    return;
  }
  // PriceList();
}

// Display Price Data
function PriceList() {
  items = document.querySelectorAll("#peace");
  // console.log(items);
  if (!Amount) {
    return;
  }
  if (cpyData) {
    let deliverCharge = 46;
    cpyData.forEach((element) => {
      Total += parseInt(element.price);
    });
    let discount = (Total / 100) * 10;
    FinalAmount = Total - discount + deliverCharge;
    cpyData.forEach((element) => {
      Amount.innerHTML= `
      <h3>Total Summary</h3>
      <table>
      <tr>
        <td>Total MRP</td><td>${Total}</td>
      </tr>
      <tr>
        <td>Discount On MRP </td><td>10%</td>
      </tr>
      <tr>
        <td>Delvery Charge</td><td>${deliverCharge}</td>
      </tr>
      <tr>
        <td>Total Amount</td><td>${FinalAmount}</td>
      </tr>
     </table>`;
    });
  }
}

//Remove Element from Display Data
function remove(id) {
  cpyData.splice(id, 1);
  localStorage.setItem("bagdata", JSON.stringify(cpyData));
  CartItem.innerHTML='';
  // onload()
    window.location.reload();
}

function lok()
{
let cartIcon=document.querySelector(".Cart a");
if(!cartIcon)
{
  return;
}
else{
if(data.length==0){
  cartIcon.style.color="black";
}
else{
  cartIcon.style.color="red";
}
}
}
