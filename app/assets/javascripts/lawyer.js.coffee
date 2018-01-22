$ ->
  $('#filter_btn').click ->
    if $(this).attr('aria-expanded') == "true"
      this.innerHTML = '<span class="glyphicon glyphicon-chevron-down"></span>'
    else
      this.innerHTML = '<span class="glyphicon glyphicon-chevron-up"></span>'
      
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
