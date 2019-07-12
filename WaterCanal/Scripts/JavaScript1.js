//document.oninput = function () {
//    var input = document.querySelector('.input-1');
//    input.value = input.value.replace(/[^\d]/g, '');
//}
document.oninput = function () {
    var input = document.querySelectorAll('.input-0');
    console.log(111);
    input[0].value = input[0].value.replace(/[^\d]/g, '');
    input[1].value = input[1].value.replace(/[^\d]/g, '');
    input[2].value = input[2].value.replace(/[^\d]/g, '');
}

