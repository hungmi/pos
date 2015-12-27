# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
$ ->
  worker = ->
    $.ajax
      url: '/orders.js',
      success: (data) ->
        console.log '123'
        setTimeout(worker, 1000)
  worker()