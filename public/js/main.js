(function($){
"use strict";
/* Home Image Height */
var ScrolleFullImage = function(){
	var winHeight = $(window).height();
	$("#home").css({height:winHeight});  
}
/* Home Image Height */
/* Menu Hover Effect */
var ScrolleMenuHover = function(){
	var winWidth = $(window).width();
	$('.work-list').css('width',winWidth-60);
	$('.alt-portfolio .work-list').css('width',winWidth);
	if(winWidth > 959){
		$('#nav li.sectionLink').hover(function(){
			$(this).stop().animate({'width':'160px'});		
		},function(){
			$(this).stop().animate({'width':'60px'});
		});
	}else{
		$('#nav li.sectionLink').css({'width':'100%'});	
		$('#nav li.sectionLink').hover(function(){
			$(this).stop().animate({'width':'100%'});		
		},function(){
			$(this).stop().animate({'width':'100%'});
		});
	}
}
/* Menu Hover Effect */
/* Tab Start */
var ScrolleTabs = function(){
	$('.tabbed-area a').click(function (e) {
		e.preventDefault();
		$(this).tab('show');
		$('.tabbed-area').find('.active').removeClass('active');
		$(this).parent().parent('.tab-button').addClass('active');
		
	});
	$('.tabbed-contact a').click(function (e) {
		e.preventDefault();
		$(this).tab('show');
	});
	$('.panel-style1').click(function(){
		$('.panel-scrolle').find('.panel-style1').removeClass('cllpse-active');	
		$(this).addClass('cllpse-active');
	});
}
/* Tab Finish */
/* Parallax */
var ScrolleParallax = function(){
	$('.about-parallax').parallax("50%", 0.4);
	$('.clients-parallax').parallax("50%", 0.4);
	$('.comment-parallax').parallax("50%", 0.4);
}
/* Parallax */
/* Services Hover */
var ScrolleServicesHover = function(){
	$('.services-list li').hover(function(){
		$(this).children('.service-hover-box').stop(0,1).fadeIn({'display':'block'});		
	},function(){
		$(this).children('.service-hover-box').stop(0,1).fadeOut({'display':'none'});
	});
}
/* Services Hover */
/* Carousels */
var ScrolleCarousels = function(){
}
/* Carousels */
/* Team Carousel */
var ScrolleTeamCarousel = function(){
  var prep,appe;
  var wi = $(window).width();
  if (wi <= 1200){
  	prep = 3;
  	appe = 3;
  }
  else {
  	prep = 2;
  	appe = 2;
  }
}
/* Team Carousel */
/* LightBox */
var ScrolleLightBox = function(){
	$(".iframe").colorbox({iframe:true, width:"100%", height:"100%"});
	$(".portfolio-group").colorbox({rel:'portfolio-group'});	
}
/* LightBox */
/* TwitterFeed */
var ScrolleTwitter = function(){
}
/* TwitterFeed */
/* Sliders */
var ScrolleSliders = function(){
$('#slider-blog').nivoSlider({
	manualAdvance:true,
	effect: 'slideInLeft',
	directionNav: false
});
$('.form-flexslider').flexslider({
	animation: "fade",
	directionNav: false,
	controlsContainer: ".form-slide",
    controlNav: true,
    manualControls: "#form-sli-nav li"
});
}
/* Sliders */
/* Smooth scroll for anchor links */
var ScrolleScrollForAnchor = function(){
	$('.smooth').bind('click.smoothscroll',function (e) {
	    e.preventDefault();
	    var target = this.hash,
	    $target = $(target);
	    $('html, body').stop().animate({
	        'scrollTop': $target.offset().top
	    }, 1000, 'swing');
	});
}
/* Smooth scroll for anchor links */
/* Animation Start */
var ScrolleAnimation = function(){
	$(window).scroll(function() {
		$(".animated-area").each(function() {
			if($(window).height() + $(window).scrollTop() - $(this).offset().top > 0) {
				$(this).trigger("animate-it");
			}
		});
	});
	$(".animated-area").on("animate-it", function() {
		var cf = $(this);
		cf.find(".animated").each(function() {
			$(this).css("-webkit-animation-duration","0.6s");
			$(this).css("-moz-animation-duration","0.6s");
			$(this).css("-ms-animation-duration","0.6s");
			$(this).css("animation-duration","0.6s");
			$(this).css("-webkit-animation-delay",$(this).attr("data-animation-delay"));
			$(this).css("-moz-animation-delay",$(this).attr("data-animation-delay"));
			$(this).css("-ms-animation-delay",$(this).attr("data-animation-delay"));
			$(this).css("animation-delay",$(this).attr("data-animation-delay"));
			$(this).addClass($(this).attr("data-animation"));
		});
		
		cf.find(".animated-skills").each(function() {
			$(this).css("width",$(this).attr("data-skills-width"));
		});
	});
}
/* Animation Finish */
/* Navigation */
var ScrolleNavigation = function(){
	var nav = responsiveNav("#nav");
	$('#nav').onePageNav({
		scrollSpeed: 600,
		scrollOffset: 0
	});
}
/* Navigation */
/* Loading Countdown */
var LoadingCountdown = function(){
  var loader = $(".block div");
  var count = 10;
  var timerId = setInterval(
    function() {
      // Decrement
      count--;
       // Switch 0 to 10
      if(count == 0) {
        count = 10;
      }
      // Switch class
      $(".block div")
        .removeClass()
        .addClass('count-'+count);
   }, 200);
}
/* Loading Countdown */
/* Google map */
var ScrolleGmap = function(){
	var map = new GMaps({
		el: '#map',
    zoom: 15,
		lat: 37.4887018,
		lng: 126.9891373
	});
  // map.setCenter();
	map.addMarker({
	    lat: 37.4887018,
	    lng: 126.9891373,
	    icon: "img/mapicon.png",
	    title: '미니버타이징',
		infoWindow: {
	  		content: '<p>미니버타이징</p><p>내방역12번출구</p>'
	    }
	});
}
/* Google map */

$(document).ready(function() {

/* Resize Events */
$(window).bind('resize',function() {
	ScrolleFullImage();
	ScrolleMenuHover();
});
/* Resize Events */
/* Fittext */
//flex slider for fittext
$('.flexslider').flexslider({
	animation: "fade",
	directionNav: false
});
//flex slider for fittext
$("#slider ul li").fitText(0.8);
$("#half-slider ul li").fitText(1.2, { minFontSize: '20px', maxFontSize: '110px' });
$(".fit-curved").fitText(1.2, { minFontSize: '10px', maxFontSize: '50px' });
$(".fit-text").fitText(1.2, { minFontSize: '20px', maxFontSize: '90px' });
$(window).smartresize(function(){  
  $("#slider ul li").fitText(0.8);
});
/* Fittext */
$("html").niceScroll({
	cursorwidth: 3
});

ScrolleFullImage();
ScrolleTabs();
ScrolleParallax();
ScrolleServicesHover();
ScrolleCarousels();
ScrolleMenuHover();
ScrolleLightBox();
ScrolleAnimation();
ScrolleTwitter();
ScrolleSliders();
ScrolleScrollForAnchor();
ScrolleNavigation();
ScrolleTeamCarousel();
ScrolleGmap();

});


})(jQuery);


/* Read More */
$(function(){
var $el, $ps, $up, totalHeight;
$(".about-text .rm-button").click(function() {
	totalHeight = 0
	$el = $(this);
	$p  = $el.parent();
	$up = $p.parent();
	$ps = $up.find("p:not('.read-more')");
	// measure how tall inside should be by adding together heights of all inside paragraphs (except read-more paragraph)
	$ps.each(function() {
		totalHeight += $(this).outerHeight();
		// FAIL totalHeight += $(this).css("margin-bottom");
	});
	$up
	.css({
		// Set height to prevent instant jumpdown when max height is removed
		"height": $up.height(),
		"max-height": 9999
	})
	.animate({
		"height": totalHeight
	});
	// fade out read-more
	$p.fadeOut();
	// prevent jump-down
	return false;
});
});
/* Read More */