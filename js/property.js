const baseURL = base_url + "/public";
let page = 1;
let price = 0;
let size = 0;
let triggerScrollLoader = true;

$(document).ready(function () {

    $(window).scroll(function () {

        if ($(window).scrollTop() + $(window).height() >= $(document).height() - 555) {

            page++;
            if (triggerScrollLoader) {

                initLoadMore('/more-property?page=' + page + '&price=' + price + '&size=' + size);
            }
        }
    });

    $('#search-price').bind('keyup keydown', function (e) {

        page = 1;
        triggerScrollLoader = true;
        price = $('#search-price').val();

        $('#main-card-list').empty();
        $('#more-card-list').empty();
        initLoadMore('/more-property?page=' + 1 + '&price=' + price + '&size=' + size);
    });

    $('#search-size').bind('keyup keydown', function (e) {

        page = 1;
        triggerScrollLoader = true;
        size = $('#search-size').val();

        $('#main-card-list').empty();
        $('#more-card-list').empty();
        initLoadMore('/more-property?page=' + 1 + '&size=' + size + '&price=' + price);
    });

    function initLoadMore(request) {

        $.ajax({
            url: baseURL + request,
            type: "GET",
            dataType: "html",
        }).done(function (data) {

            if (data.length == 0) {

                triggerScrollLoader = false;
                return;
            }
            $('#more-card-list').append(data).show('slow');

        }).fail(function (jqXHR, ajaxOptions, thrownError) {

            console.log('No property Available!');
        });
    }
});
