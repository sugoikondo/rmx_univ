$ ->
  $.datepicker.setDefaults dateFormat: 'yy-mm-dd'
  $('.best_in_place').best_in_place()

  $('#new_todo').bind 'ajax:complete', ->
    $('#todo_task').val('')

  $('table').on 'click', '.btn-delete', ->
    $(this).parents('tr').remove()
