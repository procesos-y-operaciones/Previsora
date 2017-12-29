# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  #Radicate Rule
  radicate_rule = ->
    v_option = document.getElementById("radicate").value
    if v_option == "Si"
      document.getElementById("correspondency_radicate").readOnly = false
    if v_option == "No"
      document.getElementById("correspondency_radicate").readOnly = true
      $("#correspondency_radicate").val("NO PRESENTA")

  $('#radicate').change ->
    radicate_rule()

  radicate_rule()

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

  #Join Committee Rule
  join_committee_rule = ->
    v_option = document.getElementById("join_committee").value
    if v_option == "2"
      document.getElementById("committee_date").readOnly = false
      $('#committee').prop( "disabled", false )
    else
      document.getElementById("committee_date").readOnly = true
      $('#committee').prop( "disabled", true )

  $('#join_committee').change ->
    join_committee_rule()

  join_committee_rule()

  #Committee Rule
  committee_rule = ->
    v_option = document.getElementById("committee").value
    if v_option == "2"
      document.getElementById("reconcilie_value").readOnly = false
      document.getElementById("auth_value").readOnly = false
      document.getElementById("reason_conc").readOnly = true
      document.getElementById("reason_inv").readOnly = true
      document.getElementById("fail_value").readOnly = true
      document.getElementById("fail_previ").readOnly = true
      document.getElementById("payed_value").readOnly = true
    else if v_option == "3"
      document.getElementById("reconcilie_value").readOnly = true
      document.getElementById("auth_value").readOnly = true
      document.getElementById("reason_conc").readOnly = false
      document.getElementById("reason_inv").readOnly = true
      document.getElementById("fail_value").readOnly = false
      document.getElementById("fail_previ").readOnly = false
      document.getElementById("payed_value").readOnly = false
    else if v_option == "4"
      document.getElementById("reconcilie_value").readOnly = true
      document.getElementById("auth_value").readOnly = true
      document.getElementById("reason_conc").readOnly = true
      document.getElementById("reason_inv").readOnly = false
      document.getElementById("fail_value").readOnly = false
      document.getElementById("fail_previ").readOnly = false
      document.getElementById("payed_value").readOnly = false
    else
      document.getElementById("reconcilie_value").readOnly = true
      document.getElementById("auth_value").readOnly = true
      document.getElementById("reason_conc").readOnly = true
      document.getElementById("reason_inv").readOnly = true
      document.getElementById("fail_value").readOnly = false
      document.getElementById("fail_previ").readOnly = false
      document.getElementById("payed_value").readOnly = false

  $('#committee').change ->
    committee_rule()

  committee_rule()

  #Reinsurance Type Rule
  reinsurance_type_rule = ->
    v_option = document.getElementById("reinsurance_type").value
    if v_option == "2" || v_option == "3"
      document.getElementById("reinsurance_value").readOnly = false
    else
      document.getElementById("reinsurance_value").readOnly = true

  $("#reinsurance_type").change ->
    reinsurance_type_rule()

  reinsurance_type_rule()

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

  #Process Class Rule
  process_class_rule = ->
    v_option = document.getElementById("processClass").value
    switch v_option
      when "1"
        $('#subprocess').show()
        $('#subprocessAdminDiv').show()
        $('#subprocessAdmin').prop( "disabled", false )
        $('#subprocessAdmin').show()
        $('#subprocessPenalDiv').hide()
        $('#subprocessPenal').prop( "disabled", true )
        $('#subprocessPenal').hide()
        $('#subprocessCivilDiv').hide()
        $('#subprocessCivil').prop( "disabled", true )
        $('#subprocessCivil').hide()
        $('#subprocessLaboralDiv').hide()
        $('#subprocessLaboral').prop( "disabled", true )
        $('#subprocessLaboral').hide()
        $('#subprocessArbitralDiv').hide()
        $('#subprocessArbitral').prop( "disabled", true )
        $('#subprocessArbitral').hide()
      when "2"
        $('#subprocess').show()
        $('#subprocessAdminDiv').hide()
        $('#subprocessAdmin').prop( "disabled", true )
        $('#subprocessAdmin').hide()
        $('#subprocessPenalDiv').hide()
        $('#subprocessPenal').prop( "disabled", true )
        $('#subprocessPenal').hide()
        $('#subprocessCivilDiv').show()
        $('#subprocessCivil').prop( "disabled", false )
        $('#subprocessCivil').show()
        $('#subprocessLaboralDiv').hide()
        $('#subprocessLaboral').prop( "disabled", true )
        $('#subprocessLaboral').hide()
        $('#subprocessArbitralDiv').hide()
        $('#subprocessArbitral').prop( "disabled", true )
        $('#subprocessArbitral').hide()
      when "11"
        $('#subprocess').show()
        $('#subprocessPenalDiv').show()
        $('#subprocessPenal').prop( "disabled", false )
        $('#subprocessPenal').show()
        $('#subprocessAdminDiv').hide()
        $('#subprocessAdmin').prop( "disabled", true )
        $('#subprocessAdmin').hide()
        $('#subprocessCivilDiv').hide()
        $('#subprocessCivil').prop( "disabled", true )
        $('#subprocessCivil').hide()
        $('#subprocessLaboralDiv').hide()
        $('#subprocessLaboral').prop( "disabled", true )
        $('#subprocessLaboral').hide()
        $('#subprocessArbitralDiv').hide()
        $('#subprocessArbitral').prop( "disabled", true )
        $('#subprocessArbitral').hide()
      when "12"
        $('#subprocess').show()
        $('#subprocessPenalDiv').hide()
        $('#subprocessPenal').prop( "disabled", true )
        $('#subprocessPenal').hide()
        $('#subprocessAdminDiv').hide()
        $('#subprocessAdmin').prop( "disabled", true )
        $('#subprocessAdmin').hide()
        $('#subprocessCivilDiv').hide()
        $('#subprocessCivil').prop( "disabled", true )
        $('#subprocessCivil').hide()
        $('#subprocessLaboralDiv').show()
        $('#subprocessLaboral').prop( "disabled", false )
        $('#subprocessLaboral').show()
        $('#subprocessArbitralDiv').hide()
        $('#subprocessArbitral').prop( "disabled", true )
        $('#subprocessArbitral').hide()
      when "30"
        $('#subprocess').show()
        $('#subprocessPenalDiv').hide()
        $('#subprocessPenal').prop( "disabled", true )
        $('#subprocessPenal').hide()
        $('#subprocessAdminDiv').hide()
        $('#subprocessAdmin').prop( "disabled", true )
        $('#subprocessAdmin').hide()
        $('#subprocessCivilDiv').hide()
        $('#subprocessCivil').prop( "disabled", true )
        $('#subprocessCivil').hide()
        $('#subprocessLaboralDiv').hide()
        $('#subprocessLaboral').prop( "disabled", true )
        $('#subprocessLaboral').hide()
        $('#subprocessArbitralDiv').show()
        $('#subprocessArbitral').prop( "disabled", false )
        $('#subprocessArbitral').show()
      else
        $('#subprocess').hide()
        $('#subprocessAdminDiv').hide()
        $('#subprocessAdmin').prop( "disabled", true )
        $('#subprocessAdmin').hide()
        $('#subprocessPenalDiv').hide()
        $('#subprocessPenal').prop( "disabled", true )
        $('#subprocessPenal').hide()
        $('#subprocessCivilDiv').hide()
        $('#subprocessCivil').prop( "disabled", true )
        $('#subprocessCivil').hide()
        $('#subprocessLaboralDiv').hide()
        $('#subprocessLaboral').prop( "disabled", true )
        $('#subprocessLaboral').hide()
        $('#subprocessArbitralDiv').hide()
        $('#subprocessArbitral').prop( "disabled", true )
        $('#subprocessArbitral').hide()
  $('#processClass').change ->
    process_class_rule()
    
  process_class_rule()
    
  hide_all_selectors = ->
    $('#judicial_admin').prop( 'disabled', true )
    $('#judicial_admin').hide()
    $('#judicial_penal').prop( 'disabled', true )
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

  #Subprocess Admin Rule
  subprocess_admin_rule = ->
    hide_all_selectors()
    $('#judicial_admin').prop( "disabled", false )
    $('#judicial_admin').show()

  $('#judicial_admin').change ->
    subprocess_admin_rule()
  
  subprocess_admin_rule()
  
  #Subprocess Civil Verbal
  subprocess_civil_rule = ->
    hide_all_selectors()
    v_option = document.getElementById("subprocessCivil").value
    switch v_option
      when "55"
        $('#judicial_verbal').prop( "disabled", false )
        $('#judicial_verbal').show()
      when "56"
        $('#judicial_verbal_sum').prop( "disabled", false )
        $('#judicial_verbal_sum').show()
      when "57"
        $('#judicial_declarativos').prop( "disabled", false )
        $('#judicial_declarativos').show()
      when "58"
        $('#judicial_ejecutivo').prop( "disabled", false )
        $('#judicial_ejecutivo').show()
      when "59"
        $('#judicial_sucesion').prop( "disabled", false )
        $('#judicial_sucesion').show()
      when "60"
        $('#judicial_liquidacion').prop( "disabled", false )
        $('#judicial_liquidacion').show()
      when "61"
        $('#judicial_liquidacion').prop( "disabled", false )
        $('#judicial_liquidacion').show()
      when "62"
        $('#judicial_insolvencia').prop( "disabled", false )
        $('#judicial_insolvencia').show()
      when "63"
        $('#judicial_ordinario').prop( "disabled", false )
        $('#judicial_ordinario').show()
      when "64"
        $('#judicial_divisorio').prop( "disabled", false )
        $('#judicial_divisorio').show()
      when "65"
        $('#judicial_voluntaria').prop( "disabled", false )
        $('#judicial_voluntaria').show()
      else
        hide_all_selectors()

  $('#subprocessCivil').change ->
    subprocess_civil_rule()

  subprocess_civil_rule()

  #Subprocess Penal Rule
  subprocess_penal_rule = ->
    hide_all_selectors()
    $('#judicial_penal').prop( "disabled", false )
    $('#judicial_penal').show()

  $('#judicial_penal').change ->
    subprocess_penal_rule()

  subprocess_penal_rule()
  
  #Subprocess Laboral Rule
  subprocess_laboral_rule = ->
    hide_all_selectors()
    $('#judicial_laboral').prop( "disabled", false )
    $('#judicial_laboral').show()

  $('#judicial_laboral').change ->
    subprocess_laboral_rule()

  subprocess_laboral_rule()

  #Subprocess Arbitral Rule
  subprocess_arbitral_rule = ->
    hide_all_selectors()
    $('#judicial_arbitral').prop( "disabled", false )
    $('#judicial_arbitral').show()

  $('#judicial_arbitral').change ->
    subprocess_laboral_rule()

  subprocess_laboral_rule()

  #Money Type Rule
  money_type_rule = ->
    v_option = document.getElementById("moneyType").value
    if v_option == "1"
      document.getElementById("dolarValueCents").readOnly = true
      $("#dolarValueCents").val(0)
    else
      document.getElementById("dolarValueCents").readOnly = false

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

  #Case State Rule
  case_state_rule = ->
    v_option = document.getElementById("caseState").value
    if v_option == "3"
      $('#caseTermination').prop( "disabled", false )
      $('#lastPerformance').prop( "disabled", false )
      document.getElementById("lastPerformanceDate").readOnly = false
      $('#reservedReleased').prop( "disabled", false )
      $('#recovery').prop( "disabled", false )
    else
      $('#caseTermination').prop( "disabled", true )
      $('#lastPerformance').prop( "disabled", true )
      document.getElementById("lastPerformanceDate").readOnly = true
      $('#reservedReleased').prop( "disabled", true )
      $('#recovery').prop( "disabled", true )

  $('#caseState').change ->
    case_state_rule()

  case_state_rule()

  #Case Termination Rule
  case_termination_rule = ->
    v_option = document.getElementById("caseTermination").value
    switch v_option
      when "2"
        document.getElementById("fail_value").readOnly = false
        document.getElementById("fail_previ").readOnly = false
        document.getElementById("payed_value").readOnly = false
        document.getElementById("payment_date").readOnly = false
      when "3"
        document.getElementById("fail_value").readOnly = true
        document.getElementById("fail_previ").readOnly = true
        document.getElementById("payed_value").readOnly = true
        document.getElementById("payment_date").readOnly = true
      else
        document.getElementById("fail_value").readOnly = true
        document.getElementById("fail_previ").readOnly = true
        document.getElementById("payed_value").readOnly = true
        document.getElementById("payment_date").readOnly = true

  $('#caseTermination').change ->
    case_termination_rule()

  case_termination_rule()

  #Coensurance Type Rule
  coensurance_type_rule = ->
    v_option = document.getElementById("coensurance_type").value
    if v_option == "2" || v_option == "3"
      document.getElementById("coensurance_value").readOnly = false
    else
      document.getElementById("coensurance_value").readOnly = true

  $('#coensurance_type').change ->
    coensurance_type_rule()

  coensurance_type_rule()
  
  office_rule = ->
    v_option = document.getElementById('office').value
    if v_option == "OTRO"
      $('#office_text').show()
      $('#office_text').prop( "disabled", false )
    else
      $('#office_text').hide()
      $('#office_text').prop( "disabled", true )

  $('#office').change ->
    office_rule()

  office_rule()

