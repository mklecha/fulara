function showTab(id) {
    $('.tab').each(function(){
        $(this).hide();
    });
    $('#'+id).show();
    $('.nav-li.active').toggleClass('active');
    $('#nav-'+id).toggleClass('active');
}

function logOut(){
    delete_cookie('JSESSIONID');
    location.reload();

}

var delete_cookie = function(name) {
    document.cookie = name + '=;expires=Thu, 01 Jan 1970 00:00:01 GMT;';
};

$('.form-signin').submit(function (event) {
    const passwordPresend = $('#password-presend').val();
    $('#password').val(sha256(passwordPresend));
});