# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $('form#new_todo').on('ajax:success', (e, data, status, xhr) ->
    $('.todos').append(data)
    $(this)[0].reset()
    $('#todo_name').focus()
  )
