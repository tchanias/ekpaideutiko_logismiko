$(document).ready( function() {


// start of menu js

	$('.menutoggler').hover(
	  function() {
				$('.top').addClass('inSmall');
				if (!$('.top').is('.in')){
					$('.menuInner').addClass('hidden');
				}
			  }, function() {
				$('.top').removeClass('inSmall');
			  }
	);


	$('.logo').click(function() {
		window.location.href = "index.html";
	});


	$('.menutoggler').click(
	  function() {
			$('.top').toggleClass('in');
			$('.top').removeClass('inSmall');
			$('.menuInner').toggleClass('hidden');
	  }
	);

// end of menu js


});
