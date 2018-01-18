$ ->
  #Valores iniciales
  initial_values = ->
    if $('#case_id_ekogui').val() == "NO APLICA"
      $('#case_id_ekogui').val("PENDIENTE")
    if $('#contingency_reason').val() == "NO APLICA"
      $('#contingency_reason').val("PENDIENTE")
    if $('#contingency_resume').val() == "NO APLICA"
      $('#contingency_resume').val("PENDIENTE")
    if $('#facts').val() == "NO APLICA"
      $('#facts').val("PENDIENTE")

  initial_values()


  #Clase de proceso
  hide_all_subprocess = ->
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

  process_class_rule = ->
    hide_all_subprocess()
    v_option = document.getElementById("processClass").value
    switch v_option
      when "1"
        $('#subprocessAdmin').prop( "disabled", false )
        $('#subprocessAdmin').show()
      when "2"
        $('#subprocessCivil').prop( "disabled", false )
        $('#subprocessCivil').show()
      when "11"
        $('#subprocessPenal').prop( "disabled", false )
        $('#subprocessPenal').show()
      when "12"
        $('#subprocessLaboral').prop( "disabled", false )
        $('#subprocessLaboral').show()
      when "30"
        $('#subprocessArbitral').prop( "disabled", false )
        $('#subprocessArbitral').show()

  current_stage_rule = ->
    hide_all_stages()
    v_option = document.getElementById("processClass").value
    switch v_option
      when "1"
        $('#judicial_admin').prop( 'disabled', false )
        $('#judicial_admin').show()
      when "11"
        $('#judicial_penal').prop( "disabled", false )
        $('#judicial_penal').show()
      when "12"
        $('#judicial_laboral').prop( "disabled", false )
        $('#judicial_laboral').show()
      when "30"
        $('#judicial_arbitral').prop( "disabled", false )
        $('#judicial_arbitral').show()

  $('#processClass').change ->
    process_class_rule()
    current_stage_rule()

  process_class_rule()
  current_stage_rule()

  #Subclase de proceso -> jurisdicción civil
  subprocess_civil_rule = ->
    hide_all_stages()
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
    if v_option == "2" || v_option == "3"
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
    if v_option == "2" || v_option == "3"
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
    if v_option == "2"
      document.getElementById("policyCents").readOnly = false
      $('#protection').prop( "disabled", false )
      document.getElementById("number").readOnly = false
      document.getElementById("exercise").readOnly = false
      $('#branch_policy').prop( "disabled", false )
      $('#branch_commercial').prop( "disabled", false )
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
      $('#exercise').val("0")
      $('#branch_policy').prop( "disabled", true )
      $('#branch_policy').val("0")
      $('#branch_commercial').prop( "disabled", true )
      $('#branch_commercial').val("0")
      $('#more_policies').prop( "disabled", true )
      $('#more_policies').prop( "disabled", true )
      $("#sinister").val("NO APLICA")

  $('#litigationSource').change ->
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
    if v_option == "1"
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
    if v_option == "2"
      $('#caseTermination').prop( "disabled", false )
      $('#lastPerformance').prop( "disabled", false )
      document.getElementById("lastPerformanceDate").readOnly = false
      $('#reservedReleased').prop( "disabled", false )
      $('#recovery').prop( "disabled", false )
    else
      $('#caseTermination').prop( "disabled", true )
      $('#caseTermination').val("")
      $('#lastPerformance').prop( "disabled", true )
      $('#lastPerformance').val("1")
      document.getElementById("lastPerformanceDate").readOnly = true
      $('#lastPerformanceDate').val("0-0-0")
      $('#reservedReleased').prop( "disabled", true )
      $('#reservedReleased').val("1")
      $('#recovery').prop( "disabled", true )
      $('#recovery').val("")

  $('#caseState').change ->
    case_state_rule()

  case_state_rule()


  #Terminación del caso
  case_termination_rule = ->
    v_option = document.getElementById("caseTermination").value
    if v_option == "2"
      document.getElementById("fail_value").readOnly = false
      document.getElementById("fail_previ").readOnly = false
      document.getElementById("payed_value").readOnly = false
      document.getElementById("payment_date").readOnly = false
    else
      document.getElementById("fail_value").readOnly = true
      $('#fail_value').val("0")
      document.getElementById("fail_previ").readOnly = true
      $('#fail_previ').val("0")
      document.getElementById("payed_value").readOnly = true
      $('#payed_value').val("0")
      document.getElementById("payment_date").readOnly = true
      $('#payment_date').val("0-0-0")

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


  #¿Ingresa al comité?
  join_committee_rule = ->
    v_option = document.getElementById("join_committee").value
    if v_option == "2"
      document.getElementById("committee_date").readOnly = false
      $('#committee').prop( "disabled", false )
    else
      document.getElementById("committee_date").readOnly = true
      $('#committee_date').val("0-0-0")
      $('#committee').prop( "disabled", true )
      $('#committee').val("1")

  $('#join_committee').change ->
    join_committee_rule()

  join_committee_rule()


  #Decisión del comité
  committee_rule = ->
    v_option = document.getElementById("committee").value
    if v_option == "2"
      document.getElementById("reconcilie_value").readOnly = false
      document.getElementById("auth_value").readOnly = false
      document.getElementById("reason_conc").readOnly = true
      $('#reason_conc').val("PENDIENTE")
      document.getElementById("reason_inv").readOnly = true
      $('#reason_inv').val("PENDIENTE")
      document.getElementById("fail_value").readOnly = true
      $('#fail_value').val("0")
      document.getElementById("fail_previ").readOnly = true
      $('#fail_previ').val("0")
      document.getElementById("payed_value").readOnly = true
      $('#payed_value').val("0")
    else if v_option == "3"
      document.getElementById("reconcilie_value").readOnly = true
      $('#reconcilie_value').val("0")
      document.getElementById("auth_value").readOnly = true
      $('#auth_value').val("0")
      document.getElementById("reason_conc").readOnly = false
      document.getElementById("reason_inv").readOnly = true
      $('#reason_inv').val("PENDIENTE")
      document.getElementById("fail_value").readOnly = false
      document.getElementById("fail_previ").readOnly = false
      document.getElementById("payed_value").readOnly = false
    else if v_option == "4"
      document.getElementById("reconcilie_value").readOnly = true
      $('#reconcilie_value').val("0")
      document.getElementById("auth_value").readOnly = true
      $('#auth_value').val("0")
      document.getElementById("reason_conc").readOnly = true
      $('#reason_conc').val("PENDIENTE")
      document.getElementById("reason_inv").readOnly = false
      document.getElementById("fail_value").readOnly = false
      document.getElementById("fail_previ").readOnly = false
      document.getElementById("payed_value").readOnly = false
    else
      document.getElementById("reconcilie_value").readOnly = true
      $('#reconcilie_value').val("0")
      document.getElementById("auth_value").readOnly = true
      $('#auth_value').val("0")
      document.getElementById("reason_conc").readOnly = true
      $('#reason_conc').val("PENDIENTE")
      document.getElementById("reason_inv").readOnly = true
      $('#reason_inv').val("PENDIENTE")
      document.getElementById("fail_value").readOnly = false
      document.getElementById("fail_previ").readOnly = false
      document.getElementById("payed_value").readOnly = false

  $('#committee').change ->
    committee_rule()
  committee_rule()


  #Departamento donde cursa el caso
  $('#departament').change ->
    input_state = $(this)
    output_state = $('#cities')
    $.getJSON '/cities/' + $(this).val(), (data) ->
      output_state.empty()
      $.each data, (i) ->
        opt = '<option value="' + data[i].toUpperCase() + '">' + data[i].toUpperCase() + '</option>'
        output_state.append opt

  #$('#committee').change ->
  #  alert $('#committee').val()
