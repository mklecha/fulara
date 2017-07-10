const urls = {
    "gift": "manage-gifts.html",
    "invitation": "manage-invitations.html"
}

function showTab(id) {
    $.get(urls[id], function (data) {
        $('.tab').each(function () {
            $(this).hide();
        });
        $('#' + id).html(data);
        $('#' + id).show();
        $('.nav-li.active').toggleClass('active');
        $('#nav-' + id).toggleClass('active');
    })

}


$('.form-signin').submit(function (event) {
    const passwordPresend = $('#password-presend').val();
    $('#password').val(sha256(passwordPresend));
});