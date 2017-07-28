const urls = {
    "gift": "manage-gifts.html",
    "invitation": "manage-invitations.html"
};

function showTab(id) {
    $.get(urls[id], function (data) {
        $('.tab').each(function () {
            $(this).hide();
        });
        let tab = $('#' + id);
        tab.html(data);
        tab.show();
        $('.nav-li.active').toggleClass('active');
        $('#nav-' + id).toggleClass('active');

        if (id === 'invitation') {
            attachInvitation();
        } else if (id === 'gift') {
            attachGift();
        }
    });
}


$('.form-signin').submit(function (event) {
    const passwordPresend = $('#password-presend').val();
    $('#password').val(sha256(passwordPresend));
});

$(document).ready(function(){
    let div = $('#gift').html();

    if(div !== undefined && div.length === 0){
        div = $('#invitation').html();
        if(div !== undefined && div.length === 0){
            showTab('gift');
        }
    }
});

function phase1(id) {
    $('.p1-'+id).show();
    $('.p2-'+id).hide();
}

function phase2(id) {
    $('.p1-'+id).hide();
    $('.p2-'+id).show();
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

function changeReservation(id){
    $.get(urls['gift'], {action: "changeReservation", id: id}, function (data) {
        $('#gift').html(data);
        attachGift();
    })
}

function deleteGift(id) {
    $.get(urls['gift'], {action: "delete", id: id}, function (data) {
        $('#gift').html(data);
        attachGift();
    })
}

function attachGift() {
    $('#add-gift-form').submit(function (event) {
        event.preventDefault();
        let link = $('#link').val();
        if(link.length > 0 && !link.startsWith('http')){
            $('.link-error').show();
            return;
        }
        $.ajax({
            url: urls['gift'],
            data: $(this).serialize(),
            success: function (data) {
                $('#gift').html(data);
                attachGift();
            }
        });
    });
}
