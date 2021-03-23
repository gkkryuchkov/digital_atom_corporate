document.addEventListener("turbolinks:load", () => {
    $("#sidebar-toggle").on( 'click', function(e) {
        e.preventDefault();
        $("#wrapper").toggleClass("toggled");
    });
})