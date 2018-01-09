$ ->

  #Radicate Rule
  radicate_rule = ->
    v_option = document.getElementById("radicate").value
    if v_option == "Si"
      document.getElementById("correspondency_radicate").readOnly = false
      $("#correspondency_radicate").val("")
    if v_option == "No"
      document.getElementById("correspondency_radicate").readOnly = true
      $("#correspondency_radicate").val("NO PRESENTA")

  $('#radicate').change ->
    radicate_rule()

  radicate_rule()

  #regla Subclase de proceso
  subprocessClass_rule = ->
    subClass = document.getElementById('subprocessClass').value
    if subClass == '70'
      $('#departament_coljuegos').prop 'disabled', false
      $('#departament_coljuegos').show()
      $('#departament_ordinarie').prop 'disabled', true
      $('#departament_ordinarie').hide()
      document.getElementById('dolarValueCents').readOnly = true
      $('#office_name_col').prop 'disabled', false
      $('#office_name_col').show()
      $('#office_name_ord').prop 'disabled', true
      $('#office_name_ord').hide()
      $('#moneyType').prop 'disabled', true
      $('#moneyType').val(1)
      $('#gubernatorial_coljuegos').prop 'disabled', false
      $('#gubernatorial_coljuegos').show()
      $('#gubernatorial_ordinarie').prop 'disabled', true
      $('#gubernatorial_ordinarie').hide()
      $('#protection_coljuegos').prop 'disabled', false
      $('#protection_coljuegos').show()
      $('#protection_ordinarie').prop 'disabled', true
      $('#protection_ordinarie').hide()
    else
      $('#departament_coljuegos').prop 'disabled', true
      $('#departament_coljuegos').hide()
      $('#departament_ordinarie').prop 'disabled', false
      $('#departament_ordinarie').show()
      document.getElementById('dolarValueCents').readOnly = false
      $('#office_name_col').prop 'disabled', true
      $('#office_name_col').hide()
      $('#office_name_ord').prop 'disabled', false
      $('#office_name_ord').show()
      $('#moneyType').prop 'disabled', false
      $('#gubernatorial_coljuegos').prop 'disabled', true
      $('#gubernatorial_coljuegos').hide()
      $('#gubernatorial_ordinarie').prop 'disabled', true
      $('#gubernatorial_ordinarie').show()
      $('#protection_coljuegos').prop 'disabled', true
      $('#protection_coljuegos').hide()
      $('#protection_ordinarie').prop 'disabled', false
      $('#protection_ordinarie').show()

  $('#subprocessClass').change ->
    subprocessClass_rule()

  subprocessClass_rule()

  #regla Valor asegurado
  ensurance_value_rule = ->
    ensuranceValue = document.getElementById('ensuranceValue').value
    subClass = document.getElementById('subprocessClass').value
    if ensuranceValue >= '1000000000' and subClass == '69'
      $('#reinsuranceTypeSF').prop 'disabled', true
      $('#reinsuranceTypeSF').hide()
      $('#reinsuranceType').prop 'disabled', false
      $('#reinsuranceType').show()
    else
      $('#reinsuranceTypeSF').prop 'disabled', false
      $('#reinsuranceTypeSF').show()
      $('#reinsuranceType').prop 'disabled', true
      $('#reinsuranceType').hide()

  $('#ensuranceValue').change ->
    ensurance_value_rule()

  ensurance_value_rule()


  num=0
  exer=0
  poly=0
  comm=0
  numSiniestro = ""
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

  #Litigation Source Rule
  litigation_source_rule = ->
    v_option = document.getElementById("litigationSource").value
    if v_option == "2"
      document.getElementById("policyCents").readOnly = false
      $('#protection').prop( "disabled", false )
      document.getElementById("number").readOnly = false
      document.getElementById("exercise").readOnly = false
      $('#branch_policy').prop( "disabled", false )
      $('#branch_commercial').prop( "disabled", false )
      $('#more_policies').prop( "disabled", false )
    else
      document.getElementById("policyCents").readOnly = true
      $('#protection').prop( "disabled", true )
      document.getElementById("number").readOnly = true
      document.getElementById("exercise").readOnly = true
      $('#branch_policy').prop( "disabled", true )
      $('#branch_commercial').prop( "disabled", true )
      $('#more_policies').prop( "disabled", true )

  $('#litigationSource').change ->
    litigation_source_rule()

  litigation_source_rule()

  #More policies Rule
  more_policies_rule = ->
    v_option = document.getElementById("more_policies").value
    if v_option == "Si"
      document.getElementById("policies").readOnly = false
      document.getElementById("sinisters").readOnly = false
    if v_option == "No"
      document.getElementById("policies").readOnly = true
      document.getElementById("sinisters").readOnly = true

  $('#more_policies').change ->
    more_policies_rule()

  more_policies_rule()

  #Money Type Rule
  money_type_rule = ->
    v_option = document.getElementById("moneyType").value
    if v_option == "1"
      document.getElementById("dolarValueCents").readOnly = true
      $("#dolarValueCents").val(0)
    else
      document.getElementById("dolarValueCents").readOnly = false

  $('#moneyType').change ->
    money_type_rule()

  money_type_rule()

  case_state_rule = ->
    v_option = document.getElementById("caseState").value
    if v_option == "1"
      $('#currentStageVer').prop( "disabled", false )
      $('#fail_value').prop( "disabled", true )
      $('#fail_previ').prop( "disabled", true )
      $('#desition_date').prop( "disabled", true )
      $('#caseTermination').prop( "disabled", true )
    else
      $('#currentStageVer').prop( "disabled", true )
      $('#fail_value').prop( "disabled", false )
      $('#fail_previ').prop( "disabled", false )
      $('#desition_date').prop( "disabled", false )
      $('#caseTermination').prop( "disabled", false )

  $('#caseState').change ->
    case_state_rule()

  case_state_rule()

  #Coactive Rule
  coactive_rule = ->
    v_option = document.getElementById("coactive").value
    if v_option == "Si"
      document.getElementById("coactive_radicate").readOnly = false
      document.getElementById("coactive_value_cents").readOnly = false
      document.getElementById("garnish_value").readOnly = false
    if v_option == "No"
      document.getElementById("coactive_radicate").readOnly = true
      document.getElementById("coactive_value_cents").readOnly = true
      document.getElementById("garnish_value").readOnly = true

  $('#coactive').change ->
    coactive_rule()

  coactive_rule()


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

  office_rule = ->
    v_option = document.getElementById('office_name_ord').value
    if v_option == "OTRO"
      $('#office_text').show()
      $('#office_text').prop( "disabled", false )
    else
      $('#office_text').hide()
      $('#office_text').prop( "disabled", true )

  $('#office_name_ord').change ->
    office_rule()

  office_rule()
