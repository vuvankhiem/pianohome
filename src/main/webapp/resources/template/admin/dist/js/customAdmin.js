/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

function NewPrice() {
  var x = document.getElementById("price");
  var y = document.getElementById("sale");
  var z = document.getElementById("priceSale");
  z.value = x.value * (1 - y.value / 100);
}

function deleteP(id) {
    $.ajax({
        url: "/khiem/admin/delete-product/",
        type: 'GET',
        data: {
            'id': id
        }
    });
    window.location.reload();
}

function deleteR(id){
    $.ajax({
        url: "/khiem/admin/delete-review/",
        type: 'GET',
        data: {
            'id': id
        }
    });
    window.location.reload();
}

function updateContact(id){
    $.ajax({
        url:"/khiem/admin/update-contact-status/",
        type:'Get',
        data:{
            'id':id
        }
    });
}