

var pw = document.getElementById('pw');

if (pw !== null) {
    var input = document.getElementsByTagName('input');
    var err = document.getElementById('err');
    pw.onkeyup = function () {
        var regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[a-zA-Z\d]{8,}$/;
        if (pw.value.match(regex)) {

            input[input.length - 1].disabled = false;
            console.log("succes");
            err.innerHTML = "";
        } else {
            input[input.length - 1].disabled = true;
            console.log("fail");
            err.innerHTML = "Mật khẩu tối thiểu tám ký tự, ít nhất một chữ hoa, một chữ thường và một chữ số";
        }

    };
}



/* global parse, distance, quanty */
///////////convert price funtion
function convertPrice(price) {
    var convert = price.toLocaleString('vi-VN', {
        style: 'currency',
        currency: 'VND'
    });
    return convert;
}
///////////
function quickView(productID) {
    $.ajax({
        url: "/khiem/api/quick-view/",
        type: 'GET',
        data: {
            'p_id': productID
        }
    }).done(function (data) {
        document.getElementById('qv-image').src = data.image1;
        document.getElementById('qv-img1').src = data.image1;
        document.getElementById('qv-img2').src = data.image2;
        document.getElementById('qv-img3').src = data.image3;
        document.getElementById('qv-productName').innerHTML = data.productName;
        document.getElementById('qv-des').innerHTML = data.description;
        document.getElementById('qv-id').value = data.productID;
        const sale = data.sale / 1;
        if (sale !== 0) {
            var convert = convertPrice(data.price / 1);
            document.getElementById('qv-old-price').innerHTML = convert;
            const newPrice = (data.price / 1) * (1 - (data.sale / 1) / 100);
            var convertNewPrice = convertPrice(newPrice);
            document.getElementById('qv-new-price').innerHTML = convertNewPrice;
        } else {
            document.getElementById('qv-old-price').innerHTML = null;
            var convert = convertPrice(data.price / 1);
            document.getElementById('qv-new-price').innerHTML = convert;
        }
        let x = data.status;
        if (x === 0) {
            document.getElementById('qv-status').innerHTML = "New";
        } else {
            document.getElementById('qv-status').innerHTML = "Second Hand";
        }

    });
}
function changeImage(img) {
    if (img === 1) {
        var img1 = document.getElementById('qv-img1').src;
        document.getElementById('qv-image').src = img1;
    } else if (img === 2) {
        var img2 = document.getElementById('qv-img2').src;
        document.getElementById('qv-image').src = img2;
    } else {
        var img3 = document.getElementById('qv-img3').src;
        document.getElementById('qv-image').src = img3;
    }
}
//******** Count down ************
var n = document.getElementsByClassName('prod_id').length;
if (n !== 0) {
    for (var i = 0; i < n; i++) {
        var date = document.getElementsByClassName('date')[i].value;
        var countDownDate = new Date(date).getTime() - 25200000;
        // Get today's date and time
        var now = new Date().getTime();
        // Find the distance between now and the count down date
        var distance = countDownDate - now;
        if (distance < 0) {
            var id = document.getElementsByClassName('prod_id')[i].value;
            $.ajax({
                url: "/khiem/api/update-countdown-time/",
                type: 'GET',
                data: {
                    'p_id': id
                }
            });
            location.reload();
        }
    }
}
//********End Count down ************
//
//
//
//*******Convert price **************
var n = document.getElementsByClassName('price').length;
for (var i = 0; i < n; i++) {
    const  price = document.getElementsByClassName('price')[i].innerHTML / 1;
    var convert = convertPrice(price);
    document.getElementsByClassName('price')[i].innerHTML = convert;

}
//*******End convert Price **********


var n = document.getElementsByClassName('sale').length;
var x = 0;
for (var i = 0; i < n; i++) {
    const sale = document.getElementsByClassName('sale')[i].value / 1;
    const price = document.getElementsByClassName('oldPrice')[i].value / 1;
    const newPrice = price * (1 - sale / 100);
    var convert = convertPrice(newPrice);
    document.getElementsByClassName('new-price')[i].innerHTML = convert;
    if (x !== 2) {
        x = document.getElementsByClassName('savePrice').length;
    }
    if (x === 1) {
        const savePrice = price - newPrice;
        var convertSavePrice = convertPrice(savePrice);
        document.getElementsByClassName('savePrice')[0].innerHTML = convertSavePrice;
        x++;

    }
}
//****************** Change Star *************************

