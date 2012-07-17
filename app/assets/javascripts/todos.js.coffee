# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  $("form#new_todo").submit ->
    $.pjax
      container: '[data-todo-pjax-container]'
      url: this.action
      type: this.method
      data: $(this).serializeArray()
      push: false
      scrollTo: false
    false

  $('[data-todo-pjax-container]').on('pjax:success', -> 
    $('.todos').append($(this).html())
    $('form#new_todo')[0].reset()
    $('#todo_name').focus()
  )
