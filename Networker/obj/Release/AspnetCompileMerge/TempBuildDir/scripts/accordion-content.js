
$.fn.accordion.defaults.container = false;

$(function () {

  jQuery("#acc1").accordion({
      obj: "div",
      wrapper: "div",
      el: ".h",
      head: "h2, h4",
      next: "div",
      showMethod: "slideDown",
      hideMethod: "slideUp"
  });

  jQuery("#acc2").accordion({
      obj: "div",
      wrapper: "div",
      el: ".h",
      head: "h2, h4",
      next: "div",
      showMethod: "slideDown",
      hideMethod: "slideUp"
  });

  jQuery("#acc3").accordion({
      obj: "div",
      wrapper: "div",
      el: ".h",
      head: "h2, h4",
      next: "div",
      showMethod: "slideDown",
      hideMethod: "slideUp"
  });

  jQuery("html").removeClass("js");

	// Hover states
	$("h2").not(".h2heading").hover(function(){
		$(this).addClass("hoverAcc");
		},function(){
		$(this).removeClass("hoverAcc");
	});


	jQuery("h2").not(".h2heading").click(function() {
		// Hover states
		$("h2").not($(this)).removeClass("selectedAcc");
		if ($(this).hasClass("selectedAcc")) {
			$(this).removeClass("selectedAcc");
		} else {
			$(this).addClass("selectedAcc");
		}
	});


	// Hover states
	$("h4").hover(function(){
		$(this).addClass("hoverAcc");
		},function(){
		$(this).removeClass("hoverAcc");
	});

	jQuery("h4").click(function() {
		// Hover states
		$("h4").not($(this)).removeClass("selectedAcc");
		if ($(this).hasClass("selectedAcc")) {
			$(this).removeClass("selectedAcc");
		} else {
			$(this).addClass("selectedAcc");
		}
	});
});

