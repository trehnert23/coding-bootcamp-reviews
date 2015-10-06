// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or any plugin's vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require bootstrap
//= require jquery_ujs
//= require turbolinks
//= require_tree .


$(document).ready(function() {
	// NAVBAR SCROLL OPACITY EFFECT
	$(document).scroll(function() {
	  var dHeight = $(this).height()-$(window).height();
	  if (dHeight >= $(this).scrollTop()) {
	    $('nav').css('background', 'rgba(0,0,0,' + $(this).scrollTop() / dHeight + ')');
	  }
	});


	$("#home_link").click(function() {
		scrollToAnchor('home_link');
	});

	$("#slide1_button").click(function() {
		scrollToAnchor('slide1');
	});

	$("#slide2_button").click(function() {
		scrollToAnchor('slide2');
	});

	$("#slide3_button").click(function() {
		scrollToAnchor('slide3');
	});

	$("#slide4_button").click(function() {
		scrollToAnchor('slide4');
	});

	submitReview();

});


function scrollToAnchor(aid) {
	var aTag = $("a[name='"+ aid + "']");
	$('html,body').animate({
		scrollTop: aTag.offset().top},2000);
}

function submitReview() {
	$('#review-submit').click(function () {
		var data = {};
		data.bootcamp_review = $('#bootcamp-review-form').serializeArray();
		data.instructor_review = $('#instructor-review-form').serializeArray();

		console.log(data.bootcamp_review[0].value);
		console.log(data.instructor_review[0].value);
		$.post('/reviews', data);
	})

}
