$('.todos').append('<%= j render @todo %>')
$('form#new_todo')[0].reset()
$('#todo_name').focus()