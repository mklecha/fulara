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
    /* Wow */
    new WOW().init();
});

// jQuery to collapse the navbar on scroll
$(window).scroll(function() {
    if ($(".navbar").offset().top > 50) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
    }
});

// jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
    $('a.page-scroll').bind('click', function(event) {
        let $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1500, 'easeInOutExpo');
        event.preventDefault();
    });
});

// Closes the Responsive Menu on Menu Item Click
$('.navbar-collapse ul li a').click(function() {
    $('.navbar-toggle:visible').click();
});

