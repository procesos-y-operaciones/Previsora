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


  #Número de identificación del caso (Bizagi, Acces y PA)
  #Número de identificación del caso SISE
  case_id_bap_and_sise_rule = ->
    bapId = $('#case_id_bap').val()
    sizeId = $('#case_id_sise').val()
    if bapId == "NO APLICA" and sizeId == "NO APLICA"
      $('#case_id_bap').val("PENDIENTE")
      $('#case_id_sise').val("PENDIENTE")
      document.getElementById("case_id_bap").required = true
      document.getElementById("case_id_sise").required = false
    if bapId != "" and bapId != "PENDIENTE"
      document.getElementById("case_id_bap").required = true
      document.getElementById("case_id_sise").required = false
    else
      if sizeId != "" and sizeId != "PENDIENTE"
        document.getElementById("case_id_sise").required = true
        document.getElementById("case_id_bap").required = false
      else
        document.getElementById("case_id_bap").required = true
        document.getElementById("case_id_sise").required = false

  case_id_bap_and_sise_rule()

  $('#case_id_bap').change ->
    case_id_bap_and_sise_rule()

  $('#case_id_sise').change ->
    case_id_bap_and_sise_rule()


  #Tipo de reaseguro
  reinsurance_type_rule = ->
    v_option = document.getElementById("reinsurance_type").value
    if v_option == "FACULTATIVO" || v_option == "CUOTA PARTE"
      document.getElementById("reinsurance_value").readOnly = false
    else
      document.getElementById("reinsurance_value").readOnly = true
      $("#reinsurance_value").val(0)

  $("#reinsurance_type").change ->
    reinsurance_type_rule()

  reinsurance_type_rule()


  #Tipo de coaseguro
  coensurance_type_rule = ->
    v_option = document.getElementById("coensurance_type").value
    if v_option == "CEDIDO" || v_option == "ACEPTADO"
      document.getElementById("coensurance_value").readOnly = false
    else
      document.getElementById("coensurance_value").readOnly = true
      $("#coensurance_value").val(0)

  $('#coensurance_type').change ->
    coensurance_type_rule()

  coensurance_type_rule()


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

  #Tipo moneda
  money_type_rule = ->
    v_option = document.getElementById("moneyType").value
    if v_option == "PESOS"
      document.getElementById("dolarValueCents").readOnly = true
      $("#dolarValueCents").val(0)
    else
      document.getElementById("dolarValueCents").readOnly = false

  $('#moneyType').change ->
    money_type_rule()

  money_type_rule()

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
      $('#lastPerformance').val("PENDIENTE")
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

  #¿Ingresa al comité?
  join_committee_rule = ->
    v_option = document.getElementById("join_committee").value
    if v_option == "SI"
      document.getElementById("committee_date").readOnly = false
      $('#committee').prop( "disabled", false )
      $('#committee_hid').prop( "disabled", true )
    else
      document.getElementById("committee_date").readOnly = true
      $('#committee_date').val("0-0-0")
      $('#committee').prop( "disabled", true )
      $('#committee_hid').prop( "disabled", false )

  $('#join_committee').change ->
    join_committee_rule()

  join_committee_rule()

  #Date Committee Rule
  committee_date_rule = ->
    v_option = document.getElementById("committee_date").value
    a = new Date(v_option)
    if a.getTime() < (new Date).getTime()
      $('#committee').val("PENDIENTE")

  $('#committee_date').change ->
    committee_date_rule()

  committee_date_rule()

  #Decisión del comité
  committee_rule = ->
    v_option = document.getElementById("committee").value
    if v_option == "CONCILIA"
      document.getElementById("reconcilie_value").readOnly = false
      document.getElementById("auth_value").readOnly = false
      document.getElementById("reason_conc").readOnly = true
      $('#reason_conc').val("PENDIENTE")
      document.getElementById("reason_inv").readOnly = true
      $('#reason_inv').val("PENDIENTE")
    else if v_option == "NO CONCILIA"
      document.getElementById("reconcilie_value").readOnly = true
      $('#reconcilie_value').val("0")
      document.getElementById("auth_value").readOnly = true
      $('#auth_value').val("0")
      document.getElementById("reason_conc").readOnly = false
      document.getElementById("reason_inv").readOnly = true
      $('#reason_inv').val("PENDIENTE")
    else if v_option == "INVIABLE"
      document.getElementById("reconcilie_value").readOnly = true
      $('#reconcilie_value').val("0")
      document.getElementById("auth_value").readOnly = true
      $('#auth_value').val("0")
      document.getElementById("reason_conc").readOnly = true
      $('#reason_conc').val("PENDIENTE")
      document.getElementById("reason_inv").readOnly = false
    else
      document.getElementById("reconcilie_value").readOnly = true
      $('#reconcilie_value').val("0")
      document.getElementById("auth_value").readOnly = true
      $('#auth_value').val("0")
      document.getElementById("reason_conc").readOnly = true
      $('#reason_conc').val("PENDIENTE")
      document.getElementById("reason_inv").readOnly = true
      $('#reason_inv').val("PENDIENTE")

  $('#committee').change ->
    committee_rule()

  committee_rule()

  process_class_rule()
  current_stage_rule()

  #Valor asegurado y Valor contingencia
  pretension_value_rule = ->
    detValCents = document.getElementById('detrimetValueCents').value
    detValCents = detValCents.split("'").join("")
    detValCents = detValCents.split(",").join("")
    ensValCents = document.getElementById('ensurance_value_cents').value
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

  $('#ensurance_value_cents').change ->
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
