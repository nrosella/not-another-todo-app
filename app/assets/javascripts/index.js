$(function(){
		$('#new-list-form').hide();
	  $('#the-button').click(function(){
    	$('#new-list-form').slideDown();
    	$(this).hide();
  	});

  	$('a:contains("Today")').css('color', '#f0ad4e').css('font-weight', 'bold');

})

$(document).on("page:load", function(){

	$('a:contains("Today")').css('color', '#f0ad4e').css('font-weight', 'bold');
	
	$('#new-list-form').hide();
	  $('#the-button').click(function(){
    	$('#new-list-form').slideDown();
    	$(this).hide();
  	});

});