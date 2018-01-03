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
      $('#departament_cund').prop 'disabled', false
      $('#departament_cund').show()
      $('#departament').prop 'disabled', true
      $('#departament').hide()
      $('#city_case_bog').prop 'disabled', false
      $('#city_case_bog').show()
      $('#city_case').prop 'disabled', true
      $('#city_case').hide()
      document.getElementById('dolarValueCents').readOnly = true
      $('#office_name_col').prop 'disabled', false
      $('#office_name_col').show()
      $('#office_name').prop 'disabled', true
      $('#office_name').hide()
      $('#moneyType').prop 'disabled', true
      $('#moneyType').val(1)
    else
      $('#departament_cund').prop 'disabled', true
      $('#departament_cund').hide()
      $('#departament').prop 'disabled', false
      $('#departament').show()
      $('#city_case_bog').prop 'disabled', true
      $('#city_case_bog').hide()
      $('#city_case').prop 'disabled', false
      $('#city_case').show()
      document.getElementById('dolarValueCents').readOnly = false
      $('#office_name_col').prop 'disabled', true
      $('#office_name_col').hide()
      $('#office_name').prop 'disabled', false
      $('#office_name').show()
      $('#moneyType').prop 'disabled', false

  $('#subprocessClass').change ->
    subprocessClass_rule()

  subprocessClass_rule()

  #regla Valor asegurado
  ensurance_value_rule = ->
    ensuranceValue = document.getElementById('ensuranceValue').value
    subClass = document.getElementById('subprocessClass').value
    if ensuranceValue >= '1000000000' and subClass == '70'
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

  case_termination_rule = ->
    v_option = document.getElementById("caseTermination").value
    if v_option == "1"
      document.getElementById("fail_value").readOnly = true
    else
      document.getElementById("fail_value").readOnly = false

  $('#caseTermination').change ->
    case_termination_rule()

  case_termination_rule()
