var images = ["background1.jpg","background2.jpg","background3.jpg","background4.jpg"];
    $(function () {
        var i = 0;
        $("#background").css("background-image", "linear-gradient(rgba(0, 0, 0, 0.1),rgba(0, 0, 0, 0.95))," + "url(resources/img/" + images[i] + ")");
        setInterval(function () {
            i++;
            if (i == images.length) {
                i = 0;
            }
            $("#background").fadeOut(500, function () {
                $(this).css("background-image","linear-gradient(rgba(0, 0, 0, 0.1),rgba(0, 0, 0, 0.95))," + "url(resources/img/" + images[i] + ")");
                $(this).fadeIn(500);
            });
        }, 7000);
    });