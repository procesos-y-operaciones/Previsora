$(document).on 'turbolinks:load', ->

  #regla Clase de proceso

  #regla Subclase de proceso

  #Tipologia Tiene numero de radicado correspondencia?
  has_num_radicade_rule = ->
    hasNum = document.getElementById('has_num_radicade').value
    if hasNum == 'Si'
      document.getElementById('correspondency_radicate').readOnly = false
    else
      document.getElementById('correspondency_radicate').readOnly = true

  $('#has_num_radicade').change ->
    has_num_radicade_rule()

  has_num_radicade_rule()

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
      $('#gubernatorial_ordinarie').prop 'disabled', false
      $('#gubernatorial_ordinarie').hide()

  $('#subprocessClass').change ->
    subprocessClass_rule()

  subprocessClass_rule()

  #regla Valor asegurado
  ensurance_value_rule = ->
    ensuranceValue = document.getElementById('ensuranceValue').value
    subClass = document.getElementById('subprocessClass').value
    if ensuranceValue >= '1000000000' and subClass == '69'
      $('#reinsuranceTypeSF').prop 'disabled', false
      $('#reinsuranceTypeSF').show()
      $('#reinsuranceType').prop 'disabled', true
      $('#reinsuranceType').hide()
    else
      $('#reinsuranceTypeSF').prop 'disabled', true
      $('#reinsuranceTypeSF').hide()
      $('#reinsuranceType').prop 'disabled', false
      $('#reinsuranceType').show()

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

  #Case Termination Rule
  case_termination_rule = ->
    v_option = document.getElementById("caseTermination").value
    if v_option == "2"
      document.getElementById("fail_value").readOnly = false
    else
      document.getElementById("fail_value").readOnly = true

  $('#caseTermination').change ->
    case_termination_rule()

  case_termination_rule()

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

  $('#departament_ordinarie').change ->
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
