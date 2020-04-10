$(document).ready(function(){

	// loading the contents of the home page
	$('main').load('content.jsp #notification');

	// checking the id of the link clicked
	$('a').click(function(){
		$('main').html('<div class="loading"><img src="images/loading.gif" alt="Loading"></div>');

		// removing active class from all links
		$('a').removeClass('active');
		$(this).addClass('active');

		var clickedLink = $(this).attr('id');

		$('main').load('content.jsp #' + clickedLink);
	});

});