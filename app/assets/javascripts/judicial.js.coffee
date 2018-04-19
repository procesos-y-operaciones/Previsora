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
  numSiniestro = ""
  num = numSiniestro.concat(document.getElementById("number").value)
  exer = numSiniestro.concat(document.getElementById("exercise").value)
  poly = numSiniestro.concat(document.getElementById("branch_policy").value)
  comm = numSiniestro.concat(document.getElementById("branch_commercial").value)
  litigation_source_rule = ->
    v_option = document.getElementById("litigationSource").value
    if v_option == "SINIESTRO"
      document.getElementById("policyCents").readOnly = false
      $('#protection').prop( "disabled", false )
      document.getElementById("number").readOnly = false
      document.getElementById("exercise").readOnly = false
      document.getElementById("more_protections").readOnly = false
      $('#branch_policy').prop( "disabled", false )
      $('#branch_policy_hid').prop( "disabled", true )
      $('#branch_commercial').prop( "disabled", false )
      $('#branch_commercial_hid').prop( "disabled", true )
      $('#more_policies').prop( "disabled", false )
      $("#sinister").val(num+"-"+exer+"-"+poly+"-"+comm)
    else
      document.getElementById("policyCents").readOnly = true
      $('#policyCents').val("0")
      $('#protection').prop( "disabled", true )
      $('#protection').val("")
      document.getElementById("number").readOnly = true
      $('#number').val("0")
      document.getElementById("exercise").readOnly = true
      document.getElementById("more_protections").readOnly = true
      $('#exercise').val("0")
      $('#branch_policy').prop( "disabled", true )
      $('#branch_policy_hid').prop( "disabled", false )
      $('#branch_commercial').prop( "disabled", true )
      $('#branch_commercial_hid').prop( "disabled", false )
      $('#more_policies').prop( "disabled", true )
      $("#sinister").val("NO PRESENTA")

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

  $("#number").change ->
    num = numSiniestro.concat(document.getElementById("number").value)
    $("#sinister").val(num+"-"+exer+"-"+poly+"-"+comm)

  $('#exercise').change ->
    exer = numSiniestro.concat(document.getElementById("exercise").value)
    $("#sinister").val(num+"-"+exer+"-"+poly+"-"+comm)

  $('#branch_policy').change ->
    poly = numSiniestro.concat(document.getElementById("branch_policy").value)
    $("#sinister").val(num+"-"+exer+"-"+poly+"-"+comm)

  $('#branch_commercial').change ->
    comm = numSiniestro.concat(document.getElementById("branch_commercial").value)
    $("#sinister").val(num+"-"+exer+"-"+poly+"-"+comm)


  #¿Tiene más pólizas?
  policies_and_sinisters_rule = ->
    polici = $('#policies').val()
    sinister = $('#sinisters').val()
    if (polici == "NO APLICA" && sinister == "NO APLICA") || (polici == "PENDIENTE" && sinister == "PENDIENTE")
      $('#more_policies').val('No')
      document.getElementById("policies").readOnly = true
      document.getElementById("sinisters").readOnly = true
      $("#policies").val("PENDIENTE")
      $("#sinisters").val("PENDIENTE")
    else
      $('#more_policies').val('Si')

  policies_and_sinisters_rule()

  more_policies_rule = ->
    v_option = document.getElementById("more_policies").value
    if v_option == "Si"
      document.getElementById("policies").readOnly = false
      document.getElementById("sinisters").readOnly = false
    if v_option == "No"
      document.getElementById("policies").readOnly = true
      $("#policies").val("PENDIENTE")
      document.getElementById("sinisters").readOnly = true
      $("#sinisters").val("PENDIENTE")

  $('#more_policies').change ->
    more_policies_rule()


  #Tipo moneda
  money_type_rule = ->
    v_option = document.getElementById("moneyType").value
    if v_option == "PESO"
      document.getElementById("dolarValueCents").readOnly = true
      $("#dolarValueCents").val(0)
    else
      document.getElementById("dolarValueCents").readOnly = false

  $('#moneyType').change ->
    money_type_rule()

  money_type_rule()


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
      $('#caseTermination').prop( "required", true )

      $('#caseTermination').prop( "disabled", false )
      $('#lastPerformance').prop( "required", true )
      $('#lastPerformance').prop( "disabled", false )
      document.getElementById("lastPerformanceDate").readOnly = false
      $('#reservedReleased').prop( "disabled", false )
      $('#recovery').prop( "disabled", false )
      $('#desition_date').prop( "disabled", false )
      $('#desition_date').val( "" )
      $('#desition_date').prop( "required", true )
      $('#cost').prop( "required", true )
      $('#cost').prop( "disabled", false )
      $('#cost_value').prop( "required", true )
      $('#cost_value').prop( "disabled", false )
    else
      $('#caseTermination').prop( "required", false )
      $('#caseTermination').val("PENDIENTE")
      $('#caseTermination').prop( "disabled", true )
      $('#lastPerformance').prop( "required", false )
      $('#lastPerformance').val("PENDIENTE")
      $('#lastPerformance').prop( "disabled", true )
      document.getElementById("lastPerformanceDate").readOnly = true
      $('#lastPerformanceDate').val("0-0-0")
      $('#reservedReleased').val("PENDIENTE")
      $('#reservedReleased').prop( "disabled", true )
      $('#recovery').prop( "disabled", true )
      $('#desition_date').prop( "disabled", true )
      $('#desition_date').prop( "required", false )
      $('#cost').prop( "required", false )
      $('#cost').val("No")
      $('#cost').prop( "disabled", true )
      $('#cost_value').prop( "required", false )
      $('#cost_value').val("0")
      $('#cost_value').prop( "disabled", true )

  $('#caseState').change ->
    case_state_rule()

  case_state_rule()

  #Terminación del caso
  case_termination_rule = ->
    v_option = document.getElementById("caseTermination").value
    if v_option == "TERMINADO CON PAGO: EN CONTRA"
      document.getElementById("fail_value").readOnly = false
      $('#fail_value').val("")
      $('#fail_value').prop('required', true)
      document.getElementById("fail_previ").readOnly = false
      $('#fail_previ').val("")
      $('#fail_previ').prop('required', true)
      document.getElementById("payed_value").readOnly = false
      $('#payed_value').val("")
      $('#payed_value').prop('required', true)
      document.getElementById("payment_date").readOnly = false
      $('#payment_date').prop('required', true)
    else
      document.getElementById("fail_value").readOnly = true
      $('#fail_value').val("0")
      $('#fail_value').prop('required', false)
      document.getElementById("fail_previ").readOnly = true
      $('#fail_previ').val("0")
      $('#fail_previ').prop('required', false)
      document.getElementById("payed_value").readOnly = true
      $('#payed_value').val("0")
      $('#payed_value').prop('required', false)
      document.getElementById("payment_date").readOnly = true
      $('#payment_date').val("0-0-0")
      $('#payment_date').prop('required', false)

  $('#caseTermination').change ->
    case_termination_rule()

  case_termination_rule()

  #¿Tiene costas a favor?
  cost_rule = ->
    v_option = document.getElementById('cost').value
    if v_option == "Si"
      document.getElementById("cost_value").readOnly = false
    else
      document.getElementById("cost_value").readOnly = true

  $('#cost').change ->
    cost_rule()

  cost_rule()

  #¿Tiene número de radicado de coactivo?
  coactive_radicate_and_coactive_value_cents_rule = ->
    coactiveRadicate = $('#coactive_radicate').val()
    coactiveValueCents = $('#coactive_value_cents').val()
    if (coactiveRadicate == "NO APLICA" && coactiveValueCents == "0")
      $('#coactive').val('No')
      document.getElementById("coactive_radicate").readOnly = true
      document.getElementById("coactive_value_cents").readOnly = true
    else
      $('#coactive').val('Si')

  coactive_radicate_and_coactive_value_cents_rule()

  coactive_rule = ->
    v_option = document.getElementById("coactive").value
    if v_option == "Si"
      document.getElementById("coactive_radicate").readOnly = false
      document.getElementById("coactive_value_cents").readOnly = false
    if v_option == "No"
      document.getElementById("coactive_radicate").readOnly = true
      $("#coactive_radicate").val("NO APLICA")
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
    else
      document.getElementById("committee_date").readOnly = true
      $('#committee_date').val("0-0-0")
      $('#committee').prop( "disabled", true )

  $('#join_committee').change ->
    join_committee_rule()

  join_committee_rule()

  #Date Committee Rule
  committee_date_rule = ->
    v_option = document.getElementById("committee_date").value
    a = new Date(v_option)
    if a.getTime() > (new Date).getTime()
      $('#committee').val("PENDIENTE")
    else
      $('#committee').val("")

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

  #Privision Rule
  provision_cents_rule = ->
    v_option = document.getElementById("provision_cents").value
    v_option = v_option.split("'").join("")
    v_option = v_option.split(",").join("")
    if v_option > '0'
      document.getElementById("reserved_fees_cents").readOnly = true
    else
      document.getElementById("reserved_fees_cents").readOnly = false

  $('#provision_cents').change ->
    provision_cents_rule()

  provision_cents_rule()

  #Valor asegurado y Valor contingencia
  pretension_value_rule = ->
    detValCents = document.getElementById('detrimetValueCents').value
    ensValCents = document.getElementById('ensuranceValueCents').value
    if detValCents != 0 && ensValCents != 0
      if detValCents < ensValCents
        $('#contingencyValueCents').val detValCents
      else
        $('#contingencyValueCents').val ensValCents
    else
      $('#contingencyValueCents').val 0

  $('#detrimetValueCents').change ->
    pretension_value_rule()

  $('#ensuranceValueCents').change ->
    pretension_value_rule()

  #Departamento donde cursa el caso
  $('#departament').change ->
    input_state = $(this)
    output_state = $('#cities')
    $.getJSON '/cities/' + $(this).val(), (data) ->
      output_state.empty()
      $.each data, (i) ->
        opt = '<option value="' + data[i].toUpperCase() + '">' + data[i].toUpperCase() + '</option>'
        output_state.append opt
