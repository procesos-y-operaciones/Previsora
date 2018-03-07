$ ->
  $('.clickable-row').click ->
    window.location = $(this).data('href')

  $('#departament').change ->
    input_state = $(this)
    output_state = $('#cities')
    $.getJSON '/cities/' + $(this).val(), (data) ->
      output_state.empty()
      output_state.append '<option value="" selected="selected">SELECCIONE</option>'
      $.each data, (i) ->
        opt = '<option value="' + data[i].toUpperCase() + '">' + data[i].toUpperCase() + '</option>'
        output_state.append opt

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
