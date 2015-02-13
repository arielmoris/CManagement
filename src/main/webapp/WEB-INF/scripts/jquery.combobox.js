﻿/*	 *	jQuery Combobox with autocomplete plugin *	www.frebsite.nl *	Copyright (c) 2009 Fred Heusschen *	Licensed under the MIT license. *	http://www.opensource.org/licenses/mit-license.php */(function($) {	$.fn.combobox = function(settings) {   		var opts = $.extend({}, $.fn.combobox.defaults, settings);   		   		if (!$('#combo_overlay').length) {			$('body').append('<div id="combobox_overlay"></div>');			$('#combobox_overlay').unbind('click').click($.fn.combobox.sluitSelect);		}				return this.each(function() {			var el = $(this);			var id = el.attr('id');			var ic = (id.length > 0)				? ' id="combobox_container_'+id+'"' 	: '';				id = (id.length > 0)				? ' id="'+id+'"' 						: '';			var na = (el.attr('name').length) 		? ' name="'+el.attr('name')+'"' 		: '';			var ti = (el.attr('tabindex').length)	? ' tabindex="'+el.attr('tabindex')+'"'	: '';					var cb  = '<input class="combobox_input" type="text" value="'+$(':selected', el).text()+''+ti+'" autocomplete="off" />';				cb += '<input class="combobox_hidden" type="hidden"'+na+''+id+' value="'+el.val()+'" />';						if (opts.buttonText.length > 0) {					cb += '<a href="#" class="combobox_button"><span>'+opts.buttonText+'</span></a>';			}				cb += '<ul class="combobox_summary">';							$('option', el).each(function() {				var t = $(this).html();				var c = ($(this).attr('class').length) ? ' class="'+$(this).attr('class')+'"' : '';				var v = $(this).attr('value');				if (!v.length) v = t;				cb += '<li'+c+'><a href="'+v+'">'+t+'</a></li>';			});							cb += '</ul>';								el.wrap('<div class="combobox_container"'+ic+'></div>');			var di = el.parent();					di.append(cb);				el.remove();							//	selectie openen via button			if (opts.showOnMouseOver) {				$(di).mouseover(function() {					$.fn.combobox.openSelectFromButton($(this), opts);				}).click(function() {					return false;				});			} else if (opts.buttonText.length > 0) {				$('a.combobox_button', di).click(function() {					$.fn.combobox.openSelectFromButton($(this), opts);					return false;				});			}						//	selectie sluiten na mouse-out			if (opts.hideOnMouseOut) {				$(di).mouseout(function() {					$.fn.combobox.sluitSelect();				});			}						//	selectie openen via autocomplete			$('input.combobox_input', di).keyup(function() {				$('input.combobox_hidden', di).val($(this).val());			});			if (opts.autoComplete) {				$('input.combobox_input', di).keyup(function() {					var ul = $(this).parent().find('ul');					var va = $(this).val().toLowerCase();					var ar = new Array();					if (va.length > 0) {						$('li', ul).each(function() {							var a = $(this).find('a')							if (a.html().toLowerCase().indexOf(va) != -1 ||								a.attr('href').toLowerCase().indexOf(va) != -1) {									$(this).show();									ar.push(a.attr('href'));							} else 	$(this).hide();						});					}					$.fn.combobox.sluitSelect();					if (ar.length > 0) $.fn.combobox.openSelect(ul, ar.length, opts);										opts.callbackShowOptions(ar);					return false;				});			}						//	gekozen selectie toepassen			$('ul.combobox_summary li a', di).click(function() {				var v = $(this).attr('href');				$('input.combobox_input', di).val($(this).html());				$('input.combobox_hidden', di).attr('value', v);				$.fn.combobox.sluitSelect();				opts.callbackSelectOption(v);				return false;			});			$.fn.combobox.sluitSelect();		});	};	$.fn.combobox.openSelectFromButton = function(btn, o) {		var ul = btn.parent().find('ul');				$('li', ul).show();		$.fn.combobox.sluitSelect();		$.fn.combobox.openSelect(ul, ul.children('li').size(), o);		var ar = new Array();		$('li a', ul).each(function() {			ar.push($(this).attr('href'));		});		o.callbackShowOptions(ar);	}	$.fn.combobox.openSelect = function(el, aa, o) {		el.show();		var nh = (aa > o.maxVisibleOptions) ? (o.maxVisibleOptions * $('li:visible', el).height())+'px' : '';		el.css('height', nh);		el.scrollTop(0);		$('#combobox_overlay').show();	}	$.fn.combobox.sluitSelect = function() {		$('ul.combobox_summary').hide();		$('#combobox_overlay').hide();	}	$.fn.combobox.defaults = {		showOnMouseOver:		false,		hideOnMouseOut:			false,		autoComplete:			true,		maxVisibleOptions:		1000000,		buttonText:				'&gt;',		callbackShowOptions:	function(arr) {},		callbackSelectOption:	function(arr) {}	};	})(jQuery);