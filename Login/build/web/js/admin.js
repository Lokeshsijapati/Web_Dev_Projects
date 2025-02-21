
let formPage=document.querySelector(".formpage");
employe=()=>{
  formPage.classList.toggle("form-js");
}
function lokesh(){
    let Logout=document.querySelector("Select").value;
    if(Logout==="Logout"){
    if (confirm("You really want to logout") == true) {
     window.location.href = "index.jsp";
  } else {
    window.location.href = "Admin.jsp";
  }
    }
}

