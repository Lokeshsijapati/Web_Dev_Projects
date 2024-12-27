let mobile = document.querySelector(".mobiles");
let elec = document.querySelector(".electronics");

let loop=0;
let mbdata = [
  {
    id:'1',
    image: "pro-image/iqZ9spro.png",
    title: "IQ Z9s Pro",
    price: "35000",
  },
  {
    id:'2',
    image: "pro-image/onePlus.png",
    title: "Oneplus Ce4",
    price: "24000",
  },
  {
    id:'3',
    image: "pro-image/iqZ7pro.png",
    title: "IQ Z7 Pro",
    price: "24000",
  },
  {
    id:'4',
    image: "pro-image/mi14.png",
    title: "Mi 14",
    price: "55000",
  },
  {
    id:'5',
    image: "pro-image/miK20.png",
    title: "MI K20",
    price: "38000",
  },
  {
    id:'6',
    image: "pro-image/VivoT3.png",
    title: "Vivo T3 5G",
    price: "22000",
  },
];
let elecdata = [
  {
    id:'7',
    image: "pro-image/charger.png",
    title: "Fast Charger",
    price: "1200",
  },
  {
    id:'8',
    image: "pro-image/printer.png",
    title: "Hp printer",
    price: "54000",
  },
  {
    id:'9',
    image: "pro-image/bluethoot.png",
    title: "Earbuds",
    price: "18000",
  },
  {
    id:'10',
    image: "pro-image/router.png",
    title: "T-P link Wifi",
    price: "2000",
  },
  {
    id:'11',
    image: "pro-image/camera.png",
    title: "Canon",
    price: "123000",
  },
  {
    id:'12',
    image: "pro-image/charger.png",
    title: "Fast Charger",
    price: "1200",
  },
];
Show();
function Show() {
  if(!mobile){
    return
  }
  if (mbdata!=null) {
    mbdata.forEach((elements) => {
      mobile.innerHTML += `<div class="col-2">
        <div class="img">   
          <img src="${elements.image}" alt="">
        </div>
        <div class="titel">
          <h4>${elements.title}</h4>
          </div>
          <div class="price">
          <h5>₹${elements.price}</h5>
          </div>
          <div class="button">
          <button class="btn btn-danger" onclick="Buynow()">Buy Now</button>
          <button class="btn btn-success" onclick="AddCart('${elements.image}','${elements.title}','${elements.price}')">Add Cart</button>
          </div>
          </div>`;
    });
  }
  if(!elec){
    return
  }
  elecdata.forEach((elements) => {
    if (elecdata!=null) {
     elec.innerHTML += `<div class="col-2">
    <div class="img">
    <img src="${elements.image}" alt="">
    </div>
    <div class="titel">
    <h4>${elements.title}</h4>
    </div>
    <div class="price">
    <h5>₹${elements.price}</h5>
    </div>
    <div class="button">
    <button class="btn btn-danger" onclick="Buynow()">Buy Now</button>
    <button class="btn btn-success" onclick="AddCart('${elements.image}','${elements.title}','${elements.price}')">Add 
    Cart</button>
    </div>
    </div>`;
    }
  });
}




