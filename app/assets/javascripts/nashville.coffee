# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
	$('html').removeAttr( 'class' )
	$.mmenu.glbl = false

	$('#nashville-menu').mmenu { onClick: close: true }, {}
	return

$(document).ready(ready)
$(document).on('page:load', ready)