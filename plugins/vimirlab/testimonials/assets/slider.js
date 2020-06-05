$(document).ready(function(){   

	$('.testimonials-slider').owlCarousel({   
        loop:true,
        margin:0,
        padding:100,
        nav: true,
        autoHeight:false,
        dots:false,
        autoplay:true,
        smartSpeed:2000,
        autoplayTimeout:5000,
        autoplayHoverPause:true,
        navText: [ '<span class="icon-arrow-left"></span>', '<span class="icon-arrow-right"></span>' ],
        responsive:{
            0:{
                items:1
            },
        }

    });    

});



// navText: [ '<span class="icon-arrow-left"></span>', '<span class="icon-arrow-right"></span>' ],
// navText: [ 'PREV', 'NEXT' ],