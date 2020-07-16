$(document).ready(function() {



  $("div.blog-post").hover(
    function() {
        $(this).find("div.content-hide").slideToggle("fast");
    },
    function() {
        $(this).find("div.content-hide").slideToggle("fast");
    }
  );

  $('.flexslider').flexslider({
		prevText: '',
		nextText: ''
	});

  $('.testimonails-slider').flexslider({
    animation: 'slide',
    slideshowSpeed: 5000,
    prevText: '',
    nextText: '',
    controlNav: false
  });

  $(function(){

  // Instantiate MixItUp:

  $('#Container').mixItUp();



  $(document).ready(function() {
      $(".fancybox").fancybox();
			var cur_l=window.location.href;
			if(cur_l.includes("page=") == true){
				window.location="#blog-post";
			}
    });

  });


});
