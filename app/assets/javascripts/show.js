$(function(){

	$(document).ready(function(){
    $('#save-button').show()
   }).ajaxStart(function () {
       $('#save-button').text('Saving...');
    }).ajaxSuccess(function () {
    	$('#save-button').val('Saved!').css('background-color', '#49AD32').css('border', 'none').delay(1000).fadeOut(400, function(){
    		$('#save-button').val('Save list').css('background-color', '#F0AD4E')
    		$('#save-button').show()
    	});
   });

})