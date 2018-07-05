$ ->
  $('.clickable-row').click ->
    window.location = $(this).data('href')

  #Departamento donde cursa el caso
  departament_rule = ->
    value = $('#cities').val()
    $.getJSON '/cities/' + $('#departament').val(), (data) ->
      $('#cities').empty()
      $('#cities').append '<option value="">SELECCIONE</option>'
      $.each data, (i) ->
        if value == data[i].code
          opt = '<option selected="selected" value="' + data[i].code + '">' + data[i].name + '</option>'
        else
          opt = '<option value="' + data[i].code + '">' + data[i].name + '</option>'
        $('#cities').append(opt)

  $('#departament').change ->
    departament_rule()

  departament_rule()

  $('#all').click ->
    if $('#all').is(':checked')
      inputs = document.getElementsByTagName("input")
      $(inputs).each ->
        if $(this).attr('type') == 'checkbox' && $(this).attr('id') != 'all'
          $(this).prop('checked', true);
    else
      inputs = document.getElementsByTagName("input")
      $(inputs).each ->
        if $(this).attr('type') == 'checkbox' && $(this).attr('id') != 'all'
          $(this).prop('checked', false);

  $('#filters').on 'shown.bs.collapse', ->
    $('#collapseButton').removeClass('fa fa-angle-double-down').addClass('fa fa-angle-double-up')

  $('#filters').on 'hidden.bs.collapse', ->
    $('#collapseButton').removeClass('fa fa-angle-double-up').addClass('fa fa-angle-double-down')
