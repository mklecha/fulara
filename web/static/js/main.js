let buffor = "";

document.onkeypress = function (e) {
    e = e || window.event;
    if (e.keyCode === 66) {
        buffor = "";
    }
    buffor = buffor.concat(String.fromCharCode(e.which));
    if(sha256(buffor) === '177d476a4d662deb66be3ee497d4b4fca4edbb70ef8f7d5b70f0fbcf85fa475b'){
        activatePanel();
    }
};

const activatePanel = function () {
    $('html').toggleClass('hidden-panel');
    $('a').toggleClass('hidden-panel');
    $('#admin-panel').show();
};

jQuery(document).ready(function() {

    /*
     Wow
     */
    new WOW().init();
});
