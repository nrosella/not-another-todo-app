$(function(){
  $("ul").on("dblclick", "label", function(){
    $(this).parents("li").toggleClass("editing");
    $(this).parents("li").find("input[name='list[item_one]']").focus()
  });

  $("ul").on("blur", "input[name='list[item_one]']", function(){
    $(this).parents("form").trigger("submit")
  })

	$('#form-input').click(function() {
	  if ($(this).is(':checked')) {
	  	$('#first-form').addClass("strikethrough")
	  } else {
	    $('#first-form').removeClass("strikethrough")
	  }
	});

	$('#form-input-two').click(function() {
	  if ($(this).is(':checked')) {
	  	$('#second-form').addClass("strikethrough")
	  } else {
	    $('#second-form').removeClass("strikethrough")
	  }
	});

	$('#form-input-three').click(function() {
	  if ($(this).is(':checked')) {
	  	$('#third-form').addClass("strikethrough")
	  } else {
	    $('#third-form').removeClass("strikethrough")
	  }
	});

	$('#form-input-four').click(function() {
	  if ($(this).is(':checked')) {
	  	$('#fourth-form').addClass("strikethrough")
	  } else {
	    $('#fourth-form').removeClass("strikethrough")
	  }
	});

	$('#save-button').click(function(){
		console.log("It worked")
	})

});

