$ ->
  #Valores iniciales
  initial_values = ->
    if $('#case_id_bap').val() == "NO APLICA"
      $('#case_id_bap').val("PENDIENTE")
    if $('#process_radicate').val() == "NO APLICA"
      $('#process_radicate').val("PENDIENTE")
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
    if $('#more_protections').val() == "NO APLICA"
      $('#more_protections').val("PENDIENTE")
    if $('#office_name').val() == "NO APLICA"
      $('#office_name').val("PENDIENTE")

  initial_values()

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
    v_option = document.getElementById("litigationSource").value
    if v_option == "SINIESTRO"
      document.getElementById("policyCents").readOnly = false
      $('#protection').prop( "disabled", false )
      document.getElementById("number").readOnly = false
      document.getElementById("exercise").readOnly = false
      document.getElementById("more_protections").readOnly = false
      $('#branch_policy').prop( "disabled", false )
      $('#branch_commercial').prop( "disabled", false )
      $('#more_policies').prop( "disabled", false )
      $("#sinister").val(num+"-"+exer+"-"+poly+"-"+comm)
      $('#coensurance_type').prop( "disabled", false )
      $('#reinsurance_type').prop( "disabled", false )
    else
      document.getElementById("policyCents").readOnly = true
      $('#policyCents').val("0")
      $('#protection').prop( "disabled", true )
      $('#protection').val("")
      document.getElementById("number").readOnly = true
      $('#number').val("0")
      document.getElementById("exercise").readOnly = true
      document.getElementById("more_protections").readOnly = true
      $('#exercise').val("0")
      $('#branch_policy').prop( "disabled", true )
      $('#branch_policy').val("0")
      $('#branch_commercial').prop( "disabled", true )
      $('#branch_commercial').val("0")
      $('#more_policies').prop( "disabled", true )
      $("#sinister").val("NO APLICA")
      $('#coensurance_type').prop( "disabled", true )
      $('#reinsurance_type').prop( "disabled", true )

  $('#litigationSource').change ->
    litigation_source_rule()

  litigation_source_rule()

  #Protection Rule
  protection_rule = ->
    v_option = $("#protection option:selected")
    if v_option.size() > 0
      if v_option[v_option.size() - 1].innerHTML == "OTRO"
        document.getElementById("more_protections").readOnly = false
      else
        document.getElementById("more_protections").readOnly = true
    else
      document.getElementById("more_protections").readOnly = true

  $('#protection').change ->
    protection_rule()

  protection_rule()

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
    if v_option == "PESO"
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
    else
      $('#committee').prop( "disabled", true )

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
        $('#reason_conc').val("PENDIENTE")
        document.getElementById("reason_inv").readOnly = true
        $('#reason_inv').val("PENDIENTE")
      when "NO CONCILIA"
        document.getElementById("auth_value").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("payed_value").readOnly = true
        $('#payed_value').val("0")
        document.getElementById("payment_date").readOnly = true
        $('#payment_date').val("0")
        document.getElementById("reason_conc").readOnly = false
        document.getElementById("reason_inv").readOnly = true
        $('#reason_inv').val("PENDIENTE")
      when "INVIABLE"
        document.getElementById("auth_value").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("payed_value").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("payment_date").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("reason_conc").readOnly = true
        $('#reason_conc').val("PENDIENTE")
        document.getElementById("reason_inv").readOnly = false
      else
        document.getElementById("auth_value").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("payed_value").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("payment_date").readOnly = true
        $('#auth_value').val("0")
        document.getElementById("reason_conc").readOnly = true
        $('#reason_conc').val("PENDIENTE")
        document.getElementById("reason_inv").readOnly = true
        $('#reason_inv').val("PENDIENTE")

  $('#committee').change ->
    committee_rule()

  committee_rule()

  #Departamento donde cursa el caso
  $('#departament').change ->
    input_state = $(this)
    output_state = $('#cities')
    $.getJSON '/cities/' + $(this).val(), (data) ->
      output_state.empty()
      output_state.append '<option value="PENDIENTE">SELECCIONE</option>'
      $.each data, (i) ->
        opt = '<option value="' + data[i].toUpperCase() + '">' + data[i].toUpperCase() + '</option>'
        output_state.append opt
