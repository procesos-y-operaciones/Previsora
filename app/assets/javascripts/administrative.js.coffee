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
    #coljuegos
    if subClass == '6'
      $('#departament_cund').prop 'disabled', false
      $('#departament_cund').show()
      $('#departament').prop 'disabled', true
      $('#departament').hide()
      $('#city_case_bog').prop 'disabled', false
      $('#city_case_bog').show()
      $('#city_case').prop 'disabled', true
      $('#city_case').hide()
      document.getElementById('dolarValue').readOnly = true
      $('#office_name_col').prop 'disabled', false
      $('#office_name_col').show()
      $('#office_name').prop 'disabled', true
      $('#office_name').hide()
    #ordinal
    else
      $('#departament_cund').prop 'disabled', true
      $('#departament_cund').hide()
      $('#departament').prop 'disabled', false
      $('#departament').show()
      $('#city_case_bog').prop 'disabled', true
      $('#city_case_bog').hide()
      $('#city_case').prop 'disabled', false
      $('#city_case').show()
      document.getElementById('dolarValue').readOnly = false
      $('#office_name_col').prop 'disabled', true
      $('#office_name_col').hide()
      $('#office_name').prop 'disabled', false
      $('#office_name').show()

  $('#subprocessClass').change ->
    subprocessClass_rule()

  subprocessClass_rule()

  #regla Valor asegurado
  ensurance_value_rule = ->
    ensuranceValue = document.getElementById('ensuranceValue').value
    subClass = document.getElementById('subprocessClass').value
    if ensuranceValue > '1000000000' and subClass == '4'
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

#city_case city_case_bog
