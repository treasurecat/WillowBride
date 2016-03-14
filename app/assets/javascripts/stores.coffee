# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

ready = ->
	$('.wysihtml5').each (i, elem) ->
    $(elem).wysihtml5 'toolbar':
      'blockquote': false
      'html': false
      'font-styles': false
      'color': false
      'blockquote': false
      'lists': false
      'html': false
      'link': false
      'image': false
      'smallmodals': false
      'emphasis': false
    return
  return

$(document).ready(ready)
$(document).on('page:load', ready)
