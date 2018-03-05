$ ->
  #Patrón de todos los text_area
  errorMessage = 'Ingrese sólo mayúsculas, numeros, guiones y/o espacios.'
  $(this).find('textarea').on 'input change propertychange', ->
    pattern = $(this).attr('pattern')
    if typeof pattern != typeof undefined and pattern != false
      patternRegex = new RegExp('^' + pattern.replace(/^\^|\$$/g, '') + '$', 'g')
      hasError = !$(this).val().match(patternRegex)
      if typeof @setCustomValidity == 'function'
        @setCustomValidity if hasError then errorMessage else ''
      else
        $(this).toggleClass 'error', ! !hasError
        $(this).toggleClass 'ok', !hasError
        if hasError
          $(this).attr 'title', errorMessage
        else
          $(this).removeAttr 'title'
          
  #Valores iniciales
  initial_values = ->
    if $('#process_radicate').val() == "NO APLICA"
      $('#process_radicate').val("PENDIENTE")

  initial_values()


  #¿Tiene número de radicado correspondencia?
  correspondency_radicate_rule = ->
    if $('#correspondency_radicate').val() == "NO APLICA" || $('#correspondency_radicate').val() == "NO PRESENTA"
      $('#radicate').val('No')
      document.getElementById("correspondency_radicate").readOnly = true
      $("#correspondency_radicate").val("NO PRESENTA")
    else
      $('#radicate').val('Si')

  correspondency_radicate_rule()

  radicate_rule = ->
    v_option = document.getElementById("radicate").value
    if v_option == "Si"
      document.getElementById("correspondency_radicate").readOnly = false
    if v_option == "No"
      document.getElementById("correspondency_radicate").readOnly = true
      $("#correspondency_radicate").val("NO PRESENTA")

  $('#radicate').change ->
    radicate_rule()


  #Nombre despacho / tipo contraloría
  office_rule = ->
    v_option = document.getElementById('office').value
    if v_option == 'OTRO'
      $('#office_text').prop( "disabled", false )
      $('#office_text').show()
    else
      $('#office_text').prop( "disabled", true )
      $('#office_text').hide()

  $('#office').change ->
    office_rule()

  office_rule()


  #¿Hay impugnación?
  ###
  objection_date_and_objecter = ->
    objectionDate = $("#objection_date").val()
    objecter = $("#objecter").val()
    if objectionDate == "" and objecter == "NO APLICA"
      $('#objection').val('No')
      document.getElementById('objection_date').readOnly = true
      $("#objection_date").val('0-0-0')
      document.getElementById('objecter').readOnly = true
      $("#objecter").val('NO APLICA')
    else
      $('#objection').val('Si')

  objection_date_and_objecter()
  ###

  objection_rule = ->
    v_option = document.getElementById('objection').value
    if v_option == "No"
      document.getElementById('objection_date').readOnly = true
      document.getElementById('objecter').readOnly = true
      document.getElementById('date_imp').readOnly = true
      document.getElementById('date_notification_imp').readOnly = true
      $('#setence_type_second_company_id').prop 'disabled', true
    if v_option == "Si"
      document.getElementById('objection_date').readOnly = false
      document.getElementById('objecter').readOnly = false
      document.getElementById('date_imp').readOnly = false
      document.getElementById('date_notification_imp').readOnly = false
      $('#setence_type_second_company_id').prop 'disabled', false

  $('#objection').change ->
    objection_rule()

  $('#objection').ready ->
    objection_rule()

  ###
  #¿Hay desacato?
  desacate_prerule = ->
    val_one = $('#setence_type_second_company_id').val()
    val_two = $('#date_notification_desacate').val()
    val_three = $('#sentence_type_desacate').val()
    val_four = $('#date_notification_desition_desacate').val()
    val_fife = $('#date_answer_desacate').val()
    if val_one == "1" and val_two == "" and val_three == "1" and val_four == "" and val_fife == ""
      $('#desacate').val('No')
      $('#setence_type_second_company_id').prop( "disabled", true )
      $('#setence_type_second_company_id').val('PENDIENTE')
      $('#date_notification_desacate').prop( "disabled", true )
      $('#date_notification_desacate').val('')
      $('#sentence_type_desacate').prop( "disabled", true )
      $('#sentence_type_desacate').val('PENDIENTE')
      $('#date_notification_desition_desacate').prop( "disabled", true )
      $('#date_notification_desition_desacate').val('')
      $('#date_answer_desacate').prop( "disabled", true )
      $('#date_answer_desacate').val('')
    else
      $('#desacate').val('Si')

  desacate_prerule()
  ###

  desacate_rule = ->
    v_option = document.getElementById('desacate').value
    if v_option == "Si"
      $('#setence_type_second_company_id').prop( "disabled", false )
      document.getElementById('date_notification_desacate').readOnly = false
      $('#sentence_type_desacate').prop( "disabled", false )
      document.getElementById('date_notification_desition_desacate').readOnly = false
      document.getElementById('date_answer_desacate').readOnly = false
      $('#sentence_type_desacate').prop( "disabled", false )
    else
      $('#setence_type_second_company_id').prop( "disabled", true )
      $('#setence_type_second_company_id').val('PENDIENTE')
      $('#date_notification_desacate').prop( "disabled", true )
      $('#date_notification_desacate').val('')
      $('#sentence_type_desacate').prop( "disabled", true )
      $('#sentence_type_desacate').val('PENDIENTE')
      $('#date_notification_desition_desacate').prop( "disabled", true )
      $('#date_notification_desition_desacate').val('')
      $('#date_answer_desacate').prop( "disabled", true )
      $('#date_answer_desacate').val('')
      $('#sentence_type_desacate').prop( "disabled", true )


  $('#desacate').change ->
    desacate_rule()

  $('#desacate').ready ->
    desacate_rule()

  #Departamento donde cursa el caso
  $('#departament').change ->
    input_state = $(this)
    output_state = $('#cities')
    $.getJSON '/cities/' + $(this).val(), (data) ->
      output_state.empty()
      $.each data, (i) ->
        opt = '<option value="' + data[i].toUpperCase() + '">' + data[i].toUpperCase() + '</option>'
        output_state.append opt
