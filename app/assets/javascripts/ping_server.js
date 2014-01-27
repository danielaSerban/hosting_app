function showPing() {
        jQuery.ajax({
            type: "GET",
            url: "/ping_server",
            dataType: "json",
            success: function(data) {
                $('div1').innerHTML = data.ping
            }
})
}
