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


  initial_values()

  #Subclase de proceso
  subprocessClass_rule = ->
    v_option = document.getElementById('subprocessClass').value
    if v_option == 'COLJUEGOS'
      $('#gubernatorial_coljuegos').prop 'disabled', false
      $('#gubernatorial_coljuegos').show()
      $('#gubernatorial_ordinarie').prop 'disabled', true
      $('#gubernatorial_ordinarie').hide()
      $('#departament_coljuegos').prop 'disabled', false
      $('#departament_coljuegos').show()
      $('#departament_coljuegos').trigger("change")
      $('#departament_ordinarie').prop 'disabled', true
      $('#departament_ordinarie').hide()
      $('#departament_ordinarie').val("")
      $('#protection_coljuegos').prop 'disabled', false
      $('#protection_coljuegos').show()
      $('#protection_ordinarie').prop 'disabled', true
      $('#protection_ordinarie').hide()
      $('#protection_ordinarie').val("")
      $('#moneyCents').prop 'disabled', false
      $('#moneyCents').show()
      $('#moneyType').prop 'disabled', true
      $('#moneyType').hide()
      $('#moneyType').val("")
      document.getElementById('dolarValueCents').readOnly = true
      $('#dolarValueCents').val("0")
      $('#office_name_col').prop 'disabled', false
      $('#office_name_col').show()
      $('#office_name_ord').prop 'disabled', true
      $('#office_name_ord').hide()
      $('#office_name_ord').val("")
    else
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
      $('#protection_ordinarie').val("")
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
  correspondency_radicate_rule = ->
    if $('#correspondency_radicate').val() == "NO APLICA" or $('#correspondency_radicate').val() == "NO PRESENTA"
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
      $('#branch_policy').prop('disabled', false)
      $('#branch_commercial').prop('disabled', false)
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
      $('#branch_policy').prop('disabled', true)
      $('#branch_policy').val("0")
      $('#branch_commercial').prop('disabled', true)
      $('#branch_commercial').val("0")
      $('#sinister').val 'NO APLICA'

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
    if ensuranceValue >= 1000000000 and subClass == 'COLJUEGOS'
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
    if v_option == "DOLAR"
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
    else
      $('#currentStageVer').prop( "disabled", true )
      $('#currentStageHid').prop( "disabled", false )
      $('#fail_value').prop( "disabled", false )
      $('#desition_date').prop( "disabled", false )
      $('#fail_previ').prop( "disabled", false )
      $('#caseTermination').prop( "disabled", false )

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
      $('#payment_date').val("")
      $('#coactive').prop( "disabled", true )
      $('#coactive').val("No")

  $('#currentStageVer').change ->
    current_stage_rule()

  current_stage_rule()

  #¿Tiene número de radicado de coactivo?
  coactive_radicate_and_coactive_value_cents_rule = ->
    coactiveRadicate = $('#coactive_radicate').val()
    coactiveValueCents = $('#coactive_value_cents').val()
    garnishValue = $('#garnish_value').val()
    if (coactiveRadicate == "NO APLICA" and coactiveValueCents == "0" and garnishValue == "0")
      $('#coactive').val('No')
      document.getElementById("coactive_radicate").readOnly = true
      document.getElementById("coactive_value_cents").readOnly = true
      document.getElementById("garnish_value").readOnly = true
      $('#coactive_radicate').val("PENDIENTE")
    else
      $('#coactive').val('Si')

  coactive_radicate_and_coactive_value_cents_rule()

  coactive_rule = ->
    v_option = document.getElementById("coactive").value
    if v_option == "Si"
      document.getElementById("coactive_radicate").readOnly = false
      document.getElementById("coactive_value_cents").readOnly = false
      document.getElementById("garnish_value").readOnly = false
    if v_option == "No"
      document.getElementById("coactive_radicate").readOnly = true
      $("#coactive_radicate").val("NO APLICA")
      document.getElementById("coactive_value_cents").readOnly = true
      $("#coactive_value_cents").val("0")
      document.getElementById("garnish_value").readOnly = true
      $("#garnish_value").val("0")

  $('#coactive').change ->
    coactive_rule()


    #Departamento donde cursa el caso
  $('#departament_ordinarie').change ->
    input_state = $(this)
    output_state = $('#cities')
    $.getJSON '/cities/' + $(this).val(), (data) ->
      output_state.empty()
      $.each data, (i) ->
        opt = '<option value="' + data[i].toUpperCase() + '">' + data[i].toUpperCase() + '</option>'
        output_state.append opt

  $('#departament_ordinarie').ready ->
    input_state = $(this)
    output_state = $('#cities')
    $.getJSON '/cities/' + $(this).val(), (data) ->
      output_state.empty()
      $.each data, (i) ->
        opt = '<option value="' + data[i].toUpperCase() + '">' + data[i].toUpperCase() + '</option>'
        output_state.append opt

  $('#departament_coljuegos').change ->
    input_state = $(this)
    output_state = $('#cities')
    $.getJSON '/cities/' + $(this).val(), (data) ->
      output_state.empty()
      $.each data, (i) ->
        opt = '<option value="' + data[i].toUpperCase() + '">' + data[i].toUpperCase() + '</option>'
        output_state.append opt

  $('#departament_coljuegos').ready ->
    input_state = $(this)
    output_state = $('#cities')
    $.getJSON '/cities/' + $(this).val(), (data) ->
      output_state.empty()
      $.each data, (i) ->
        opt = '<option value="' + data[i].toUpperCase() + '">' + data[i].toUpperCase() + '</option>'
        output_state.append opt
