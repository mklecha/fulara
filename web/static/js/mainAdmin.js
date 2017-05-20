function showTab(id) {
    $('.tab').each(function(){
        $(this).hide();
    });
    $('#'+id).show()
    $('.nav-li.active').toggleClass('active');
    $('#nav-'+id).toggleClass('active');
}



$('.form-signin').submit(function (event) {
    const passwordPresend = $('#password-presend').val();
    $('#password').val(sha256(passwordPresend));
});