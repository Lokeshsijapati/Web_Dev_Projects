/* 
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/JavaScript.js to edit this template
 */
let Adminlogin=document.querySelector(".adminLogin");
let Emplogin=document.querySelector(".employeSign"); 
let username=document.querySelector("#username2");
let pass=document.querySelector("#password2");
function Adm(){
Adminlogin.classList.toggle("adminLogin-js");
username.value="";
pass.value="";
}
function Empl(){
Emplogin.classList.toggle("empLogin-js");
}
