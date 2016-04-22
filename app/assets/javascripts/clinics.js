$(document).on('ready page:load', function (e) {
	$.ajax({
		url: '/clinics',
		method: 'GET',
		success: function(response) {
			$("#list").html(response);
		}
	});
	
});