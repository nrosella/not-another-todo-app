$(document).on("page:load", function(){
  $("ul").on("dblclick", "label", function(){
    $(this).parents("li").toggleClass("editing");
    $(this).parents("li").find("input[name='list[item_one]']").focus();
  });

  $("ul").on("blur", "input[name='list[item_one]']", function(){
    $(this).parents("form").trigger("submit");
  })

	// $('#form-input').click(function() {
	//   if ($(this).is(':checked')) {
	//   	$('#item-one-complete').addClass("strikethrough")
	//   } else {
	//     $('#item-one-complete').removeClass("strikethrough")
	//   }
	// });

	// $('#form-input-two').click(function() {
	//   if ($(this).is(':checked')) {
	//   	$('#item-two-complete').addClass("strikethrough")
	//   } else {
	//     $('#item-two-complete').removeClass("strikethrough")
	//   }
	// });

	// $('#form-input-three').click(function() {
	//   if ($(this).is(':checked')) {
	//   	$('#item-three-complete').addClass("strikethrough")
	//   } else {
	//     $('#item-three-complete').removeClass("strikethrough")
	//   }
	// });

	// $('#form-input-four').click(function() {
	//   if ($(this).is(':checked')) {
	//   	$('#item-four-complete').addClass("strikethrough")
	//   } else {
	//     $('#item-four-complete').removeClass("strikethrough")
	//   }
	// });

	$('#completed-button').click(function(){
		console.log("Marked all as completed");
		$('#item-one-complete').addClass("strikethrough");
		$('#item-two-complete').addClass("strikethrough");
		$('#item-three-complete').addClass("strikethrough");
		$('#item-four-complete').addClass("strikethrough");
	})

});

