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

$(document).addEventListener("DOMContentLoaded", function() {
    var elements = document.getElementsByTagName("INPUT");
    for (var i = 0; i < elements.length; i++) {
        elements[i].oninvalid = function(e) {
            e.target.setCustomValidity("");
            if (!e.target.validity.valid) {
                e.target.setCustomValidity("Hey, internet crusader! You have to have at least one Mission Critical Task!");
            }
        };
        elements[i].oninput = function(e) {
            e.target.setCustomValidity("");
        };
    }
})