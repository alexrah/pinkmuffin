jQuery(document).ready(function($) {
	$('ul li:last-child').addClass('lastItem');
	$('ul li:first-child').addClass('firstItem');
	
/*ScrollToTop button*/
	$(function() {
		$(window).scroll(function() {
			if($(this).scrollTop() != 0) {
				$('.rt-block.totop').fadeIn();	
			} else {
				$('.rt-block.totop').fadeOut();
			}
		});
	});
	
/*Avoid input bg in Chrome*/
	if ($.browser.webkit) {
		$('input').attr('autocomplete', 'off');
	}
	
/*Zoom Icon. Portfolio page*/
	$('#port a.modal').hover(function(){
		$(this).find('span.zoom-icon').stop(true, true).animate({top: '50%'}, 200);
	},function(){
		$(this).find('span.zoom-icon').stop(true, true).animate({top: '-50%'}, 100);
	})
	$('div.smile a').each(function(){
		$(this).append('<img src="" alt="">')
		var src=$(this).find('>img:first').attr('src').replace('.png','-hover.png')
		$(this).find('>img:last').attr({src:src})
	})
/*Pagination Active Button*/
	$('.k2Pagination ul li:not([class])').addClass('num');
	$('div.pagination ul li:not([class])').addClass('num');	
	$('div.itemCommentsPagination ul li:not([class])').addClass('num');	
});