function executeRating(star) {
    var ratingStar = document.getElementsByClassName('rating__star')[star].className;
    var starClassActive = 'rating__star fa fa-star check';
    var starClassInActive = 'rating__star fa fa-star-o';
    if (ratingStar === starClassInActive) {
        document.getElementsByClassName('rating__star')[star].className = starClassActive;
        var rate = document.getElementsByClassName('check').length;
    } else {
        document.getElementsByClassName('rating__star')[star].className = starClassInActive;
        var rate = document.getElementsByClassName('check').length;
    }
    document.getElementById('rate').value = rate;
}
//****************** End Change Star *********************
//****************** View comment **************************

function comment(page) {
    var p_id = document.getElementById('p_id').value;
    var starActive = 'cmt-rate font-13 fa fa-star';
    var starInActive = 'cmt-rate font-13 fa fa-star-o';

    $.ajax({
        url: "/khiem/api/load-comment/",
        type: 'GET',
        data: {
            'p_id': p_id,
            'page': page
        }
    }).done(function (data) {
        var n = data.length;
        var k = 0;
        if (n === 0) {
            document.getElementById('rv-item1').style.opacity = "0";
            document.getElementById('rv-item2').style.opacity = "0";
            document.getElementById('rv-item3').style.opacity = "0";
        } else if (n === 1) {
            document.getElementById('rv-item2').style.opacity = "0";
            document.getElementById('rv-item3').style.opacity = "0";
        } else if (n === 2) {
            document.getElementById('rv-item2').style.opacity = "1";
            document.getElementById('rv-item3').style.opacity = "0";
        } else {
            document.getElementById('rv-item1').style.opacity = "1";
            document.getElementById('rv-item2').style.opacity = "1";
            document.getElementById('rv-item3').style.opacity = "1";
        }

        for (var i = 0; i < n; i++) {
            for (var j = k; j <= 4 + k; j++) {
                if (j < data[i].rate + k) {
                    document.getElementsByClassName('cmt-rate')[j].className = starActive;
                } else {
                    document.getElementsByClassName('cmt-rate')[j].className = starInActive;
                }
            }

            document.getElementsByClassName('cmt-title')[i].innerHTML = data[i].title;
            document.getElementsByClassName('cmt-review')[i].innerHTML = data[i].review;
            document.getElementsByClassName('cmt-time')[i].innerHTML = data[i].dateUP;
            document.getElementsByClassName('nameUS')[i].innerHTML = data[i].name;
            k += 5;
        }

    });
}




//****************** End view comment **********************
//****************** Cart **********************

function add_cart() {
    var id = document.getElementById('qv-id').value;
    var quanty = document.getElementById('qv-quanty').value;
    addCart(id, quanty);
}

function addCart(id, quanty) {
    $.ajax({
        url: "/khiem/cart/add-to-cart",
        type: 'GET',
        data: {
            'p_id': id,
            'quanty': quanty
        }
    }).done(function (data) {
        var count = Object.keys(data).length;
        document.getElementById('CartCount').innerHTML = count;
        location.reload();
    });
}

//var x = document.getElementById('father');
//var y = document.getElementById('child');
//x.appendChild(y.cloneNode(true));
function deleteCart(id) {
    $.ajax({
        url: "/khiem/cart/delete-cart",
        type: 'GET',
        data: {
            'p_id': id
        }
    });
    location.reload();
}
function deleteAllCart() {
    $.ajax({
        url: "/khiem/cart/delete-all-cart/"
    });
    location.reload();
}
function updateCart(i) {
    var id = document.getElementsByClassName('qv_id')[i].value / 1;
    var quanty = document.getElementsByClassName('qv_quanty')[i].value / 1;
    $.ajax({
        url: "/khiem/cart/update-cart",
        type: 'GET',
        data: {
            'p_id': id,
            'quanty': quanty
        }
    });

    location.reload();


}
//****************** End Cart **********************
//******************WishList **********************

function addWish(id) {
    $.ajax({
        url: "/khiem/wish-list/add",
        type: 'GET',
        data: {
            'p_id': id

        }
    });
    location.reload();

}
function deleteWish(id) {
    $.ajax({
        url: "/khiem/wish-list/delete",
        type: 'GET',
        data: {
            'p_id': id
        }
    });
    location.reload();
}
function deleteAllWish() {
    $.ajax({
        url: "/khiem/wish-list/delete-all"

    });
    location.reload();
}
//****************** End WishList **********************
