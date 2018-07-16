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
    if $('#contingency_reason').val() == "NO APLICA"
      $('#contingency_reason').val("PENDIENTE")
    if $('#case_id_bap').val() == "NO APLICA"
      $('#case_id_bap').val("PENDIENTE")
    if $('#case_id_sise').val() == "NO APLICA"
      $('#case_id_sise').val("PENDIENTE")
    if $('#attorny').val() == "NO APLICA"
      $('#attorny').val("PENDIENTE")
    if $('#policy_taker').val() == "NO APLICA"
      $('#policy_taker').val("PENDIENTE")
    if $('#contract').val() == "NO APLICA"
      $('#contract').val("PENDIENTE")
    if $('#contingency_resume').val() == "NO APLICA"
      $('#contingency_resume').val("PENDIENTE")
    if $('#process_radicate').val() == "NO APLICA"
      $('#process_radicate').val("PENDIENTE")
    if $('#coactive_radicate').val() == "NO APLICA"
      $('#coactive_radicate').val("PENDIENTE")
    if $('#policies').val() == "NO APLICA"
      $('#policies').val("PENDIENTE")
    if $('#sinisters').val() == "NO APLICA"
      $('#sinisters').val("PENDIENTE")

  initial_values()

  #State_value
  state_value = ->
    if('#state_val').val() == "REGISTRO MIGRADO"
      ('#state_val').val("REGISTRO MIGRADO MODIFICADO")
    if('#state_val').val() == "REGISTRO NUEVO"
      ('#state_val').val("REGISTRO NUEVO MODIFICADO")

  state_value()

  #Departamento donde cursa el caso
  departament_rule = ->
    value = $('#cities').val()
    $.getJSON '/cities/' + $('#departament_ordinarie').val(), (data) ->
      $('#cities').empty()
      $('#cities').append '<option value="">SELECCIONE</option>'
      $.each data, (i) ->
        if value == data[i].code
          opt = '<option selected="selected" value="' + data[i].code + '">' + data[i].name + '</option>'
        else
          opt = '<option value="' + data[i].code + '">' + data[i].name + '</option>'
        $('#cities').append(opt)

  $('#departament_ordinarie').change ->
    departament_rule()

  #departament_rule()

  #Departamento donde cursa el caso
  departament_rule_col = ->
    value = $('#cities').val()
    $.getJSON '/cities/' + $('#departament_coljuegos').val(), (data) ->
      $('#cities').empty()
      $.each data, (i) ->
        if value == data[i].code
          opt = '<option selected="selected" value="' + data[i].code + '">' + data[i].name + '</option>'
        else
          opt = '<option value="' + data[i].code + '">' + data[i].name + '</option>'
        $('#cities').append(opt)

  $('#departament_coljuegos').change ->
    departament_rule_col()

  #departament_rule_col()


  #Subclase de proceso
  subprocessClass_rule = ->
    v_option = document.getElementById('subprocessClass').value
    if v_option == 'COLJUEGOS'
      departament_rule_col()
      $('#gubernatorial_coljuegos').prop 'disabled', false
      $('#gubernatorial_coljuegos').show()
      $('#gubernatorial_ordinarie').prop 'disabled', true
      $('#gubernatorial_ordinarie').hide()
      $('#departament_coljuegos').prop 'disabled', false
      $('#departament_coljuegos').show()
      $('#departament_coljuegos').trigger("change")
      $('#departament_ordinarie').prop 'disabled', true
      $('#departament_ordinarie').hide()
      $('#protection_coljuegos').prop 'disabled', false
      $('#protection_coljuegos').show()
      $('#protection_ordinarie').prop 'disabled', true
      $('#protection_ordinarie').hide()
      $('#moneyCents').prop 'disabled', false
      $('#moneyCents').show()
      $('#moneyType').prop 'disabled', true
      $('#moneyType').hide()
      document.getElementById('dolarValueCents').readOnly = true
      $('#office_name_col').prop 'disabled', false
      $('#office_name_col').show()
      $('#office_name_ord').prop 'disabled', true
      $('#office_name_ord').hide()
    else
      departament_rule()
      $('#gubernatorial_coljuegos').prop 'disabled', true
      $('#gubernatorial_coljuegos').hide()
      $('#gubernatorial_ordinarie').prop 'disabled', true
      $('#gubernatorial_ordinarie').show()
      $('#departament_coljuegos').prop 'disabled', true
      $('#departament_coljuegos').hide()
      $('#departament_ordinarie').prop 'disabled', false
      $('#departament_ordinarie').show()
      $('#protection_coljuegos').prop 'disabled', false
      $('#protection_coljuegos').show()
      $('#protection_ordinarie').prop 'disabled', true
      $('#protection_ordinarie').hide()
      $('#moneyCents').prop 'disabled', true
      $('#moneyCents').hide()
      $('#moneyType').prop 'disabled', false
      $('#moneyType').show()
      document.getElementById('dolarValueCents').readOnly = false
      $('#office_name_col').prop 'disabled', true
      $('#office_name_col').hide()
      $('#office_name_ord').prop 'disabled', false
      $('#office_name_ord').show()
      $('#protection_coljuegos').prop 'disabled', true
      $('#protection_coljuegos').hide()
      $('#protection_ordinarie').prop 'disabled', false
      $('#protection_ordinarie').show()

  $('#subprocessClass').change ->
    subprocessClass_rule()

  subprocessClass_rule()


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
      $('#protection_coljuegos').prop('disabled', false)
      $('#protection_ordinarie').prop('disabled', false)
      document.getElementById('number').readOnly = false
      document.getElementById('exercise').readOnly = false
      $('#branch_policy').prop( "disabled", false )
      $('#branch_policy_hid').prop( "disabled", true )
      $('#branch_commercial').prop( "disabled", false )
      $('#branch_commercial_hid').prop( "disabled", true )
      $('#more_policies').prop( "disabled", false )
      $("#sinister").val(num+"-"+exer+"-"+poly+"-"+comm)
    else
      document.getElementById('protection_coljuegos').readOnly = true
      document.getElementById('protection_ordinarie').readOnly = true
      document.getElementById('policyCents').readOnly = true
      $('#policyCents').val("0")
      $('#protection_coljuegos').prop('disabled', true)
      $('#protection_ordinarie').prop('disabled', true)
      document.getElementById('number').readOnly = true
      $('#number').val("0")
      document.getElementById('exercise').readOnly = true
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


  #Valor asegurado
  ensurance_value_rule = ->
    ensuranceValue = document.getElementById('ensuranceValue').value
    subClass = document.getElementById('subprocessClass').value
    ensuranceValue = ensuranceValue.split("'").join("")
    ensuranceValue = ensuranceValue.split(",").join("")
    if ensuranceValue >= 1000000000
      $('#reinsuranceTypeSF').prop 'disabled', true
      $('#reinsuranceTypeSF').hide()
      $('#reinsuranceType').prop 'disabled', false
      $('#reinsuranceType').show()
      $('#reinsurance_report').prop( "disabled", false )
    else
      $('#reinsuranceTypeSF').prop 'disabled', false
      $('#reinsuranceTypeSF').show()
      $('#reinsuranceType').prop 'disabled', true
      $('#reinsuranceType').hide()
      $('#reinsuranceType').val("")
      $('#reinsurance_report').prop( "disabled", true )
      $('#reinsurance_report').val("false")

  $('#ensuranceValue').change ->
    ensurance_value_rule()
  $('#subprocessClass').change ->
    ensurance_value_rule()

  ensurance_value_rule()

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

  more_policies_rule()

  #Tipo moneda
  money_type_rule = ->
    v_option = document.getElementById("moneyType").value
    if v_option == "PESOS"
      document.getElementById("dolarValueCents").readOnly = false
      $("#dolarValueCents").val(0)
    else
      document.getElementById("dolarValueCents").readOnly = true

  $('#moneyType').change ->
    money_type_rule()

  money_type_rule()


  #Nombre despacho / tipo contraloría
  office_rule = ->
    v_option = document.getElementById('office_name_ord').value
    if v_option == "OTRO"
      $('#office_text').prop( "disabled", false )
      $('#office_text').show()
    else
      $('#office_text').prop( "disabled", true )
      $('#office_text').hide()
      $('#office_text').val("")

  $('#office_name_ord').change ->
    office_rule()

  office_rule()


  #Estado del caso
  case_state_rule = ->
    v_option = document.getElementById("caseState").value
    if v_option == "EN CURSO"
      $('#currentStageVer').prop( "disabled", false )
      $('#currentStageHid').prop( "disabled", true )
      $('#fail_value').prop( "disabled", true )
      $('#fail_value').val("0")
      $('#desition_date').prop( "disabled", true )
      $('#desition_date').prop("0-0-0")
      $('#fail_previ').prop( "disabled", true )
      $('#fail_previ').val("0")
      $('#caseTermination').prop( "disabled", true )
      $('#caseTermination').val("")
      $('#caseTermination_hid').prop( "disabled", false )
    if v_option == "TERMINADO"
      $('#currentStageVer').prop( "disabled", true )
      $('#currentStageHid').prop( "disabled", false )
      $('#fail_value').prop( "disabled", false )
      $('#desition_date').prop( "disabled", false )
      $('#fail_previ').prop( "disabled", false )
      $('#caseTermination').prop( "disabled", false )
      $('#caseTermination_hid').prop( "disabled", true )
    else
      $('#currentStageVer').prop( "disabled", false )
      $('#currentStageHid').prop( "disabled", true )
      $('#fail_value').prop( "disabled", true )
      $('#fail_value').val("0")
      $('#desition_date').prop( "disabled", true )
      $('#desition_date').prop("0-0-0")
      $('#fail_previ').prop( "disabled", true )
      $('#fail_previ').val("0")
      $('#caseTermination').prop( "disabled", true )
      $('#caseTermination').val("")
      $('#caseTermination_hid').prop( "disabled", false )


  $('#caseState').change ->
    case_state_rule()

  case_state_rule()

  #Current Stage Rule
  current_stage_rule = ->
    v_option = document.getElementById("currentStageVer").value
    if v_option == "SANCION EN FIRME"
      $('#payed_value_cents').prop( "disabled", false )
      $('#payment_date').prop( "disabled", false )
      $('#coactive').prop( "disabled", false )
    else
      $('#payed_value_cents').prop( "disabled", true )
      $('#payed_value_cents').val("0")
      $('#payment_date').prop( "disabled", true )
      $('#coactive').val( "false" )
      $('#coactive').prop( "disabled", true )

  $('#currentStageVer').change ->
    current_stage_rule()

  current_stage_rule()

  #¿Tiene número de radicado de coactivo?
  coactive_rule = ->
    v_option = document.getElementById("coactive").value
    if v_option == "true"
      document.getElementById("coactive_radicate").readOnly = false
      document.getElementById("coactive_value_cents").readOnly = false
      document.getElementById("garnish_value").readOnly = false
    if v_option == "false"
      document.getElementById("coactive_radicate").readOnly = true
      $("#coactive_radicate").val("NO PRESENTA")
      document.getElementById("coactive_value_cents").readOnly = true
      document.getElementById("garnish_value").readOnly = true

  $('#coactive').change ->
    coactive_rule()

  coactive_rule()
