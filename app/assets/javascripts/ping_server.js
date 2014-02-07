function showPing() {
    var server_url = window.location.pathname;
    server_url = server_url.concat("/ping_server/")
        jQuery.ajax({
            type: "GET",
            url: server_url,
            dataType: "json",
            success: function(data) {
                $('div1').innerHTML = data.ping
            }
})
}
