const urls = {
    "gift": "manage-gifts.html",
    "invitation": "manage-invitations.html"
};

function showTab(id) {
    $.get(urls[id], function (data) {
        $('.tab').each(function () {
            $(this).hide();
        });
        $('#' + id).html(data);
        $('#' + id).show();
        $('.nav-li.active').toggleClass('active');
        $('#nav-' + id).toggleClass('active');

        if (id === 'invitation') {
            attachInvitation();
        } else if (id === 'gift') {

        }
    });
}


$('.form-signin').submit(function (event) {
    const passwordPresend = $('#password-presend').val();
    $('#password').val(sha256(passwordPresend));
});

function phase1() {
    $('.phase1').show();
    $('.phase2').hide();
}

function phase2() {
    $('.phase2').show();
    $('.phase1').hide();
}

function deleteInvitation(key) {
    $.get(urls['invitation'], {action: "delete", key: key}, function (data) {
        $('#invitation').html(data);
        attachInvitation();
    })
}

function attachInvitation() {
    $('#add-invitation-form').submit(function (event) {
        event.preventDefault();
        if ($('#plural').is(':checked')) {
            $('#plural-off').prop('disabled', true);
        }
        $.ajax({
            url: urls['invitation'],
            data: $(this).serialize(),
            success: function (data) {
                $('#invitation').html(data);
                attachInvitation();
            }
        });
    });
}
