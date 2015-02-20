// $(document).ready(function(){});
$(function(){
    // LogIn
    $('#logInButton').click(function() {
        $('#myModal').reveal({
             animation: 'fadeAndPop',                   //fade, fadeAndPop, none
             animationspeed: 1000,                       //how fast animtions are
             closeonbackgroundclick: true,              //if you click background will modal close?
             dismissmodalclass: 'close-reveal-modal'    //the class of a button or element that will close an open modal
        });
    });
    // jCarousel
    $('.jcarousel').jcarousel({
            wrap: 'circular' //"first", "last", "both" or "circular" as string
        })
        .jcarouselAutoscroll({
            interval: 1000,
            target: '+=1',
            autostart: true
        });
    $('.jcarousel-prev').jcarouselControl({
        target: '-=1'
    });

    $('.jcarousel-next').jcarouselControl({
        target: '+=1'
    });

    $('.jcarousel-pagination').jcarouselPagination({
        item: function(page) {
            return '<a href="#' + page + '">' + '</a>';
        }
    });
});

// $(window).load(function(){});
