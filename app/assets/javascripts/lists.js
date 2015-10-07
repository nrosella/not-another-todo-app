$(document).on("page:load", function(){
  $("ul").on("dblclick", "label", function(){
    $(this).parents("li").toggleClass("editing");
    $(this).parents("li").find("input[name='list[item_one]']").focus();
  });

  $("ul").on("blur", "input[name='list[item_one]']", function(){
    $(this).parents("form").trigger("submit");
  })

	$('#completed-button').click(function(){
		$('#item-one-complete').addClass("strikethrough");
		$('#item-two-complete').addClass("strikethrough");
		$('#item-three-complete').addClass("strikethrough");
		$('#item-four-complete').addClass("strikethrough");
	})

});

