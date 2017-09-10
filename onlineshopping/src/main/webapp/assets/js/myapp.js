$( document ).ready(function() {
	switch (menu) {
	case 'About':
		console.log("Query executing Active menu for about...");
		$('#about').addClass('active');
		break;
	case 'Home':
		console.log("Query executing Active menu for home page...");
		$("#home").attr('class', "active");
		break;
	}
});