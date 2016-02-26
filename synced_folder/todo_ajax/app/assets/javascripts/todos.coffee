$ ->
  $('tr').each ->
    if $(this).text().indexOf('☑') != -1
      $(this).closest('tr').css('text-decoration', 'line-through')
    else
      $(this).closest('tr').css('text-decoration', 'none')

  $.datepicker.setDefaults dateFormat: 'yy-mm-dd'
  $('.best_in_place').best_in_place()

  $('#new_todo').bind 'ajax:complete', ->
    $('#todo_task').val('')

  $('table').on 'click', '.btn-delete', ->
    $(this).parents('tr').remove()

  $('table').on 'click', '.done_box', ->
    if $(this).text().indexOf('☑') != -1
      $(this).closest('tr').css('text-decoration', 'line-through')
    else
      $(this).closest('tr').css('text-decoration', 'none')

  #  Ajaxによるカテゴリ分類
   $('#mode input[type=radio]').change ->
     console.log($(this).val())
