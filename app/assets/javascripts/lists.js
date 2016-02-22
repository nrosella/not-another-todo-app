$(document).on("page:load", function(){
  $("ul").on("dblclick", "label", function(){
    $(this).parents("li").toggleClass("editing");
    $(this).parents("li").find("input[name='list[item_one]']").focus();
  });

	$('#completed-button').click(function(){
		$('#item-one-complete').addClass("strikethrough");
		$('#item-two-complete').addClass("strikethrough");
		$('#item-three-complete').addClass("strikethrough");
		$('#item-four-complete').addClass("strikethrough");
	})

});

$(function(){
    $("#first-form, #second-form, #third-form, #fourth-form").on("keypress", function (e) {
    if (e.keyCode == 13) {
        return false;
    }
  })

  $("#list_item_one").focusout(function(){
      if (!$(this).val()) {
            this.target.setCustomValidity("Hey, internet crusader! You have to have at least one Mission Critical Task!");
            $(this).focus();
      }
  });

});

document.addEventListener("DOMContentLoaded", function() {
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

