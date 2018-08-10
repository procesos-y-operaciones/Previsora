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
    if $('#case_id_bap').val() == "NO APLICA"
      $('#case_id_bap').val("PENDIENTE")
    if $('#case_id_ekogui').val() == "NO APLICA"
      $('#case_id_ekogui').val("PENDIENTE")
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
    if $('#office_text').val() == "NO APLICA"
      $('#office_text').val("PENDIENTE")
    if $('#process_radicate').val() == "NO APLICA"
      $('#process_radicate').val("")
    if $('#policies').val() == "NO APLICA"
      $('#policies').val("PENDIENTE")
    if $('#reason_conc').val() == "NO APLICA"
      $('#reason_conc').val("PENDIENTE")
    if $('#reason_inv').val() == "NO APLICA"
      $('#reason_inv').val("PENDIENTE")
    if $('#cities').val() == "000"
      $('#cities').val("")
    if $('#state_val').val() == "REGISTRO MIGRADO"
      $('#state_val').val("REGISTRO MIGRADO ACTUALIZADO")
    if $('#state_val').val() == "REGISTRO NUEVO"
      $('#state_val').val("REGISTRO NUEVO ACTUALIZADO")

  initial_values()

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

  #Fuente de litigio
  litigation_source_rule = ->
    v_option = document.getElementById("litigationSource").value
    if v_option == "SINIESTRO"
      document.getElementById("policyCents").readOnly = false
      $('#protection').prop( "disabled", false )
      document.getElementById("more_protections").readOnly = false
      $('#branch_policy').prop( "disabled", false )
      $('#branch_policy_hid').prop( "disabled", true )
      $('#branch_commercial').prop( "disabled", false )
      $('#branch_commercial_hid').prop( "disabled", true )
      $('#more_policies').prop( "disabled", false )
    else
      document.getElementById("policyCents").readOnly = true
      $('#policyCents').val("0")
      $('#protection').prop( "disabled", true )
      $('#protection').val("")
      document.getElementById("more_protections").readOnly = true
      $('#exercise').val("0")
      $('#branch_policy').prop( "disabled", true )
      $('#branch_policy_hid').prop( "disabled", false )
      $('#branch_commercial').prop( "disabled", true )
      $('#branch_commercial_hid').prop( "disabled", false )
      $('#more_policies').prop( "disabled", true )

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

  #¿Tiene más pólizas?
  more_policies_rule = ->
    v_option = document.getElementById("more_policies").value
    if v_option == "true"
      document.getElementById("policies").readOnly = false
    if v_option == "false"
      document.getElementById("policies").readOnly = true
      $("#policies").val("NO PRESENTA")

  $('#more_policies').change ->
    more_policies_rule()

  more_policies_rule()


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
      document.getElementById("lastPerformanceDate").readOnly = false
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
      $('#lastPerformance').val("")
      $('#lastPerformance').prop( "disabled", true )
      $('#lastPerformance_hid').prop( "disabled", false )
      document.getElementById("lastPerformanceDate").readOnly = true
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

  #Terminación del caso
  case_termination_rule = ->
    v_option = document.getElementById("caseTermination").value
    if v_option == "TERMINADO CON PAGO: EN CONTRA"
      document.getElementById("fail_value").readOnly = false
      $('#fail_value').prop('required', true)
      document.getElementById("fail_previ").readOnly = false
      $('#fail_previ').prop('required', true)
    else
      document.getElementById("fail_value").readOnly = true
      $('#fail_value').prop('required', false)
      document.getElementById("fail_previ").readOnly = true
      $('#fail_previ').prop('required', false)

  $('#caseTermination').change ->
    case_termination_rule()

  case_termination_rule()

  #¿Tiene costas a favor?
  cost_rule = ->
    v_option = document.getElementById('cost').value
    if v_option == "true"
      document.getElementById("cost_value").readOnly = false
    else
      document.getElementById("cost_value").readOnly = true

  $('#cost').change ->
    cost_rule()

  cost_rule()

  #¿Tiene número de radicado de coactivo?
  coactive_rule = ->
    v_option = document.getElementById("coactive").value
    if v_option == "true"
      document.getElementById("coactive_radicate").readOnly = false
      document.getElementById("coactive_value_cents").readOnly = false
    if v_option == "false"
      document.getElementById("coactive_radicate").readOnly = true
      $("#coactive_radicate").val("NO PRESENTA")
      document.getElementById("coactive_value_cents").readOnly = true
      $("#coactive_value_cents").val("0")

  $('#coactive').change ->
    coactive_rule()

  coactive_rule()

  process_class_rule()
  current_stage_rule()

  #Valor asegurado y Valor contingencia
  pretension_value_rule = ->
    detValCents = document.getElementById('detrimetValueCents').value
    detValCents = detValCents.split("'").join("")
    detValCents = detValCents.split(",").join("")
    ensValCents = document.getElementById('ensuranceValueCents').value
    ensValCents = ensValCents.split("'").join("")
    ensValCents = ensValCents.split(",").join("")
    if detValCents != 0 && ensValCents != 0
      if parseInt(detValCents) < parseInt(ensValCents)
        $('#contingencyValueCents').val(detValCents)
      else
        $('#contingencyValueCents').val(ensValCents)
    else
      $('#contingencyValueCents').val( 0 )

  $('#detrimetValueCents').change ->
    pretension_value_rule()

  $('#ensuranceValueCents').change ->
    pretension_value_rule()

  #Valor conciliado no mayor a valor comite
  reconcilie_value_rule = ->
    ensuranceValue = $('#reconcilie_value').val()
    ensuranceValue = ensuranceValue.split("'").join("")
    ensuranceValue = ensuranceValue.split(",").join("")
    authValue = $('#auth_value').val()
    authValue = authValue.split("'").join("")
    authValue = authValue.split(",").join("")
    if(ensuranceValue > authValue)
      $('#reconcilie_value').val(authValue)

  $('#reconcilie_value').change ->
    reconcilie_value_rule()

  reconcilie_value_rule()

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
    param3 = $('#office_type').find('option:selected').text()
    param4 = $('#office_number').val()

    if param3 == "SELECCIONE"
      param3 = ""

    console.log ('/offices?name=' + param1 + "," + param2 + "," + param3 + "," + param4)
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

  $('#office_number').change ->
    offices_rule()

  departament_rule()
