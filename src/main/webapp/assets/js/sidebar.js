/**
 * Created by michael on 14-10-8.
 */
var path = window.location.pathname;
$('#sidebar-menu li').each(function() {
    var el = $(this).find('a');
    if (el.attr('href')==path) {
        if (el.data('menuLevel') == '1') {
            el.addClass("subdrop");
        } else {
            $(this).addClass('active');
            $(this).closest('.has_sub').find('>a').addClass('active');

        }
    } else {
        if (el.data('menuLevel') == '1') {
            el.removeClass("subdrop");
        } else {
            $(this).removeClass('active');
            $(this).closest('.has_sub').find('>a').removeClass('active');
        }
    }
})