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
    if $('#passive_part').val() == "NO APLICA"
      $('#passive_part').val("PENDIENTE")
    if $('#contingency_reason').val() == "NO APLICA"
      $('#contingency_reason').val("PENDIENTE")
    if $('#contingency_resume').val() == "NO APLICA"
      $('#contingency_resume').val("PENDIENTE")
    if $('#facts').val() == "NO APLICA"
      $('#facts').val("PENDIENTE")
    if $('#process_radicate').val() == "NO APLICA"
      $('#process_radicate').val("PENDIENTE")
    if $('#attorny').val() == "NO APLICA"
      $('#attorny').val("PENDIENTE")
    if $('#more_protections').val() == "NO APLICA"
      $('#more_protections').val("NO PRESENTA")
    if $('#active_part').val() == "NO APLICA"
      $('#active_part').val("NO PRESENTA")
    if $('#coactive_radicate').val() == "NO APLICA"
      $('#coactive_radicate').val("NO PRESENTA")

  initial_values()

  #Subclase de proceso
  subprocess_class_rule = ->
    v_option = document.getElementById('subprocess_class').value
    if v_option == 'VERBAL'
      $('#currentStageVer').prop 'disabled', false
      $('#currentStageVer').show()
      $('#currentStageOrd').prop 'disabled', true
      $('#currentStageOrd').hide()
    else if v_option == 'ORDINARIO'
      $('#currentStageVer').prop 'disabled', true
      $('#currentStageVer').hide()
      $('#currentStageOrd').prop 'disabled', false
      $('#currentStageOrd').show()
    else
      $('#currentStageVer').prop 'disabled', true
      $('#currentStageVer').hide()
      $('#currentStageOrd').prop 'disabled', true
      $('#currentStageOrd').hide()

  $('#subprocess_class').change ->
    subprocess_class_rule()

  subprocess_class_rule()

  #¿Tiene número de radicado correspondencia?
  radicate_rule = ->
    v_option = document.getElementById("radicate").value
    if v_option == "true"
      document.getElementById("correspondency_radicate").readOnly = false
    if v_option == "false"
      document.getElementById("correspondency_radicate").readOnly = true
      $("#correspondency_radicate").val("NO PRESENTA")

  $('#radicate').change ->
    radicate_rule()

  radicate_rule()

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

  #Fuente de litigio
  numSiniestro = ""
  num = numSiniestro.concat(document.getElementById("number").value)
  exer = numSiniestro.concat(document.getElementById("exercise").value)
  poly = numSiniestro.concat(document.getElementById("branch_policy").value)
  comm = numSiniestro.concat(document.getElementById("branch_commercial").value)
  litigation_source_rule = ->
    v_option = document.getElementById('litigationSource').value
    if v_option == 'SINIESTRO'
      document.getElementById('policyCents').readOnly = false
      $('#protection').prop('disabled', false)
      document.getElementById('number').readOnly = false
      document.getElementById('exercise').readOnly = false
      document.getElementById("more_protections").readOnly = false
      $('#branch_policy').prop( "disabled", false )
      $('#branch_policy_hid').prop( "disabled", true )
      $('#branch_commercial').prop( "disabled", false )
      $('#branch_commercial_hid').prop( "disabled", true )
      $('#more_policies').prop( "disabled", false )
      $("#sinister").val(num+"-"+exer+"-"+poly+"-"+comm)
    else
      document.getElementById('policyCents').readOnly = true
      $('#policyCents').val("0")
      $('#protection').prop('disabled', true)
      $('#protection').val("")
      document.getElementById('number').readOnly = true
      $('#number').val("0")
      document.getElementById('exercise').readOnly = true
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
  more_policies_rule = ->
    v_option = document.getElementById("more_policies").value
    if v_option == "true"
      document.getElementById("policies").readOnly = false
      document.getElementById("sinisters").readOnly = false
    if v_option == "false"
      document.getElementById("policies").readOnly = true
      $("#policies").val("PENDIENTE")
      document.getElementById("sinisters").readOnly = true
      $("#sinisters").val("PENDIENTE")

  $('#more_policies').change ->
    more_policies_rule()

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


  #Nombre despacho / tipo contraloría
  office_name_rule = ->
    v_option = document.getElementById("office_name").value
    $("#active_part").val(v_option)

  $('#office_name').change ->
    office_name_rule()


  #Estado del caso
  case_state_rule = ->
    v_option = document.getElementById("caseState").value
    if v_option == "TERMINADO"
      $('#caseTermination').prop( "required", true )
      $('#caseTermination').prop( "disabled", false )
      $('#caseTermination_hid').prop( "disabled", true )
      $('#lastPerformance').prop( "disabled", false )
      $('#lastPerformance_hid').prop( "disabled", true )
      document.getElementById("lastPerformanceDate").readOnly = false
      $('#reservedReleased').prop( "disabled", false )
      $('#reservedReleased_hid').prop( "disabled", true )
      $('#recovery').prop( "disabled", false )
      $('#desition_date').prop( "disabled", false )
      $('#desition_date').prop( "required", true )
    else
      $('#caseTermination').prop( "required", false )
      $('#caseTermination').prop( "disabled", true )
      $('#caseTermination_hid').prop( "disabled", false )
      $('#lastPerformance').prop( "disabled", true )
      $('#lastPerformance_hid').prop( "disabled", false )
      document.getElementById("lastPerformanceDate").readOnly = true
      $('#reservedReleased').prop( "disabled", true )
      $('#reservedReleased_hid').prop( "disabled", false )
      $('#recovery').prop( "disabled", true )
      $('#desition_date').prop( "disabled", true )
      $('#desition_date').prop( "required", false )

  $('#caseState').change ->
    case_state_rule()

  case_state_rule()

  #Terminacion del caso
  case_termination_rule = ->
    v_option = document.getElementById("caseTermination").value
    if v_option == "TERMINADO CON PAGO: EN CONTRA"
      $('#fail_value_cents').prop( "disabled", false )
      $('#fail_value_cents').prop( "required", true )
      $('#fail_previ_cents').prop( "disabled", false )
      $('#fail_previ_cents').prop( "required", true )
      $('#payed_value_cents').prop( "disabled", false )
      $('#payed_value_cents').prop( "required", true )
      $('#payment_date').prop( "disabled", false )
      $('#payment_date').prop( "required", true )
      $('#coactive').prop( "disabled", false )
      $('#coactive').prop( "required", true )
      $('#garnish_value_cents').prop( "disabled", false )
      $('#garnish_value_cents').prop( "required", true )
    else
      $('#fail_value_cents').prop( "disabled", true )
      $('#fail_value_cents').prop( "required", false )
      $('#fail_previ_cents').prop( "disabled", true )
      $('#fail_previ_cents').prop( "required", false )
      $('#payed_value_cents').prop( "disabled", true )
      $('#payed_value_cents').prop( "required", false )
      $('#payment_date').prop( "disabled", true )
      $('#payment_date').prop( "required", false )
      $('#coactive').prop( "disabled", true )
      $('#coactive').val( "false" )
      $('#coactive').prop( "required", false )
      $('#garnish_value_cents').prop( "disabled", true )
      $('#garnish_value_cents').prop( "required", false )

  $('#caseTermination').change ->
    case_termination_rule()

  case_termination_rule()


  #Departamento donde cursa el caso
  $('#departament').change ->
    input_state = $(this)
    output_state = $('#cities')
    $.getJSON '/cities/' + $(this).val(), (data) ->
      output_state.empty()
      $.each data, (i) ->
        opt = '<option value="' + data[i].toUpperCase() + '">' + data[i].toUpperCase() + '</option>'
        output_state.append opt
