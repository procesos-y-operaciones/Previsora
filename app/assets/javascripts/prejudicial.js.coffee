$ ->

  # Valores Iniciales
  initial_values = ->
    if $('#correspondency_radicate').val() == "NO APLICA"
      $('#correspondency_radicate').val("")
    if $('#case_id_bap').val() == "NO APLICA"
      $('#case_id_bap').val("")
    if $('#process_radicate').val() == "NO APLICA"
      $('#process_radicate').val("")
    if $('#more_protections').val() == "NO APLICA"
      $('#more_protections').val("")
    if $('#policies').val() == "NO APLICA"
      $('#policies').val("")
    if $('#sinisters').val() == "NO APLICA"
      $('#sinisters').val("")
    if $('#case_onbase').val() == "NO APLICA"
      $('#case_onbase').val("PENDIENTE")
    if $('#attorny').val() == "NO APLICA"
      $('#attorny').val("PENDIENTE")
    if $('#active_part').val() == "NO APLICA"
      $('#active_part').val("PENDIENTE")
    if $('#passive_part').val() == "NO APLICA"
      $('#passive_part').val("PENDIENTE")
    if $('#facts').val() == "NO APLICA"
      $('#facts').val("PENDIENTE")
    if $('#office_name').val() == "NO APLICA"
      $('#office_name').val("PENDIENTE")
    if $('#reason_conc').val() == "NO APLICA"
      $('#reason_conc').val("NO PRESENTA")
    if $('#reason_inv').val() == "NO APLICA"
      $('#reason_inv').val("NO PRESENTA")

  initial_values()

  #Fuente de litigio
  numSiniestro = ""
  num = numSiniestro.concat(document.getElementById("number").value)
  exer = numSiniestro.concat(document.getElementById("exercise").value)
  poly = numSiniestro.concat(document.getElementById("branch_policy").value)
  comm = numSiniestro.concat(document.getElementById("branch_commercial").value)
  litigation_source_rule = ->
    v_option = document.getElementById("litigationSource").value
    if v_option == "SINIESTRO"
      $('#policyCents').prop( 'readOnly', false)
      $('#reinsurance_type').prop( "disabled", false )
      $('#reinsurance_type_hid').prop( "disabled", true )
      $('#coensurance_type').prop( "disabled", false )
      $('#coensurance_type_hid').prop( "disabled", true )
      $('#protection').prop( "disabled", false )
      $('#protection_hid').prop( "disabled", true )
      $('#number').prop( "readOnly", false )
      $('#exercise').prop( "readOnly", false )
      $('#branch_policy').prop( "disabled", false )
      $('#branch_policy_hid').prop( "disabled", true )
      $('#branch_commercial').prop( "disabled", false )
      $('#branch_commercial_hid').prop( "disabled", true )
      $("#sinister").val(num+"-"+exer+"-"+poly+"-"+comm)
      $('#more_policies').prop( "disabled", false )
    else
      $('#policyCents').prop( 'readOnly', true)
      $('#policyCents').val("0")
      $('#reinsurance_type').val( "NO PRESENTA" )
      $('#reinsurance_type').prop( "disabled", true )
      $('#reinsurance_type_hid').prop( "disabled", false )
      $('#coensurance_type').val( "NO PRESENTA" )
      $('#coensurance_type').prop( "disabled", true )
      $('#coensurance_type_hid').prop( "disabled", false )
      $('#protection').val( "NO PRESENTA" )
      $('#protection').prop( "disabled", true )
      $('#protection_hid').prop( "disabled", false )
      $('#number').val("0")
      $('#number').prop( "readOnly", true )
      $('#exercise').val("0")
      $('#exercise').prop( "readOnly", true )
      $('#branch_policy').val( "0" )
      $('#branch_policy').prop( "disabled", true )
      $('#branch_policy_hid').prop( "disabled", false )
      $('#branch_commercial').val( "0" )
      $('#branch_commercial').prop( "disabled", true )
      $('#branch_commercial_hid').prop( "disabled", false )
      $("#sinister").val("NO PRESENTA")
      $('#more_policies').val( "false" )
      $('#more_policies').prop( "disabled", true )

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

  #Protection Rule
  protection_rule = ->
    v_option = $("#protection option:selected")
    if v_option.size() > 0
      if v_option[v_option.size() - 1].innerHTML == "OTRO"
        $("#more_protections").val( "NO PRESENTA" )
        $("#more_protections").prop( "readOnly", false)
      else
        $("#more_protections").prop( "readOnly", true)
    else
      $("#more_protections").prop( "readOnly", true)

  $('#protection').change ->
    protection_rule()

  protection_rule()

  more_policies_rule = ->
    v_option = document.getElementById("more_policies").value
    if v_option == "true"
      document.getElementById("policies").readOnly = false
      document.getElementById("sinisters").readOnly = false
    else
      document.getElementById("policies").readOnly = true
      $("#policies").val("NO PRESENTA")
      document.getElementById("sinisters").readOnly = true
      $("#sinisters").val("NO PRESENTA")

  $('#more_policies').change ->
    more_policies_rule()

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

  #Ingresa al comité
  join_committee_rule = ->
    v_option = document.getElementById("join_committee").value
    if v_option == "SI"
      $('#committee').prop( "disabled", false )
      $('#committee_hid').prop( "disabled", true )
    else
      $('#committee').val( "NO PRESENTA" )
      $('#committee').prop( "disabled", true )
      $('#committee_hid').prop( "disabled", false )

  $('#join_committee').change ->
    join_committee_rule()

  join_committee_rule()

  #Decisión del comité
  committee_rule = ->
    v_option = document.getElementById("committee").value
    switch v_option
      when "CONCILIA"
        document.getElementById("auth_value").readOnly = false
        document.getElementById("payed_value").readOnly = false
        document.getElementById("payment_date").readOnly = false
        document.getElementById("reason_conc").readOnly = true
        $('#reason_conc').val("NO PRESENTA")
        document.getElementById("reason_inv").readOnly = true
        $('#reason_inv').val("NO PRESENTA")
      when "NO CONCILIA"
        document.getElementById("auth_value").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("payed_value").readOnly = true
        $('#payed_value').val("0")
        document.getElementById("payment_date").readOnly = true
        $('#payment_date').val("0")
        document.getElementById("reason_conc").readOnly = false
        document.getElementById("reason_inv").readOnly = true
        $('#reason_inv').val("NO PRESENTA")
      when "INVIABLE"
        document.getElementById("auth_value").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("payed_value").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("payment_date").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("reason_conc").readOnly = true
        $('#reason_conc').val("NO PRESENTA")
        document.getElementById("reason_inv").readOnly = false
      else
        document.getElementById("auth_value").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("payed_value").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("payment_date").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("reason_conc").readOnly = true
        $('#reason_conc').val("NO PRESENTA")
        document.getElementById("reason_inv").readOnly = true
        $('#reason_inv').val("NO PRESENTA")

  $('#committee').change ->
    committee_rule()

  committee_rule()


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

  #Departamento donde cursa el caso
  $('#departament').change ->
    input_state = $(this)
    output_state = $('#cities')
    $.getJSON '/cities/' + $(this).val(), (data) ->
      output_state.empty()
      output_state.append '<option value="PENDIENTE">SELECCIONE</option>'
      $.each data, (i) ->
        opt = '<option value="' + data[i].name + '">' + data[i].name + '</option>'
        output_state.append opt

  ###
  #¿Tiene más pólizas?
  policies_and_sinisters_rule = ->
    polici = $('#policies').val()
    sinister = $('#sinisters').val()
    if (polici == "NO APLICA" && sinister == "NO APLICA") || (polici == "PENDIENTE" && sinister == "PENDIENTE")
      $('#more_policies').val('true')
      document.getElementById("policies").readOnly = true
      document.getElementById("sinisters").readOnly = true
      $("#policies").val("PENDIENTE")
      $("#sinisters").val("PENDIENTE")
    else
      $('#more_policies').val('false')

  policies_and_sinisters_rule()
  ###
