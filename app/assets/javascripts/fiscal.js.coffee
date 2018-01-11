$ ->

  #subprocess Class Rule
  subprocess_class_rule = ->
    v_option = document.getElementById('subprocess_class').value
    if v_option == '3'
      $('#currentStageVer').prop 'disabled', false
      $('#currentStageVerDiv').show()
      $('#currentStageOrd').prop 'disabled', true
      $('#currentStageOrdDiv').hide()
    if v_option == '4'
      $('#currentStageVer').prop 'disabled', true
      $('#currentStageVerDiv').hide()
      $('#currentStageOrd').prop 'disabled', false
      $('#currentStageOrdDiv').show()

  $('#subprocess_class').change ->
    subprocess_class_rule()

  subprocess_class_rule()

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

  #Litigation Source Rule
  litigation_source_rule = ->
    v_option = document.getElementById('litigationSource').value
    if v_option == '2'
      document.getElementById('policyCents').readOnly = false
      $('#protection').prop('disabled', false)
      document.getElementById('number').readOnly = false
      document.getElementById('exercise').readOnly = false
      $('#branch_policy').prop('disabled', false)
      $('#branch_commercial').prop('disabled', false)
    else
      document.getElementById('policyCents').readOnly = true
      $('#protection').prop('disabled', true)
      document.getElementById('number').readOnly = true
      document.getElementById('exercise').readOnly = true
      $('#branch_policy').prop('disabled', true)
      $('#branch_commercial').prop('disabled', true)
      $('#policyCents').val 0
      $('#protection').val '0'
      $('#number').val 0
      $('#exercise').val 0
      $('#branch_policy').val '0'
      $('#branch_commercial').val '0'
      $('#sinister').val 'NO APLICA'

  $('#litigationSource').change ->
    litigation_source_rule()

  litigation_source_rule()

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

  #Pretension Value Rule
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

  pretension_value_rule()

  #Case State Rule
  case_state_rule = ->
    v_option = document.getElementById("caseState").value
    if v_option == "2"
      $('#caseTermination').prop( "disabled", false )
      $('#lastPerformance').prop( "disabled", false )
      document.getElementById("lastPerformanceDate").readOnly = false
      $('#reservedReleased').prop( "disabled", false )
    else
      $('#caseTermination').prop( "disabled", true )
      $('#lastPerformance').prop( "disabled", true )
      document.getElementById("lastPerformanceDate").readOnly = true
      $('#reservedReleased').prop( "disabled", true )
  
  $('#caseState').change ->
    case_state_rule()

  case_state_rule()

  #Coactive Rule
  coactive_rule = ->
    v_option = document.getElementById("coactive").value
    if v_option == "Si"
      document.getElementById("coactive_radicate").readOnly = false
      document.getElementById("coactive_value_cents").readOnly = false
    if v_option == "No"
      document.getElementById("coactive_radicate").readOnly = true
      document.getElementById("coactive_value_cents").readOnly = true

  $('#coactive').change ->
    coactive_rule()

  coactive_rule()

  #Departament Rule
  office_name_rule = ->
    v_option = document.getElementById("office_name").value
    $("#active_part").val(v_option)

  $('#office_name').change ->
    office_name_rule()

  office_name_rule()

  $('#departament').change ->
    input_state = $(this)
    output_state = $('#cities')
    $.getJSON '/cities/' + $(this).val(), (data) ->
      output_state.empty()
      $.each data, (i) ->
        opt = '<option value="' + data[i].toUpperCase() + '">' + data[i].toUpperCase() + '</option>'
        output_state.append opt

  $('#departament').ready ->
    input_state = $(this)
    output_state = $('#cities')
    $.getJSON '/cities/' + $(this).val(), (data) ->
      output_state.empty()
      $.each data, (i) ->
        opt = '<option value="' + data[i].toUpperCase() + '">' + data[i].toUpperCase() + '</option>'
        output_state.append opt
