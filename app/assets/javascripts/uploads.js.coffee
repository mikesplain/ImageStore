# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ ->
  $(".container").bind "DOMSubtreeModified", (event) ->
    if $(".template-upload").length > 0
      $("#big-upload").fadeIn()
    else
      $('#big-upload').fadeOut()

  dropzone = $('#overlay');

  dropzone.on "dragenter", (event) ->
    popup('on')

  dropzone.on "dragleave", (event) ->
    popup('off')


  dropzone.on "drop", (event) ->
    popup('off')

popup = (x) ->
  if x == 'on'
    $('#pop-overlay').addClass('draging')
    $("#dragpop").fadeIn()
    $('button, a, .btn').css('position','inherit')
  else
    $('#pop-overlay').removeClass('draging')
    $("#dragpop").fadeOut()
    $('button, a, .btn').css('position','relative')
