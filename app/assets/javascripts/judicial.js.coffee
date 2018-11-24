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
    if $('#case_id_ekogui').val() == "NO APLICA"
      $('#case_id_ekogui').val("PENDIENTE")
    if $('#process_radicate').val() == "NO APLICA"
      $('#process_radicate').val("PENDIENTE")
    if $('#contingency_reason').val() == "NO APLICA"
      $('#contingency_reason').val("PENDIENTE")
    if $('#contingency_resume').val() == "NO APLICA"
      $('#contingency_resume').val("PENDIENTE")
    if $('#facts').val() == "NO APLICA"
      $('#facts').val("PENDIENTE")
    if $('#active_part').val() == "NO APLICA"
      $('#active_part').val("PENDIENTE")
    if $('#passive_part').val() == "NO APLICA"
      $('#passive_part').val("PENDIENTE")
    if $('#attorny').val() == "NO APLICA"
      $('#attorny').val("PENDIENTE")
    if $('#more_protections').val() == "NO APLICA"
      $('#more_protections').val("NO PRESENTA")
    if $('#coactive_radicate').val() == "NO APLICA"
      $('#coactive_radicate').val("PENDIENTE")
    if $('#document_active_part').val() == "NO APLICA"
      $('#document_active_part').val("PENDIENTE")
    if $('#document_passive_part').val() == "NO APLICA"
      $('#document_passive_part').val("PENDIENTE")
    if $('#departament').val() == "00"
      $('#departament').val("")
    if $('#cities').val() == "000"
      $('#cities').val("")
    if $('#office').val() == "NO APLICA"
      $('#office').val("")

  initial_values()

  #Summ reserve_cents
  reserve_cents_sum = ->
    sum = 0
    $.map $(".reserve_cents"), ( i ) ->
      sum += Number(i.value.split("'").join("").split(",").join(""))
    $('#provision_cents').val( sum )

  #Summ reserved_fees_cents
  reserved_fees_cents_sum = ->
    sum = 0
    $.map $(".reserved_fees_cents"), ( i ) ->
      sum += Number(i.value.split("'").join("").split(",").join(""))
    $('#reserved_fees_cents').val( sum )

  #Summ ensurance_value_cents
  ensurance_value_cents_sum = ->
    sum = 0
    $.map $(".ensurance_value"), ( i ) ->
      sum += Number(i.value.split("'").join("").split(",").join(""))
    $('#ensurance_value_cents').val( sum )

  #Initialize functions for each sinister
  $.map $('#sinisters_container')[0].childNodes, ( i ) ->
    if i.className == "nested-fields"
      num = i.childNodes[5].childNodes[1]
      eje = i.childNodes[9].childNodes[1]
      sp = i.childNodes[13].childNodes[1]
      ra = i.childNodes[17].childNodes[1]
      sg = i.childNodes[21].childNodes[1]
      ri = i.childNodes[25].childNodes[1]
      rh = i.childNodes[29].childNodes[1]

      aux = ->
        sg.value = num.value + "-" + eje.value + "-" + sp.value + "-" + ra.value

      num.onchange = aux
      eje.onchange = aux
      sp.onchange = aux
      ra.onchange = aux
      ri.onchange = reserve_cents_sum
      rh.onchange = reserved_fees_cents_sum

  #Siniestros
  $('#sinisters_container').on('cocoon:after-insert', (e, i) ->
    num = i[0].childNodes[5].childNodes[1]
    eje = i[0].childNodes[9].childNodes[1]
    sp = i[0].childNodes[13].childNodes[1]
    ra = i[0].childNodes[17].childNodes[1]
    sg = i[0].childNodes[21].childNodes[1]
    ri = i[0].childNodes[25].childNodes[1]
    rh = i[0].childNodes[29].childNodes[1]

    aux = ->
      sg.value = num.value + "-" + eje.value + "-" + sp.value + "-" + ra.value

    num.onchange = aux
    eje.onchange = aux
    sp.onchange = aux
    ra.onchange = aux
    ri.onchange = reserve_cents_sum
    rh.onchange = reserved_fees_cents_sum
  )
  $('#sinisters_container').on('cocoon:after-remove', (e, i) ->
    $('#provision_cents').val( $('#provision_cents').val() -  i[0].childNodes[25].childNodes[1].value.split("'").join("").split(",").join("") )
    $('#reserved_fees_cents').val( $('#reserved_fees_cents').val() - i[0].childNodes[29].childNodes[1].value.split("'").join("").split(",").join("") )
  )

  #Initialize functions for each policy
  $.map $('#policies_container')[0].childNodes, ( i ) ->
    if i.className == "nested-fields"
      va = i.childNodes[13].childNodes[1]
      va.onchange = ensurance_value_cents_sum

  #Polizas
  $('#policies_container').on('cocoon:after-insert', (e, i) ->
    va = i[0].childNodes[13].childNodes[1]
    va.onchange = ensurance_value_cents_sum
  )
  $('#policies_container').on('cocoon:after-remove', (e, i) ->
    ensurance_value_cents_sum()
  )

  #Clase de proceso
  hide_all_subprocess = ->
    $('#subprocessAdminDiv').hide()
    $('#subprocessAdmin').prop( "disabled", true )
    $('#subprocessAdmin').hide()
    $('#subprocessCivil').prop( "disabled", true )
    $('#subprocessCivil').hide()
    $('#subprocessPenal').prop( "disabled", true )
    $('#subprocessPenal').hide()
    $('#subprocessLaboral').prop( "disabled", true )
    $('#subprocessLaboral').hide()
    $('#subprocessArbitral').prop( "disabled", true )
    $('#subprocessArbitral').hide()

  hide_all_stages = ->
    $('#currentStageDiv').hide()
    $('#judicial_admin').hide()
    $('#judicial_penal').prop( 'disabled', true )
    $('#judicial_admin').prop( 'disabled', true )
    $('#judicial_penal').hide()
    $('#judicial_laboral').prop( 'disabled', true )
    $('#judicial_laboral').hide()
    $('#judicial_arbitral').prop( 'disabled', true )
    $('#judicial_arbitral').hide()
    $('#judicial_verbal').prop( 'disabled', true )
    $('#judicial_verbal').hide()
    $('#judicial_verbal_sum').prop( 'disabled', true )
    $('#judicial_verbal_sum').hide()
    $('#judicial_monitorio').prop( 'disabled', true )
    $('#judicial_monitorio').hide()
    $('#judicial_ejecutivo').prop( 'disabled', true )
    $('#judicial_ejecutivo').hide()
    $('#judicial_declarativos').prop( 'disabled', true )
    $('#judicial_declarativos').hide()
    $('#judicial_sucesion').prop( 'disabled', true )
    $('#judicial_sucesion').hide()
    $('#judicial_liquidacion').prop( 'disabled', true )
    $('#judicial_liquidacion').hide()
    $('#judicial_insolvencia').prop( 'disabled', true )
    $('#judicial_insolvencia').hide()
    $('#judicial_voluntaria').prop( 'disabled', true )
    $('#judicial_voluntaria').hide()
    $('#judicial_ordinario').prop( 'disabled', true )
    $('#judicial_ordinario').hide()
    $('#judicial_divisorio').prop( 'disabled', true )
    $('#judicial_divisorio').hide()

  process_class_rule = ->
    hide_all_subprocess()
    v_option = document.getElementById("processClass").value
    switch v_option
      when "JURISDICCION CONTENCIOSO ADMINISTRATIVO"
        $('#subprocessAdminDiv').show()
        $('#subprocessAdmin').prop( "disabled", false )
        $('#subprocessAdmin').show()
      when "JURISDICCION CIVIL"
        $('#subprocessAdminDiv').show()
        $('#subprocessCivil').prop( "disabled", false )
        $('#subprocessCivil').show()
      when "JURISDICCION PENAL"
        $('#subprocessAdminDiv').show()
        $('#subprocessPenal').prop( "disabled", false )
        $('#subprocessPenal').show()
      when "JURISDICCION LABORAL"
        $('#subprocessAdminDiv').show()
        $('#subprocessLaboral').prop( "disabled", false )
        $('#subprocessLaboral').show()
      when "PROCESO ARBITRAL"
        $('#subprocessAdminDiv').show()
        $('#subprocessArbitral').prop( "disabled", false )
        $('#subprocessArbitral').show()

  current_stage_rule = ->
    hide_all_stages()
    v_option = document.getElementById("processClass").value
    switch v_option
      when "JURISDICCION CONTENCIOSO ADMINISTRATIVO"
        $('#currentStageDiv').show()
        $('#judicial_admin').prop( 'disabled', false )
        $('#judicial_admin').show()
      when "JURISDICCION PENAL"
        $('#currentStageDiv').show()
        $('#judicial_penal').prop( "disabled", false )
        $('#judicial_penal').show()
      when "JURISDICCION LABORAL"
        $('#currentStageDiv').show()
        $('#judicial_laboral').show()
        $('#judicial_laboral').prop( "disabled", false )
      when "PROCESO ARBITRAL"
        $('#currentStageDiv').show()
        $('#judicial_arbitral').prop( "disabled", false )
        $('#judicial_arbitral').show()
      when "JURISDICCION CIVIL"
        subprocess_civil_rule()

  $('#processClass').change ->
    process_class_rule()
    current_stage_rule()

  #Subclase de proceso -> jurisdicción civil
  subprocess_civil_rule = ->
    hide_all_stages()
    v_option = document.getElementById("subprocessCivil").value
    switch v_option
      when "NULIDAD DE LAS CARTAS DE NATURALEZA Y DE LAS RESOLUCIONES DE AUTORIZACION DE INSCRIPCION"
        $('#currentStageDiv').show()
        $('#judicial_verbal').prop( "disabled", false )
        $('#judicial_verbal').show()
      when "CONTROL POR VIA DE EXCEPCION"
        $('#currentStageDiv').show()
        $('#judicial_verbal_sum').prop( "disabled", false )
        $('#judicial_verbal_sum').show()
      when "PROCESO VERBAL"
        $('#currentStageDiv').show()
        $('#judicial_declarativos').prop( "disabled", false )
        $('#judicial_declarativos').show()
      when "PROCESO DE LIQUIDACION DE SOCIEDADES CONYUGALES O PATRIMONIALES POR CAUSA DISTINTA DE LA MUERTE DE LOS CONYUGES O COMPANEROS PERMANENTES"
        $('#currentStageDiv').show()
        $('#judicial_declarativos').prop( "disabled", false )
        $('#judicial_declarativos').show()
      when "PROCESO VERBAL SUMARIO"
        $('#currentStageDiv').show()
        $('#judicial_ejecutivo').prop( "disabled", false )
        $('#judicial_ejecutivo').show()
      when "PROCESOS DECLARATIVOS ESPECIALES"
        $('#currentStageDiv').show()
        $('#judicial_sucesion').show()
        $('#judicial_sucesion').prop( "disabled", false )
      when "PROCESO EJECUTIVO"
        $('#currentStageDiv').show()
        $('#judicial_liquidacion').prop( "disabled", false )
        $('#judicial_liquidacion').show()
      when "PROCESO DE SUCESION"
        $('#currentStageDiv').show()
        $('#judicial_liquidacion').prop( "disabled", false )
        $('#judicial_liquidacion').show()
      when "PROCESO DE LIQUIDACION DE SOCIEDADES CONYUGALES O PATRIMONIALES POR CAUSA DISTINTA DE LA MUERTE DE LOS CONYUGES O COMPAÑEROS PERMANENTES"
        $('#currentStageDiv').show()
        $('#judicial_insolvencia').show()
        $('#judicial_insolvencia').prop( "disabled", false )
      when "DISOLUCION, NULIDAD Y LIQUIDACION DE SOCIEDADES"
        $('#currentStageDiv').show()
        $('#judicial_ordinario').prop( "disabled", false )
        $('#judicial_ordinario').show()
      when "INSOLVENCIA DE LA PERSONA NATURAL NO COMERCIANTE"
        $('#currentStageDiv').show()
        $('#judicial_divisorio').prop( "disabled", false )
        $('#judicial_divisorio').show()
      when "PROCESO ORDINARIO"
        $('#currentStageDiv').show()
        $('#judicial_voluntaria').prop( "disabled", false )
        $('#judicial_voluntaria').show()

  $('#subprocessCivil').change ->
    subprocess_civil_rule()

  #¿Tiene número de radicado correspondencia?
  radicate_rule = ->
    v_option = $("#radicate").val()
    if v_option == "true"
      document.getElementById("correspondency_radicate").readOnly = false
    if v_option == "false"
      document.getElementById("correspondency_radicate").readOnly = true
      $("#correspondency_radicate").val("NO PRESENTA")

  $('#radicate').change ->
    radicate_rule()

  radicate_rule()

  #Fuente de litigio
  litigation_source_rule = ->
    v_option = document.getElementById("litigationSource").value
    if v_option == "SINIESTRO"
      $('#protection').prop( "disabled", false )
      document.getElementById("more_protections").readOnly = false
      $('#siniesters_butt').show()
      $('#sinisters_label').show()
      $('#policies_butt').show()
      $('#policies_label').show()
      $('#provision_cents').prop( 'readOnly', true )
      $('#reserved_fees_cents').prop( 'readOnly', true )
      $('#ensurance_value_cents').prop( 'readOnly', true )
    else
      $('#protection').prop( "disabled", true )
      $('#protection').val("")
      document.getElementById("more_protections").readOnly = true
      $('#siniesters_butt').hide()
      $('#sinisters_label').hide()
      $('#policies_butt').hide()
      $('#policies_label').hide()
      $('#provision_cents').prop( 'readOnly', false )
      $('#reserved_fees_cents').prop( 'readOnly', false )
      $('#ensurance_value_cents').prop( 'readOnly', false )

  $('#litigationSource').change ->
    litigation_source_rule()

  litigation_source_rule()

  #Protection Rule
  protection_rule = ->
    v_option = $("#protection option:selected")
    if v_option.size() > 0
      if v_option[v_option.size() - 1].innerHTML == "OTRO"
        document.getElementById("more_protections").readOnly = false
      else
        document.getElementById("more_protections").readOnly = true
    else
      document.getElementById("more_protections").readOnly = true

  $('#protection').change ->
    protection_rule()

  protection_rule()

  #Estado del caso
  case_state_rule = ->
    v_option = document.getElementById("caseState").value
    if v_option == "TERMINADO"
      $('#caseTermination').attr( "required", true )
      $('#caseTermination').prop( "disabled", false )
      $('#caseTermination_hid').prop( "disabled", true )
      $('#lastPerformance').attr( "required", true )
      $('#lastPerformance').prop( "disabled", false )
      $('#lastPerformance_hid').prop( "disabled", true )
      $('#reservedReleased').prop( "disabled", false )
      $('#reservedReleased_hid').prop( "disabled", true )
      $('#recovery').prop( "disabled", false )
      $('#desition_date').prop( "disabled", false )
      $('#desition_date').attr( "required", true )
      $('#cost').attr( "required", true )
      $('#cost').prop( "disabled", false )
      $('#cost_value').prop( "disabled", false )
    else
      $('#caseTermination').attr( "required", false )
      $('#caseTermination').val("PENDIENTE")
      $('#caseTermination').prop( "disabled", true )
      $('#caseTermination_hid').prop( "disabled", false )
      $('#lastPerformance').attr( "required", false )
      $('#lastPerformance').val("PENDIENTE")
      $('#lastPerformance').prop( "disabled", true )
      $('#lastPerformance_hid').prop( "disabled", false )
      $('#lastPerformanceDate').val("0-0-0")
      $('#reservedReleased').val("PENDIENTE")
      $('#reservedReleased').prop( "disabled", true )
      $('#reservedReleased_hid').prop( "disabled", false )
      $('#recovery').prop( "disabled", true )
      $('#desition_date').prop( "disabled", true )
      $('#desition_date').attr( "required", false )
      $('#cost').attr( "required", false )
      $('#cost').prop( "disabled", true )
      $('#cost').val( "false" )
      $('#cost_value').prop( "disabled", true )

  $('#caseState').change ->
    case_state_rule()

  case_state_rule()

  process_class_rule()
  current_stage_rule()

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

  #Offices Rule
  offices_rule = ->
    param1 = $('#departament').find('option:selected').text()
    param2 = $('#cities').find('option:selected').text()
    param3 = $('#office_type').val()
    param4 = $('#office_number').val()

    $.getJSON '/offices?name=' + param1 + "," + param2 + "," + param3 + "," + param4, (data) ->
      $('#office').empty()
      $('#office').append('<option value="">SELECCIONE</option>')
      $.each data, (i) ->
        opt = '<option value="' + data[i].name + '">' + data[i].name + '</option>'
        $('#office').append(opt)

  $('#departament').change ->
    departament_rule()
    offices_rule()

  $('#cities').change ->
    offices_rule()

  $('#office_type').change ->
    offices_rule()

  $('#office_number').change ->
    offices_rule()

  departament_rule()
