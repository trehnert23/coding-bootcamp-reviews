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

	// $(document).scroll(function() {
	//   var dHeight = $(this).height()-$(window).height();
	//   if (dHeight >= $(this).scrollTop()) {
	//     $('nav').css('background', 'rgba(0,0,0,' + $(this).scrollTop() / dHeight + ')');
	//   }
	// });

	reviewsChecker();

	$("#home_link").click(function() {
		scrollToAnchor('home_link');
	});

	$("#slide1_button").click(function() {
		scrollToAnchor('reviews');
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
	editReview();
	bootcampBars();
	


});


$(function(){
	var availableTags = [
		{ value: "Academy X", data: "3" },
		{ value: "Anyone Can Learn to Code", data: "4" },
		{ value: "App Accademy", data: "5" },
		{ value: "Apprentice.io", data: "6" },
		{ value: "Big Nerd Ranch", data: "7" },
		{ value: "CodePath", data: "8" },
		{ value: "Coder Camps", data: "9" },
		{ value: "CodeStream Labs", data: "10" },
		{ value: "Codify Academy", data: "11" },
		{ value: "Coding Dojo", data: "12" },
		{ value: "Dev Bootcamp", data: "13" },
		{ value: "Fire Bootcamp", data: "14" },
		{ value: "Galvanize", data: "15" },
		{ value: "General Assembly", data: "1" },
		{ value: "Hack Reactor", data: "2" },
		{ value: "Hackbright Academy", data: "16" },
		{ value: "Hacker Coding Academy", data: "17" },
		{ value: "Hackership San Francisco", data: "18" },
		{ value: "LearnTech Labs", data: "19" },
		{ value: "Make School", data: "20" },
		{ value: "MakerSquare", data: "21" },
		{ value: "Metis", data: "22" },
		{ value: "Mobile Makers Academy", data: "23" },
		{ value: "Product School", data: "24" },
		{ value: "Thinkful", data: "25" },
		{ value: "Tradecraft", data: "26" },
		{ value: "Zipfian Academy", data: "27" },
	];
  	$( "#tags" ).autocomplete({
        source: availableTags
    });
});


// <%= link_to "Academy X", bootcamps_path(3) %>
// setup autocomplete function pulling from currencies[] array
// $('#autocomplete').autocomplete({
//   lookup: currencies,
//   onSelect: function (suggestion) {
//     location.href = "http://www.suggestion.com/test";
//   }
// });


function goBack() {
    window.history.back();
}


function scrollToAnchor(aid) {
	var aTag = $("a[name='"+ aid + "']");
	$('html,body').animate({
		scrollTop: aTag.offset().top},2000);
}

function submitReview() {
	$('#review-submit').click(function () {
		var data = {};
		data.bootcamp_id = window.location.pathname.split("/")[2];
		data.bootcamp_review = $('#bootcamp-review-form').serializeArray();
		data.instructor_review = $('#instructor-review-form').serializeArray();
		data.hired = jobStatus();
		data.worthit = worthIt();
		data.campus = $('#campus-rate').val();
		data.jobsupp = $('#job-supp-rate').val();
		data.locationrate = $('#location-rate').val();

		$.post('/reviews', data).done(function(data) {
			window.location.href = data;
		});
	});

}

function jobStatus() {
	var hired;
	if (document.getElementById('employed').checked) {
		hired = 'Employed';
	} else if (document.getElementById('not-employed').checked) {
		hired = 'Not Employed';
	} else if (document.getElementById('still-attending').checked){
		hired = 'Still Attending';
	} else if (document.getElementById('not-looking').checked){
		hired = 'Not Looking';
	}

	return hired;
}

function worthIt() {
	var courseWorth;
	if (document.getElementById('worth-it-yes').checked) {
		courseWorth = 'Yes';
	} else if (document.getElementById('worth-it-no').checked) {
		courseWorth = 'No';
	}

	return courseWorth;
}

function editReview() {
	$(".edit_bootcamp_review").submit(function(e) {
		e.preventDefault();

		var bcReviewId = window.location.pathname.split("/")[2];

		var bootcamp_review = {};
		bootcamp_review.content = $('#bootcamp_review_content').val();
		bootcamp_review.hired = jobStatus();
		bootcamp_review.worthit = worthIt();
		bootcamp_review.campus = $('#bootcamp_review_campus').val();
		bootcamp_review.jobhelp = $('#bootcamp_review_jobhelp').val();
		bootcamp_review.location = $('#bootcamp_review_location').val();

		
		$.ajax({
			type: 'PATCH',
			url: '/bootcamp_reviews/' + bcReviewId + '/edit',
			data: bootcamp_review

		}).done(function(data) {
			window.location.href = data;
			// console.log(data);
		});
	})
}

function bootcampBars() {

	var campusAvg = ($('#campusAvg').html());
	
	var yesAvg = ($('#yesAvg').html());

	var jobhelpAvg = ($('#jobhelpAvg').html());
	
	var locationAvg = ($('#locationAvg').html());
	
	$('#worthitRating').css({backgroundColor: "rgb(225, 66, 66)", textAlign: "center", color: "white"});
	$('#locationRating').css({backgroundColor: "rgb(225, 66, 66)", textAlign: "center", color: "white"});
	$('#jobhelpRating').css({backgroundColor: "rgb(225, 66, 66)", textAlign: "center", color: "white"});
	$('#campusRating').css({backgroundColor: "rgb(225, 66, 66)", textAlign: "center", color: "white"});
	$('#worthitRating').html(yesAvg + "%");
	$('#locationRating').html(locationAvg + "%");
	$('#jobhelpRating').html(jobhelpAvg + "%");
	$('#campusRating').html(campusAvg + "%");

	
	console.log('campus' + $('#campusAvg').html());
	console.log('yes' + $('#yesAvg').html());
	console.log($('#locationAvg').html());
	console.log($('#jobhelpAvg').html());


	$("#worthitRating").animate({
    width:  yesAvg + "%"
  	}, 1000, "easeOutCubic");

  	$("#locationRating").animate({
    width: locationAvg + "%"
  	}, 1000, "easeOutCubic");

  	$("#jobhelpRating").animate({
    width: jobhelpAvg + "%"
  	}, 1000, "easeOutCubic");

  	$("#campusRating").animate({
    width: campusAvg + "%"
  	}, 1000, "easeOutCubic");

}

function reviewsChecker() {
	if(!!document.getElementById("reviews-area")) {
		$('#navbar-ul').prepend('<li><button class="btn btn-default" id="slide1_button">Reviews</button></li>')
	}
}
